<%@ page import="java.util.List" %>
<%@ page import="model.Product" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 3/3/2022
  Time: 2:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <%
    List<Product> products = new ArrayList<>();
    products.add(new Product(1, "coc", 100, "webapp/img/271435319_611352656833025_7214007021127452121_n.jpg", "new"));
    products.add(new Product(2, "thinh", 1200, "webapp/img/Removal-780.png", "new"));
    products.add(new Product(3, "haha", 1020, "webapp/img/z3208083952495_192f4d06755a8c13e93ac5f1e7e7b472.jpg", "new"));
    pageContext.setAttribute("listproduct", products);
  %>



  <h1>Danh sach sp</h1>
  </body>
</html>
