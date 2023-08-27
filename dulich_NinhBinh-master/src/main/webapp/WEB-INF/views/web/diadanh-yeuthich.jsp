<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 11/11/2022
  Time: 4:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ taglib prefix="securtity" uri="http://www.springframework.org/security/tags" %>
<%@ page import= "com.laptrinhjavaweb.util.SecurityUtils" %>
<html>
<head>
    <title>Địa danh</title>
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
                <li class="nav-item active"><a class="nav-link" href="<c:url value="/diadanh"/>">Địa danh</a></li>
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
<!-- END nav -->

<!-- Begin section -->
<section class="probootstrap-cover overflow-hidden relative"  style="background-image: url('<c:url value="/template/web/assets/images/su-kien.jpg"/>');" data-stellar-background-ratio="0.5" id="section-home">
    <div class="overlay"></div>
    <div class="container">
        <div class="row align-items-center text-center">
            <div class="col-md">
                <img class="probootstrap-image probootstrap-animate" data-animate-effect="fadeIn" src="<c:url value="/template/web/assets/images/Text-sk.png"/>" style="padding-right: 10%; padding-left: 10%; height: 100%; width: 100%">
                <div style="margin-right: 10%; margin-left: 10%; width: 80%">
                    <form action="<c:url value="/search" />" class="navbar-form navbar-left web-sh" method="get">
                        <div class="form probootstrap-inner probootstrap-animate" data-animate-effect="fadeInLeft">
                            <input type="text" name="keyword" class="form-control" placeholder="Tìm kiếm địa điểm ...">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- END section -->

<!--Begin section Loved place-->
<section class="shop_section layout_padding">
    <div class="container">
        <div class="row text-center mb-5 probootstrap-animate" data-animate-effect="fadeIn" style="padding-top: 10%">
            <div class="col-md-12">
                <img src="<c:url value="/template/web/assets/images/DuocYeuThichNhat.png"/>" style="height: 100%; width: 60%; margin-left: 20%; margin-right: 20%;">
            </div>
        </div>

        <div class="row">
            <div class="col-md-6 ">
                <div class="box">
                    <a href="">
                        <div class="image_1 overlay probootstrap-cover probootstrap-inner probootstrap-animate" data-animate-effect="fadeInLeft" style="display: block; background-image: url('<c:url value="/template/web/assets/images/BaiTamHoangHau.jpg"/>'); height: 100%; width: 100%; border-radius: 5px; vertical-align: top">
                            <div style="background: rgba(0, 0, 0, 50%); display: block; color: #FFFFFF; margin-left: 10%; margin-right: 10%; padding: 2%; border-radius: 5px; text-align: center;"> Bãi tắm Hoàng Hậu </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="box">
                    <a href="">
                        <div class="image_1 overlay probootstrap-cover probootstrap-inner probootstrap-animate" data-animate-effect="fadeIn" style="display: block; background-image: url('<c:url value="/template/web/assets/images/ThapDoi.png"/>'); height: 100%; width: 100%; border-radius: 5px; vertical-align: top">
                            <div style="background: rgba(0, 0, 0, 50%); display: block; color: #FFFFFF; margin-left: 10%; margin-right: 10%; padding: 2%; border-radius: 5px; text-align: center;"> Tháp Đôi </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="box">
                    <a href="">
                        <div class="image_1 overlay probootstrap-cover probootstrap-inner probootstrap-animate" data-animate-effect="fadeInRight" style="display: block; background-image: url('<c:url value="/template/web/assets/images/ThapDuongLong.jpg"/>'); height: 100%; width: 100%; border-radius: 5px; vertical-align: top">
                            <div style="background: rgba(0, 0, 0, 50%); display: block; color: #FFFFFF; margin-left: 10%; margin-right: 10%; padding: 2%; border-radius: 5px; text-align: center;"> Tháp Dương Long </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="box">
                    <a href="">
                        <div class="image_1 overlay probootstrap-cover probootstrap-inner probootstrap-animate" data-animate-effect="fadeInLeft" style="display: block; background-image: url('<c:url value="/template/web/assets/images/GhenhRangTienSa.jpg"/>'); height: 100%; width: 100%; border-radius: 5px; vertical-align: top; margin-top: 10%;">
                            <div style="background: rgba(0, 0, 0, 50%); display: block; color: #FFFFFF; margin-left: 10%; margin-right: 10%; padding: 2%; border-radius: 5px; text-align: center;"> Ghềnh Ráng - Tiên Sa </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="box">
                    <a href="">
                        <div class="image_1 overlay probootstrap-cover probootstrap-inner probootstrap-animate" data-animate-effect="fadeIn" style="display: block; background-image: url('<c:url value="/template/web/assets/images/ThapBanhIt.jpg"/>'); height: 100%; width: 100%; border-radius: 5px; vertical-align: top; margin-top: 10%;">
                            <div style="background: rgba(0, 0, 0, 50%); display: block; color: #FFFFFF; margin-left: 10%; margin-right: 10%; padding: 2%; border-radius: 5px; text-align: center;"> Tháp Bánh Ít </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-sm-6  col-xl-3">
                <div class="box">
                    <a href="">
                        <div class="image_1 overlay probootstrap-cover probootstrap-inner probootstrap-animate" data-animate-effect="fadeIn" style="display: block; background-image: url('<c:url value="/template/web/assets/images/BaiTamQuyNhon.jpg"/>'); height: 100%; width: 100%; border-radius: 5px; vertical-align: top; margin-top: 10%;">
                            <div style="background: rgba(0, 0, 0, 50%); display: block; color: #FFFFFF; margin-left: 10%; margin-right: 10%; padding: 2%; border-radius: 5px; text-align: center;"> Bãi tắm Quy Nhơn </div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="box">
                    <a href="">
                        <div class="image_1 overlay probootstrap-cover probootstrap-inner probootstrap-animate" data-animate-effect="fadeIn" style="display: block; background-image: url('<c:url value="/template/web/assets/images/EoGio.jpg"/>'); height: 100%; width: 100%; border-radius: 5px; vertical-align: top; margin-top: 10%;">
                            <div style="background: rgba(0, 0, 0, 50%); display: block; color: #FFFFFF; margin-left: 10%; margin-right: 10%; padding: 2%; border-radius: 5px; text-align: center;"> Eo Gió </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
        <div class="btn-box" style="padding-top: 5%; padding-bottom: 5%; text-align: center">
            <a href="#" class="btn btn-primary">Xem thêm</a>
        </div>
    </div>
