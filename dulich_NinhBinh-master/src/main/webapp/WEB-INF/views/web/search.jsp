<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 4/20/2023
  Time: 9:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ taglib prefix="securtity" uri="http://www.springframework.org/security/tags" %>
<%@ page import= "com.laptrinhjavaweb.util.SecurityUtils" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <thead>
    <tr>
        <th>Name</th>
        <th>Price</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${places}" var="product">
        <tr>
            <td>${product.title}</td>
            <td>${product.thumbnail}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
