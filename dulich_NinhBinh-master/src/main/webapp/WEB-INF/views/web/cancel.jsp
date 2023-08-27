<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 3/26/2023
  Time: 9:12 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ taglib prefix="securtity" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="for" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import= "com.laptrinhjavaweb.util.SecurityUtils" %>
<%@include file="/common/taglib.jsp"%>
<html>
<head>
    <title>Hủy thanh toán</title>
</head>
<body>
<section class="probootstrap_section" style="background-color: #f6e37c; border-radius: 25%; width: 80%; margin: 5% 10%">
    <div>
        <h1 style="text-align: center;">HỦY THANH TOÁN THÀNH CÔNG!</h1>
    </div>
    <div style="text-align: center">
        <a class="btn" href="<c:url value="/trang-chu" /> " style="background: lightcoral; margin-top: 2%; font-weight: 800; color: aliceblue;">Go Home</a>
    </div>
</section>
</body>
</html>
