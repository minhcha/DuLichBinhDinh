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
<%@ page import= "com.laptrinhjavaweb.util.SecurityUtils" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>


<html>
<head>
    <title>Trang chủ</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark probootstrap_navbar" id="probootstrap-navbar" style="color: black">
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
            <li class="nav-item "><a class="nav-link" href="<c:url value="/dang-ky"/> ">Đăng ký</a></li>
        </securtity:authorize>

        <securtity:authorize access="isAuthenticated()">
            <li class="nav-item "><a class="nav-link" href="<c:url value="/user_profile"/> ">Welcome <%=SecurityUtils.getPrincipal().getFullName()%></a></li>
            <li class="nav-item "><a class="nav-link" href="<c:url value="/thoat"/> ">Đăng xuất</a></li>
        </securtity:authorize>
    </ul>

</nav>

<section class="probootstrap-cover overflow-hidden relative" style="background-image: url('<c:url value="/template/web/assets/user_profile/images_and_videos/Background_profile.jpg"/>');" data-stellar-background-ratio="0.5" id="section-home">
    <div class="overlay"></div>
    <div class="container">
        <div class="row align-items-center">
            <div class="col-md">
                <h2 class="heading mb-2 display-4 font-light probootstrap-animate">Xin chào <%=SecurityUtils.getPrincipal().getFullName()%></h2>
                <p class="lead mb-5 probootstrap-animate">
                </p>
                <a href="<c:url value="/diadanh"/>" role="button" class="btn btn-primary p-3 mr-3 pl-5 pr-5 text-uppercase d-lg-inline d-md-inline d-sm-block d-block mb-3">Đổi hình nền</a>
                </p>
            </div>

        </div>
    </div>

</section>
<!-- END section -->

<section class="probootstrap-section-half d-md-flex" id="section-about" style="padding-bottom: 10%">
    <div class="probootstrap-image probootstrap-animate" data-animate-effect="fadeIn" style="background-image: url(<c:url value="/template/web/assets/user_profile/images_and_videos/avata2.jpg"/>); border-radius: 50%; "></div>
    <div class="probootstrap-text">
        <div class="probootstrap-inner probootstrap-animate" data-animate-effect="fadeInRight">
            <h2 class="heading mb-4">Tên: <%=SecurityUtils.getPrincipal().getFullName()%>
                <security:authorize access="isAuthenticated()">
                    authenticated as <security:authentication property="principal.username" />
                </security:authorize>
            </h2>
            <form action="j_spring_security_check" class="probootstrap-form" id="formLogin" method="post">
                <div class="form-group">
                    <div class="row mb-3">
                        <div class="col-md">
                            <div class="form-group">
                                <label for="j_username">Tên người dùng:</label>
                                <label for="j_username" style="width: 100%;">
                                    <input type="text" class="form-control" id="j_username" name="j_username" placeholder=<%=SecurityUtils.getPrincipal().getFullName()%>>
                                </label>
                            </div>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <div class="col-md">
                            <div class="form-group">
                                <label for="account_status">Trạng thái tài khoản:</label>
                                <label for="account_status" style="width: 100%;">
                                    <select id="account_status" name="select" class="form-control">
                                        <option selected disabled>Trạng thái tài khoản</option>
                                        <option value="1">Hoạt động</option>
                                        <option value="0">Khóa tài khoản</option>
                                    </select>
                                </label>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md">
                            <button type="submit" class="btn btn-primary btn-block" >Cập nhật</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>
<!-- END section -->

