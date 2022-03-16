package controller;

import model.Category;
import model.Product;
import regex.Validate;
import service.category.CategoryService;
import service.category.ICategoryService;
import service.product.IProductService;
import service.product.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ProductServlet", value = "/products")
public class ProductServlet extends HttpServlet {
    IProductService productService = new ProductService();
    ICategoryService categoryService = new CategoryService();
    Validate validate = new Validate();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create": {
                List<Category> categories = categoryService.findAll();
                request.setAttribute("categories", categories);

                RequestDispatcher dispatcher = request.getRequestDispatcher("/product/create.jsp");
                dispatcher.forward(request, response);
                break;
            }
            case "delete" : {
                int id = Integer.parseInt(request.getParameter("id"));
                Product product = productService.findById(id);
                request.setAttribute("product", product);
                RequestDispatcher dispatcher = request.getRequestDispatcher("/product/delete.jsp");
                dispatcher.forward(request, response);
                break;
            }
            case "edit" : {
                List<Category> categories = categoryService.findAll();
                request.setAttribute("categories", categories);
                int id = Integer.parseInt(request.getParameter("id"));
                Product product = productService.findById(id);
                request.setAttribute("product", product);
                RequestDispatcher dispatcher = request.getRequestDispatcher("/product/edit.jsp");
                dispatcher.forward(request, response);
                break;
            }
            case "search" : {
                List<Category> categories = categoryService.findAll();
                request.setAttribute("categories", categories);
                String search = request.getParameter("q");
                List<Product> products = productService.findAll();
                List<Product> productsOfSearch = new ArrayList<>();
                for (Product product : products) {
                    if (search.equals(product.getName())) {
                        productsOfSearch.add(product);
                    }
                }
                request.setAttribute("products", productsOfSearch);
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("/product/list.jsp");
                requestDispatcher.forward(request, response);
                break;
            }
            default: {
                List<Category> categories = categoryService.findAll();
                request.setAttribute("categories", categories);
                List<Product> products = productService.findAll();
                request.setAttribute("products", products);
                RequestDispatcher dispatcher = request.getRequestDispatcher("/product/list.jsp");
                dispatcher.forward(request, response);
                break;
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create": {
                String name = request.getParameter("name");
                double price = Double.parseDouble(request.getParameter("price"));
                int quantity = Integer.parseInt(request.getParameter("quantity"));
                String color = request.getParameter("color");
                String description = request.getParameter("description");
                int category_id = Integer.parseInt(request.getParameter("category_id"));
                Product product = new Product(name, price, quantity, color, description, category_id);
                productService.create(product);
                response.sendRedirect("/products");
                break;
            }
            case "delete" : {
                int id = Integer.parseInt(request.getParameter("id"));
                productService.deleteById(id);
                response.sendRedirect("/products");
                break;
            }

            case "edit" : {
                int id = Integer.parseInt(request.getParameter("id"));
                String name = request.getParameter("name");
                double price = Double.parseDouble(request.getParameter("price"));
                int quantity = Integer.parseInt(request.getParameter("quantity"));
                String color = request.getParameter("color");
                String description = request.getParameter("description");
                int category_id = Integer.parseInt(request.getParameter("category_id"));
                Product product = new Product(id, name, price, quantity, color, description, category_id);
                productService.updateById(id, product);
                response.sendRedirect("/products");
                break;
            }
            }
        }
    }
