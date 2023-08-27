<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 11/10/2022
  Time: 3:04 PM
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
<style>
    .normal { font-style: normal; }
    .italic { font-style: italic;}
    .oblique { font-style: oblique;}
</style>
<nav class="navbar navbar-expand-lg navbar-dark probootstrap_navbar" id="probootstrap-navbar">
    <div class="container">
        <a class="navbar-brand" href="<c:url value="/trang-chu"/>">BINH DINH - VIET NAM</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#probootstrap-menu" aria-controls="probootstrap-menu" aria-expanded="false" aria-label="Toggle navigation">
            <span><i class="ion-navicon"></i></span>
        </button>
        <div class="collapse navbar-collapse" id="probootstrap-menu">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active"><a class="nav-link" href="<c:url value="/trang-chu"/>">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="<c:url value="/diadanh"/>">Địa danh</a></li>
                <li class="nav-item"><a class="nav-link" href="<c:url value="/event"/>">Sự kiện</a></li>
                <li class="nav-item"><a class="nav-link" href="<c:url value="/dacsan"/>">Ẩm thực</a></li>
                <li class="nav-item"><a class="nav-link" href="<c:url value="/khachsan"/>">Khách sạn</a></li>
                <li class="nav-item "><a class="nav-link" href="<c:url value="/contact"/> ">Thông tin liên hệ</a></li>
            </ul>
        </div>
    </div>
    <ul class="navbar-nav ml-auto">
        <securtity:authorize access="isAnonymous()">
            <li class="nav-item "><a class="nav-link" href="<c:url value="/dang-nhap"/> ">Đăng nhập</a></li>
            <li class="nav-item "><a class="nav-link" href="<c:url value="/trang-chu"/> ">Đăng ký</a></li>
        </securtity:authorize>

        <securtity:authorize access="isAuthenticated()">
            <li class="nav-item "><a class="nav-link" href="<c:url value="/trang-chu"/> ">Welcome <%=SecurityUtils.getPrincipal().getFullName()%></a></li>
            <li class="nav-item "><a class="nav-link" href="<c:url value="/thoat"/> ">Đăng xuất</a></li>
        </securtity:authorize>
    </ul>

</nav>
<section class="probootstrap-cover overflow-hidden relative" style="background-image: url('<c:url value="/template/web/assets/images/bg_ks.png"/>');" data-stellar-background-ratio="0.5" id="section-home">
    <div class="overlay"></div>
    <div class="container">
        <div class="row align-items-center">

        </div>
    </div>

</section>
<!-- END section -->

<section class="probootstrap_section" style="text-align: center">
    <div class="col-lg-8" style="margin: 0px auto; background-color: #3c3cfa">
        <div class="probootstrap-section-heading" style="font-size: 50px; font-weight: 900; color: white">THANH TOÁN</div>
    </div>
    <div class="col-lg-8" style="margin: 0px auto; border: 1px solid black; border-radius: 0px; background-color: #eee7ea">
        <form name="myForm" method="post" action="<c:url value="/pay"/>" onsubmit="return validateForm()">
            <div class="col-lg-10 row" style="margin: 0px auto; padding-top: 10px">
                <label for="startDate" style="width: 20%; line-height: 30px; font-size: 20px">Start Date:</label>
                <input type="date" id="startDate" name="startDate" readonly style="width: 60%; line-height: 30px; font-size: 20px"><br><br>
            </div>

            <div class="col-lg-10 row" style="margin: 0px auto; padding-top: 10px">
                <label for="endDate" style="width: 20%; line-height: 30px; font-size: 20px">End Date:</label>
                <input type="date" id="endDate" name="endDate" style="width: 60%; line-height: 30px; font-size: 20px"><br><br>
            </div>

            <div class="col-lg-10 row" style="margin: 0px auto; padding-top: 10px">
                <label for="gender" style="width: 20%; line-height: 30px; font-size: 20px">Giới tính: </label>
                <div id="gender" class="row" style="width: 60%; line-height: 30px; font-size: 20px">
                    <input type="radio" name="gender" value="male" checked style=" margin-left: 2%; padding-left: 2%; height: 30px"> Nam
                    <input type="radio" name="gender" value="female" style=" margin-left: 30%; padding-left: 25%; height: 30px"> Nữ
                </div> <br>
            </div>

            <div class="col-lg-10 row" style="margin: 0px auto; padding-top: 10px">
                <label for="phoneNumber" style="width: 20%; line-height: 30px; font-size: 20px">Số điện thoại: </label>
                <input type="number" id="phoneNumber" name="phoneNumber" placeholder="0123 456 789" style="width: 60%; line-height: 30px; font-size: 20px">
            </div>

            <div class="col-lg-10 row" style="margin: 0px auto; padding-top: 10px">
                <label for="email" style="width: 20%; line-height: 30px; font-size: 20px">Địa chỉ email: </label>
                <input id="email" type="email" name="email" placeholder="WelcomeToTravelBlog@gmail.com" style="width: 60%; line-height: 30px; font-size: 20px">
            </div>

            <div class="col-lg-10 row" style="margin: 0px auto; padding-top: 10px">
                <label for="cmnd" style="width: 20%; line-height: 30px; font-size: 20px">Số CMND: </label>
                <input id="cmnd" type="number" name="personalID" placeholder="0123456789" style="width: 60%; line-height: 30px; font-size: 20px">
            </div>

            <div class="col-lg-10 row" style="margin: 0px auto; padding-top: 10px">
                <label for="price" style="width: 20%; line-height: 30px; font-size: 20px">Giá mỗi phòng: </label>
                <input id="price" type="number" name="price" placeholder="${hotel.price} $" value="${hotel.price}" readonly style="width: 60%; line-height: 30px; font-size: 20px">
            </div>

            <div class="col-lg-10 row" style="margin: 0px auto; padding-top: 10px">
                <label for="numOfRoom" style="width: 20%; line-height: 30px; font-size: 20px">Số phòng muốn đặt (Còn ${hotel.numberOfRoom}) : </label>
                <input id="numOfRoom" type="number" name="numberRoom" min="1" max="${hotel.numberOfRoom}" placeholder="1"  value="1"  style="width: 60%; line-height: 30px; font-size: 20px">
            </div>

            <input type="hidden" name="hotelId" value="${hotel.id}" />

            <div style="text-align: center; margin-bottom: 20px">
                <input type="submit" value="Gửi" class="btn btn-primary" style="margin-top: 2%; padding-left: 2%; margin-left: 2%; margin-right: 2%; width: 10%; height: 5%; background-color: #00CA4C">
            </div>
        </form>
    </div>
</section>

<script>

    // Lấy ngày hiện tại
    var today = new Date().toISOString().split('T')[0];

    // Thiết lập giá trị của trường ngày bắt đầu
    document.getElementById("startDate").value = today;



    function validateForm() {
        var x = document.forms["myForm"]["numberRoom"].value;
        var sdt = document.forms["myForm"]["phoneNumber"].value;
        var endDate  = document.forms['myForm']['endDate'].value;
        var number = parseInt(${hotel.numberOfRoom});
        if(number === 0)
        {
            alert("Đã hết phòng");
            return false;
        }
        if (x > ${hotel.numberOfRoom}) {
            alert("Số phòng đặt không được quá ${hotel.numberOfRoom}.");
            return false;
        }
        if (sdt === null || sdt ==="") {
            alert("khách hàng chưa nhập số điện thoại.");
            return false;
        }

        if (endDate === null || endDate ==="") {
            alert("khách hàng chưa nhập ngày trả phòng");
            return false;
        }
    }
</script>
</body>
</html>