package service.product;

import dao.product.IProductDAO;
import dao.product.ProductDAO;
import model.Product;

import java.util.List;

public class ProductService implements IProductService{
    private ProductDAO productDAO;
    @Override
    public List<Product> findAll() {
        return productDAO.findAll();
    }

    @Override
    public Product findById(int id) {
        return productDAO.findById(id);
    }

    @Override
    public boolean create(Product product) {
        return productDAO.create(product);
    }

    @Override
    public boolean updateById(int id, Product product) {
        return productDAO.updateById(id, product);
    }

    @Override
    public List<Product> findByname(String name) {
        return productDAO.findByName(name);
    }
}