</section>
<!--End section Loved place-->

<!--Begin section most comment place-->
<section class="probootstrap-cover overflow-hidden relative" style="background-image: url('<c:url value="/template/web/assets/images/bg-sk.jpg"/>'); margin-top: 5%; height: 100%; width: 100%">
    <div style="">
        <div class="row text-center mb-5 probootstrap-animate">
            <div class="col-md-12">
                <img src="<c:url value="/template/web/assets/images/DuocBinhLuanNhieuNhat.png"/>" style="height: 100%; width: 60%; margin-left: 20%; margin-right: 20%;">
            </div>
        </div>

        <div class="row" style="background: rgba(0, 0, 0, 50%); padding: 5% 2%;">
            <div class="col-md-4 probootstrap-inner probootstrap-animate" data-animate-effect="fadeInLeft" style="padding-right: 2%;">
                <div class="small-box-c" style="-webkit-box-shadow: 0 6px 10px -5px rgba(0, 0, 0, 0.1); box-shadow: 0 6px 10px -5px rgba(0, 0, 0, 0.1); background: #ffffff; padding: 2%; height: fit-content">
                    <div class="small-img-b" style="height: 50%">
                        <img class="img-responsive" src="<c:url value="/template/web/assets/images/ThapBanhIt.jpg"/>" alt="Hình ảnh Tháp Bánh Ít" style="width: 100%; height: 300px; border-radius: 5%"/>
                    </div>
                    <div class="clearfix" style="padding-top: 2%; padding-left: 2%">
                        <div class="left-ti">
                            <h4 style="text-align: center">Tháp Bánh Ít</h4>
                            <p style="color: black"> Tháp Bánh Ít còn có tên gọi là tháp Bạc còn trong tiếng J'rai là YANG MTIAN là một cụm các tháp cổ Chăm Pa, hiện nay nằm trên một ngọn đồi tại thôn Đại Lộc, xã Phước Hiệp, huyện Tuy Phước, tỉnh Bình Định. </p>
                            <a href="#"> Chi tiết </a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4 probootstrap-inner probootstrap-animate" data-animate-effect="fadeIn" style="padding-right: 2%">
                <div class="small-box-c" style="-webkit-box-shadow: 0 6px 10px -5px rgba(0, 0, 0, 0.1); box-shadow: 0 6px 10px -5px rgba(0, 0, 0, 0.1); background: #ffffff; padding: 2%; height: fit-content">
                    <div class="small-img-b" style="height: 50%">
                        <img class="img-responsive" src="<c:url value="/template/web/assets/images/EoGio.jpg"/>" alt="Hình ảnh Eo Gió" style="width: 100%; height: 300px; border-radius: 5%"/>
                    </div>
                    <div class="clearfix" style="padding-top: 2%; padding-left: 2%">
                        <div class="left-ti">
                            <h4 style="text-align: center">Eo gió</h4>
                            <p style="color: black"> Thuộc địa phận xã Nhơn Lý, chỉ cách thành phố Quy Nhơn, tỉnh Bình Định khoảng 20km, Eo Gió là một địa điểm du lịch nổi tiếng hấp dẫn du khách bởi với vẻ đẹp thiên nhiên hoang sơ mà không kém phần hài hoà của sông nước, mây trời và núi non hội tụ. </p>
                            <a href="#"> Chi tiết </a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4 probootstrap-inner probootstrap-animate" data-animate-effect="fadeInRight" style="padding-right: 2%;">
                <div class="small-box-c" style="-webkit-box-shadow: 0 6px 10px -5px rgba(0, 0, 0, 0.1); box-shadow: 0 6px 10px -5px rgba(0, 0, 0, 0.1); background: #ffffff; padding: 2%; height: fit-content">
                    <div class="small-img-b" style="height: 50%">
                        <img class="img-responsive" src="<c:url value="/template/web/assets/images/ThapDuongLong.jpg"/>" alt="Hình ảnh Tháp Bánh Ít" style="width: 100%; height: 300px; border-radius: 5%"/>
                    </div>
                    <div class="clearfix" style="padding-top: 2%; padding-left: 2%">
                        <div class="left-ti">
                            <h4 style="text-align: center">Tháp Dương Long</h4>
                            <p style="color: black"> Ở xã Tây Bình, huyện Tây Sơn, cách TP.Quy Nhơn khoảng 50km, được xây dựng vào cuối thế ki XII, đây là thời kỳ phát triển rực rỡ nhất của nền văn hóa Champa. Cụm tháp này gồm ba tháp: Tháp giữa cao 42m, tháp Nam cao 36m và tháp Bắc cao 34m.</p>
                            <a href="#"> Chi tiết </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="btn-box" style="padding-top: 5%; text-align: center">
            <a href="#" class="btn btn-primary">Xem thêm</a>
        </div>
    </div>
