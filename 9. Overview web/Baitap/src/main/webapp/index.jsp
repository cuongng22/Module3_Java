<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2/3/2022
  Time: 2:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <form action="/ServletProducts" method="get">
    <input name="Description" placeholder="Mô tả của sản phẩm" type="text">
    <input name="Price" placeholder="Giá niêm yết của sản phẩm" type="text">
    <input name="Percent" placeholder=" Tỷ lệ chiết khấu (phần trăm)" type="text">
    <button>Done</button>
  </form>
  </body>
</html>
