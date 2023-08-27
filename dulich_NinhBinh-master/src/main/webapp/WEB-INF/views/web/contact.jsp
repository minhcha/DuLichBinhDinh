<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 11/11/2022
  Time: 4:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ taglib prefix="securtity" uri="http://www.springframework.org/security/tags" %>
<%@ page import= "com.laptrinhjavaweb.util.SecurityUtils" %>

<html>
<head>
    <title>Liên lạc</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark probootstrap_navbar" id="probootstrap-navbar">
  <div class="container">
    <a class="navbar-brand" href="<c:url value="/trang-chu"/>">BINH DINH - VIET NAM</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#probootstrap-menu" aria-controls="probootstrap-menu" aria-expanded="false" aria-label="Toggle navigation">
      <span><i class="ion-navicon"></i></span>
    </button>
    <div class="collapse navbar-collapse" id="probootstrap-menu">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item"><a class="nav-link" href="<c:url value="/trang-chu"/>">Trang chủ</a></li>
        <li class="nav-item"><a class="nav-link" href="<c:url value="/diadanh"/>">Địa danh</a></li>
        <li class="nav-item"><a class="nav-link" href="<c:url value="/event"/>">Sự kiện</a></li>
        <li class="nav-item"><a class="nav-link" href="<c:url value="/dacsan"/>">Ẩm thực</a></li>
        <li class="nav-item"><a class="nav-link" href="<c:url value="/khachsan"/>">Khách sạn</a></li>
        <li class="nav-item active"><a class="nav-link" href="<c:url value="/contact"/> ">Thông tin liên hệ</a></li>
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

<section class="probootstrap-cover overflow-hidden relative"  style="background-image: url('<c:url value="/template/web/assets/images/bg_1.jpg"/>');" data-stellar-background-ratio="0.5" id="section-home">
  <div class="overlay"></div>
  <div class="container">
    <div class="row align-items-center text-center">
      <div class="col-md">
        <h2 class="heading mb-2 display-4 font-light probootstrap-animate">Liên hệ với chúng tôi</h2>
      </div>
    </div>
  </div>

</section>
<!-- END section -->


<section class="probootstrap_section bg-light" id="section-contact">
  <div class="container">

    <div class="row">
      <div class="col-md-6 probootstrap-animate">
        <p class="mb-5">Du lịch khiến chúng ta thảnh thơi hơn, xua tan đi những mệt mỏi thường ngày.</p>
        <div class="row">
          <div class="col-md-6">
            <ul class="probootstrap-contact-details">
              <li>
                <span class="text-uppercase"><span class="ion-paper-airplane"></span> Email</span>
                dungvt1602@gmail.com
              </li>
              <li>
                <span class="text-uppercase"><span class="ion-ios-telephone"></span> Điện thoại</span>
                +0328724589
              </li>
            </ul>
          </div>
          <div class="col-md-6">
            <ul class="probootstrap-contact-details">
              <li>
                <span class="text-uppercase"><span class="ion-ios-telephone"></span> Fax</span>
                +30 976 1382 9922
              </li>
              <li>
                <span class="text-uppercase"><span class="ion-location"></span> Địa chỉ</span>
                TP HCM <br>
                Quận Thủ đức   <br>
                Số 1 Võ Văn Ngân
              </li>
            </ul>
          </div>
        </div>
      </div>
      <div class="col-md-6  probootstrap-animate">
        <form action="#" method="post" class="probootstrap-form probootstrap-form-box mb60">
          <div class="row mb-3">
            <div class="col-md-6">
              <div class="form-group">
                <label for="fname" class="sr-only sr-only-focusable">Họ </label>
                <input type="text" class="form-control" id="fname" name="fname" placeholder="Họ của bạn">
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <label for="lname" class="sr-only sr-only-focusable">Tên</label>
                <input type="text" class="form-control" id="lname" name="lname" placeholder="Tên của bạn">
              </div>
            </div>
          </div>
          <div class="form-group">
            <label for="email" class="sr-only sr-only-focusable">Email</label>
            <input type="email" class="form-control" id="email" name="email" placeholder="Email">
          </div>
          <div class="form-group">
            <label for="message" class="sr-only sr-only-focusable">Lời nhắn</label>
            <textarea cols="30" rows="10" class="form-control" id="message" name="message" placeholder="Gửi lời nhắn"></textarea>
          </div>
          <div class="form-group">
            <input type="submit" class="btn btn-primary" id="submit" name="submit" value="Send Message">
          </div>
        </form>
      </div>
    </div>
  </div>
</section>
<!-- END section -->

</body>
</html>
