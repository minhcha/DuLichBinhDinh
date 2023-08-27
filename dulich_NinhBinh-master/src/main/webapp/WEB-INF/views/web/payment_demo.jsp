<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 3/27/2023
  Time: 4:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ taglib prefix="securtity" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="for" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import= "com.laptrinhjavaweb.util.SecurityUtils" %>
<%@include file="/common/taglib.jsp"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:url value="/pay"/>
<form action="<c:url value="/pay"/> " method="POST">
    <input type="text" value="5" name="price" />
    <button type="submit"> Payment with Paypal </button>
    <input type="submit" value="Login">
</form>
</body>
</html>
