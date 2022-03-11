<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>Title</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<h2>Danh sách khách hàng</h2>
<c:if test="customers.isEmpty()">
  <p style="color: red">Không có sản phẩn nào</p>
</c:if>
<table class="table table-success">
  <tr>
    <th>ID</th>
    <th>Name</th>
    <th>Age</th>
    <th>Address</th>
    <th>Avg</th>
    <th colspan="2"></th>
  </tr>
  <c:forEach items="${customers}" var="customer">
    <tr>
      <td>${customer.getId()}</td>
      <td>${customer.getName()}</td>
      <td>${customer.getAge()}</td>
      <td>${customer.getAddress()}</td>
      <td>${customer.getAvg()}</td>
      <td><button type="button" class="btn btn-danger"><a href="${pageContext.request.contextPath}/home?action=delete&id=${student.getId()}">Delete</a></button></td>
      <td><button type="button" class="btn btn-success"><a href="${pageContext.request.contextPath}/home?action=editGet&id=${student.getId()}">Edit</a></button></td>
    </tr>
  </c:forEach>

</table>
</body>
</html>