<section>
    <div class="container-fluid">
        <!-- Comments -->
        <div>
            <h2 class="tm-color-primary tm-post-title">Bình luận của bạn</h2>
            <hr class="tm-hr-primary tm-mb-45">
            <div class="tm-comment-reply tm-mb-45">
                <h2 class="heading mb-4">Hòn Khô</h2>
                <div class="tm-comment">
                    <figure class="tm-comment-figure">
                        <img src="<c:url value="/template/web/assets/user_profile/images_and_videos/avata2.jpg"/>" alt="Image" class="mb-2 rounded-circle img-thumbnail" style="width: 100px;height: 100px;">
                        <figcaption class="tm-color-primary text-center">Jewel Soft</figcaption>
                    </figure>
                    <p style="font-size: 125%">
                        Nunc et eros quis enim feugiat tincidunt et vitae dui. Nullam consectetur justo ac ex laoreet rhoncus. Nunc id leo pretium, faucibus sapien vel, euismod turpis.
                    </p>
                </div>
                <span class="d-block text-right tm-color-primary">June 21, 2020</span>
                <button type="submit" class="btn btn-primary btn-block" >Xóa bình luận</button>
            </div>
            <div class="tm-comment-reply tm-mb-45">
                <hr>
                <h2 class="heading mb-4">Ghềnh Ráng - Tiên Sa</h2>
                <div class="tm-comment">
                    <figure class="tm-comment-figure">
                        <img src="<c:url value="/template/web/assets/user_profile/images_and_videos/avata3.jpg"/>" alt="Image" class="mb-2 rounded-circle img-thumbnail" style="width: 100px;height: 100px;">
                        <figcaption class="tm-color-primary text-center">Jewel Soft</figcaption>
                    </figure>
                    <p style="font-size: 125%">
                        Nunc et eros quis enim feugiat tincidunt et vitae dui. Nullam consectetur justo ac ex laoreet rhoncus. Nunc id leo pretium, faucibus sapien vel, euismod turpis.
                    </p>
                </div>
                <span class="d-block text-right tm-color-primary">June 21, 2020</span>
                <button type="submit" class="btn btn-primary btn-block" >Xóa bình luận</button>
            </div>
        </div>
    </div>
</section>
<!-- END section -->

<section class="probootstrap_section bg-light">
    <div class="container">
        <div class="row text-center mb-5 probootstrap-animate">
            <div class="col-md-12">
                <h2 class="display-4 border-bottom probootstrap-section-heading">Địa danh yêu thích của bạn</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="media probootstrap-media d-flex align-items-stretch mb-4 probootstrap-animate">
                    <div class="probootstrap-media-image" style="background-image: url(<c:url value="/template/web/assets/images/img_1.jpg"/>)">
                    </div>
                    <div class="media-body">
                        <h5 class="mb-3">Tháp đôi</h5>
                        <p>Tháp được xây dựng vào khoảng cuối thế kỷ 11 – đầu thế kỷ 13. Đây là thời kỳ vương quốc Chăm Pa gặp nhiều biến động.</p>
                        </p>
                        <a href="<c:url value="/diadanh"/>" role="button" class="btn btn-primary p-3 mr-3 pl-5 pr-5 text-uppercase d-lg-inline d-md-inline d-sm-block d-block mb-3">💔 Bỏ yêu thích </a>
                        </p>
                    </div>
                </div>

                <div class="media probootstrap-media d-flex align-items-stretch mb-4 probootstrap-animate">
                    <div class="probootstrap-media-image" style="background-image: url(<c:url value="/template/web/assets/images/img_2.jpg"/>)">
                    </div>
                    <div class="media-body">
                        <h5 class="mb-3">Ghềnh Ráng</h5>
                        <p>Là tác phẩm thiên tạo với quần thể sơn thạch chạy sát biển, nơi những dãy đá núi nhấp nhô, chập trùng tạo thành hang,... </p>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="media probootstrap-media d-flex align-items-stretch mb-4 probootstrap-animate">
                    <div class="probootstrap-media-image" style="background-image: url(<c:url value="/template/web/assets/images/img_4.jpg"/>)">
                    </div>
                    <div class="media-body">
                        <h5 class="mb-3">Tháp Dương Long</h5>
                        <p>Trên đất Bình Định đã có nhiều công trình kiến trúc Champa được xây dựng, nhiều tác phẩm điêu khắc được khắc tạc,...</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>
