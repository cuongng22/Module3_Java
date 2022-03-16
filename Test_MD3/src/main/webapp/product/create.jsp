<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <a href="/products">Danh sách sản phẩm</a>
    <h1>Tạo mới sản phẩm</h1>
    <c:if test="${message!=null}">
        <p class="alert alert-success">${message}</p>
    </c:if>
    <form action="/products?action=create" method="post">
        <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">Tên sản phẩm:</label>
            <input type="text" class="form-control" id="exampleInputPassword1" name="name">
        </div>
        <div class="mb-3">
            <label for="price" class="form-label">Giá sản phẩm:</label>
            <input type="text" class="form-control" id="price" name="price">
        </div>
        <div class="mb-3">
            <label for="price" class="form-label">Số lượng sản phẩm:</label>
            <input type="text" class="form-control" id="quantity" name="quantity">
        </div>
        <div class="mb-3">
            <label for="price" class="form-label">Màu sắc sản phẩm:</label>
            <input type="text" class="form-control" id="color" name="color">
        </div>

        <div class="mb-3">
            <label for="description" class="form-label">Mô tả sản phẩm:</label>
            <input type="text" class="form-control" id="description" name="description">
        </div>
        <div class="mb-3">
            <label for="category" class="form-label">Danh mục</label>
            <select name="category_id" id="category">
                <c:forEach items="${categories}" var="category">
                    <option value="${category.id}">${category.name}</option>
                </c:forEach>
            </select>
        </div>
        <button type="submit" class="btn btn-primary">Tạo mới</button>
    </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>