<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <h1>Danh sách sản phẩm</h1>
    <a class="btn btn-primary float-end" href="/products?action=create">Tạo mới sản phẩm</a>
    <form class="form-inline my-2 my-lg-0 d-flex" action="/search" method="get">
        <input class="form-control mr-sm-2 input-search" type="search" placeholder="Tìm gì đó ..."
               aria-label="Search" name="q">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Tìm kiếm</button>
    </form>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th scope="col">STT</th>
            <th scope="col">Tên </th>
            <th scope="col">Giá </th>
            <th scope="col">Số lượng </th>
            <th scope="col">Màu sắc </th>
            <th scope="col">Mô tả </th>
            <th scope="col">Danh mục </th>
            <th colspan="2"></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="product" items="${products}" varStatus="loop">
            <tr>
                <td>${loop.count}</td>
                <td><a href="/products?action=view&id=${product.id}">${product.name}</a></td>
                <td>${product.price}</td>
                <td>${product.quantity}</td>
                <td>${product.color}</td>
                <td>${product.description}</td>
                <td>${product.category_id}</td>
                <td>
                    <a class="btn btn-info" href="/products?action=edit&id=${product.id}">
                        <i class="fas fa-edit"></i>
                    </a>
                </td>
                <td><a class="btn btn-danger" href="/products?action=delete&id=${product.id}"><i class="fas fa-trash"></i></a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>