</section>
<!--End section most comment place-->

<section style="margin-top: 5%">
    <div class="computers_section layout_padding">
        <div class="row text-center mb-5 probootstrap-animate">
            <div class="col-md-12">
                <img src="<c:url value="/template/web/assets/images/GoiY.png"/>" style="height: 100%; width: 40%; margin-left: 30%; margin-right: 30%;">
            </div>
        </div>

        <div class="container">
            <div style="width: 100%; height: 100%">
                <div class="row" >
                    <img class="probootstrap-image probootstrap-animate" data-animate-effect="fadeIn" src="<c:url value="/template/web/assets/images/BaiTamQuyNhon.jpg"/>" style="height: 80%; width: 55%; border-radius: 10%; -webkit-box-shadow: 0 6px 10px -5px rgba(0, 0, 0, 0.1); box-shadow: 0 6px 10px -5px rgba(0, 0, 0, 0.1);">
                    <div class="probootstrap-inner probootstrap-animate" data-animate-effect="fadeInLeft" style="float: right; vertical-align: center; height: 80%; width: 40%; margin-top: 5%; margin-bottom: 5%; padding: 5%;-webkit-box-shadow: 0 6px 10px -5px rgba(0, 0, 0, 0.1); box-shadow: 0 6px 10px -5px rgba(0, 0, 0, 0.1); background: #D5EEFB;margin-left: 2%">
                        <h1 style="padding-top: 3%; font-family: 'Font Awesome 5 Brands';text-align: right">Bãi tắm Quy Nhơn</h1>
                        <p style="padding-top: 2%; line-height: 1.5; color: #1e1a1a; text-align: right">Là một trong những địa điểm du lịch Bình Định mới mẻ, bãi tắm này thu hút du khách nhờ hình dáng trăng khuyết cực độc đáo ôm dọc theo bờ biển kéo dài tầm 5km (từ Mũi Tấn đến Ghềnh Ráng).</p>
                        <p><a href="#" class="btn btn-primary"style="float: right; background-color: #77C1D5; border-color: #77C1D5; border-radius: 50px">Xem thêm</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>
