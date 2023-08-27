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
<html>
<head>
    <!-- mobile metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <!-- bootstrap css -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/template/web/assets/css/bootstrap/bootstrap.min.css"/> ">
    <!-- style css -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/template/web/assets/css/style.css"/>">
    <!-- Responsive-->
    <link rel="stylesheet" href="<c:url value="/template/web/assets/css/responsive.css"/>">
    <!-- Scrollbar Custom CSS -->
    <link rel="stylesheet" href="<c:url value="/template/web/assets/css/jquery.mCustomScrollbar.min.css"/>">
    <!-- Tweaks for older IEs-->
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Cormorant+Upright:wght@700&display=swap" rel="stylesheet">
    <title>Trang chủ</title>
    <!-- Thêm font -->
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark probootstrap_navbar" id="probootstrap-navbar">
    <div class="container">
        <a class="navbar-brand" href="<c:url value="/trang-chu"/>">BINH DINH - VIET NAM</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#probootstrap-menu" aria-controls="probootstrap-menu" aria-expanded="false" aria-label="Toggle navigation">
            <span><i class="ion-navicon"></i></span>
        </button>
        <div style="width: 10%">
            <form action="<c:url value="/search" />" class="navbar-form navbar-left web-sh" method="get">
                <div class="form">
                    <input type="text" name="keyword" class="form-control" placeholder="Search place ...">
                </div>
            </form>
        </div>
        <div class="collapse navbar-collapse" id="probootstrap-menu">
            <ul class="navbar-nav ml-auto">

                <li class="nav-item active"><a class="nav-link" href="<c:url value="/trang-chu"/>">Trang chủ</a></li>
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

<!-- BEGIN section -->
<section class="probootstrap-cover overflow-hidden relative" style="background-image: url('<c:url value="/template/web/assets/images/DamThiNai.jpg"/>'); height: 100%; width: 100%;" data-stellar-background-ratio="0.5" id="section-home">
    <div class="overlay"></div>
    <div class="container">
        <div class="row align-items-center">
            <div class="col-md">
                <img src="<c:url value="/template/web/assets/images/Text.png"/>" style="padding-right: 10%; padding-left: 10%; height: 100%; width: 100%">
                <h1 class="probootstrap-animate" style="text-align: center; color: #FFFFFF; padding-top: 5%; font-size: 150%; padding-right: 10%; padding-left: 10%;"> Đừng bao giờ ngần ngại đi xa hơn nữa, vượt qua mọi đại dương, mọi biên giới, mọi quốc gia và mọi đức tin. </h1>
            </div>
        </div>
    </div>
</section>
<!-- END section -->

<!-- BEGIN section top 5 place  -->
<section style="padding-top: 5%; padding-bottom: 5%">
    <div style="width: 100%; height: 100%">
        <img class="probootstrap-animate" src="<c:url value="/template/web/assets/images/dia_danh.png"/>" style="height: 30%; width: 40%; border-radius: 10%; margin-left: 30%; margin-right: 30%; margin-bottom: 5%">
    </div>
    <div class="container">
        <div style="width: 100%; height: 100%">
            <div class="row" >
                <img class="probootstrap-image probootstrap-animate" data-animate-effect="fadeIn" src="<c:url value="/template/web/assets/images/${place1.thumbnail}"/>" style="height: 80%; width: 70%; border-radius: 10%;">
                <div class="probootstrap-inner probootstrap-animate" data-animate-effect="fadeInLeft" style="float: right; background: rgba(255, 255, 255, 85%); margin-left: -20%; vertical-align: center; height: 80%; width: 50%; margin-top: 5%; margin-bottom: 5%; padding: 5%; -webkit-box-shadow: 0 6px 10px -5px rgba(0, 0, 0, 0.1); box-shadow: 0 6px 10px -5px rgba(0, 0, 0, 0.1);">
                    <h1 style="padding-top: 3%; font-family: 'Font Awesome 5 Brands';text-align: right">${place1.title}</h1>
                    <p style="padding-top: 2%; line-height: 1.5; color: #1e1a1a; text-align: right">${place1.shortDescription}</p>
                    <p style="text-align: right"> Lượt yêu thích: 15</p>
                    <p><a href="<c:url value="/place_detail?place_id=${place1.id}"/>" class="btn btn-primary"style="float: right; background-color: #77C1D5; border-color: #77C1D5; border-radius: 50px">Xem thêm</a></p>
                </div>
            </div>
        </div>
    </div>
    <div class="container" style="margin-top: 5%">
        <div style="width: 100%; height: 100%">
            <div class="row" >
                <div class="probootstrap-inner probootstrap-animate" data-animate-effect="fadeInRight" style="background: rgba(255, 255, 255, 85%); margin-right: -20%; vertical-align: center; height: 80%; width: 50%; margin-top: 5%; margin-bottom: 5%; padding: 5%; z-index: 1; -webkit-box-shadow: 0 6px 10px -5px rgba(0, 0, 0, 0.1); box-shadow: 0 6px 10px -5px rgba(0, 0, 0, 0.1);">
                    <h1 style="padding-top: 3%; font-family: 'Font Awesome 5 Brands';">${place2.title}</h1>
                    <p style="padding-top: 2%; line-height: 1.5; color: #1e1a1a">${place2.shortDescription}</p>
                    <p> Lượt yêu thích: 15</p>
                    <p>
                        <a href="<c:url value="/place_detail?place_id=${place2.id}"/>" class="btn btn-primary"style="background-color: #77C1D5; border-color: #77C1D5; border-radius: 50px">Xem thêm</a></p>
                </div>
                <img class="probootstrap-image probootstrap-animate" data-animate-effect="fadeIn" src="<c:url value="/template/web/assets/images/${place2.thumbnail}"/>" style="height: 80%; width: 70%; border-radius: 10%; float: right;">
            </div>
        </div>
    </div>
</section>
<!-- END section -->

<!-- BEGIN section Event  -->
<section class="probootstrap-cover overflow-hidden relative" style="background-image: url('<c:url value="/template/web/assets/images/bg-sk.jpg"/>'); height: 100%; width: 100%;" >
        <div style="width: 100%; height: 100%">
            <img class="probootstrap-animate" src="<c:url value="/template/web/assets/images/su-kien.png"/>" style="height: 30%; width: 40%; border-radius: 10%; margin: -5% 30% 5%;">
        </div>
        <div style="background: rgba(0, 0, 0, 50%); margin-left: 5%; margin-right: 5%; padding-bottom: 5%; border-radius: 10%;">
            <div class="container" style="margin-top: -5%; padding-top: 5%">
                <div style="width: 100%; height: 100%; margin-left: 7%">
                    <div class="row">
                        <div class="col-lg-3 col-md-4 col-sm-6 probootstrap-inner probootstrap-animate" data-animate-effect="fadeInLeft" style="background-color: #FFFFFF; width: 100%; height: 100%; margin: 2%">
                            <div class="" style="width: 100%; height: 100%; border-radius: 10px">
                                <img src="<c:url value="/template/web/assets/images/DemVoDai.jpg"/>" style="width:100%; border-radius: 5px; height: 200px; padding: 3% 2% 2%;">
                            </div>
                            <a href="#">
                                <div style="text-align: center; color: black; font-size: 19px; ">
                                    Đêm Võ Đài - Bình Định
                                </div>
                            </a>
                        </div>

                        <div class="col-lg-3 col-md-4 col-sm-6 probootstrap-inner probootstrap-animate" data-animate-effect="fadeIn" style="background-color: #FFFFFF; width: 100%; height: 100%; margin: 2%">
                            <div class="" style="width: 100%; height: 100%; border-radius: 10px">
                                <img src="<c:url value="/template/web/assets/images/VnExpressMarathon.jpg"/>" style="width:100%; border-radius: 5px; height: 200px; padding: 3% 2% 2%;">
                            </div>
                            <a href="#">
                                <div style="text-align: center; color: black; font-size: 19px; ">
                                    VnExpress Marathon
                                </div>
                            </a>
                        </div>

                        <div class="col-lg-3 col-md-4 col-sm-6 probootstrap-inner probootstrap-animate" data-animate-effect="fadeInRight" style="background-color: #FFFFFF; width: 100%; height: 100%; margin: 2%">
                            <div class="" style="width: 100%; height: 100%; border-radius: 10px">
                                <img src="<c:url value="/template/web/assets/images/LeHoiDuaThuyen.jpg"/>" style="width:100%; border-radius: 5px; height: 200px; padding: 3% 2% 2%;">
                            </div>
                            <a href="#">
                                <div style="text-align: center; color: black; font-size: 19px; ">
                                    Lễ hội Đua Thuyền
                                </div>
                            </a>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-3 col-md-4 col-sm-6 probootstrap-inner probootstrap-animate" data-animate-effect="fadeInLeft" style="background-color: #FFFFFF; width: 100%; height: 100%; margin: 2%">
                            <div class="" style="width: 100%; height: 100%; border-radius: 10px">
                                <img src="<c:url value="/template/web/assets/images/LeHoiDuongPho1.jpg"/>" style="width:100%; border-radius: 5px; height: 200px; padding: 3% 2% 2%;">
                            </div>
                            <a href="#">
                                <div style="text-align: center; color: black; font-size: 19px; ">
                                    Lễ Hội Đường Phố
                                </div>
                            </a>
                        </div>

                        <div class="col-lg-3 col-md-4 col-sm-6 probootstrap-inner probootstrap-animate" data-animate-effect="fadeIn" style="background-color: #FFFFFF; width: 100%; height: 100%; margin: 2%">
                            <div class="" style="width: 100%; height: 100%; border-radius: 10px">
                                <img src="<c:url value="/template/web/assets/images/LeHoiDongDa.jpg"/>" style="width:100%; border-radius: 5px; height: 200px; padding: 3% 2% 2%;">
                            </div>
                            <a href="#">
                                <div style="text-align: center; color: black; font-size: 19px; ">
                                    Lễ Hội Đống Đa
                                </div>
                            </a>
                        </div>

                        <div class="col-lg-3 col-md-4 col-sm-6 probootstrap-inner probootstrap-animate" data-animate-effect="fadeInRight" style="background-color: #FFFFFF; width: 100%; height: 100%; margin: 2%">
                            <div class="" style="width: 100%; height: 100%; border-radius: 10px">
                                <img src="<c:url value="/template/web/assets/images/LeHoiCauNgu.jpg"/>" style="width:100%; border-radius: 5px; height: 200px; padding: 3% 2% 2%;">
                            </div>
                            <a href="#">
                                <div style="text-align: center; color: black; font-size: 19px; ">
                                    Lễ Hội Cầu Ngư
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</section>
<!-- End section Event  -->

<!-- Begin section Hotel  -->
<section style="padding-bottom: 5%">
    <div style="width: 100%; height: 100%; padding-top: 5%">
        <img class="probootstrap-animate" src="<c:url value="/template/web/assets/images/khach-san.png"/>" style="height: 30%; width: 40%; border-radius: 10%; margin-left: 30%; margin-right: 30%; margin-bottom: 5%">
    </div>

    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-3 p-0" style="margin-left: 10%; margin-right: 1%; -webkit-box-shadow: 0 6px 10px -5px rgba(0, 0, 0, 0.1); box-shadow: 0 6px 10px -5px rgba(0, 0, 0, 0.1);">
                <div class="categories__text probootstrap-inner probootstrap-animate" data-animate-effect="fadeInLeft" style="height: 50%; background-color: #D5EEFB; padding: 2%; border-top-left-radius: 5px; border-top-right-radius: 5px">
                    <h1 style="color: #000000; text-align: center">Raon Hotel</h1>
                    <p>Nằm ở thành phố Quy Nhơn, cách Bãi biển Quy Nhơn 600 m, RAON Hotel cung cấp chỗ nghỉ với hồ bơi ngoài trời, chỗ đỗ xe riêng miễn phí và sân hiên. Khách sạn 4 sao này có dịch vụ tiền sảnh và bàn đặt tour.</p>
                    <a href="#" style="text-align: center">Chi tiết</a>
                </div>
                <div class="image_1 overlay probootstrap-cover probootstrap-inner probootstrap-animate" data-animate-effect="fadeIn" style="background-image: url('<c:url value="/template/web/assets/images/Raon.jpg"/>'); height: 50%; border-bottom-left-radius: 5px; border-bottom-right-radius: 5px"></div>
            </div>
            <div class="col-lg-6" >
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6 p-0" style="margin-bottom: 1%">
                        <div class="image_1 overlay probootstrap-cover probootstrap-inner probootstrap-animate" data-animate-effect="fadeIn" style="background-image: url('<c:url value="/template/web/assets/images/Kadupul.jpg"/>'); border-top-left-radius: 5px; border-bottom-left-radius: 5px; height: 280px"></div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 p-0" style="margin-bottom: 1%">
                        <div class="categories__text probootstrap-inner probootstrap-animate" data-animate-effect="fadeInRight" style="height: 100%; background-color: #D5EEFB; padding: 2%; border-top-right-radius: 5px; border-bottom-right-radius: 5px; height: 280px">
                            <h1 style="color: #000000; text-align: center">Kadupul Hotel</h1>
                            <p>Tất cả phòng nghỉ tại đây được trang bị máy điều hòa, TV truyền hình cáp màn hình phẳng, tủ lạnh, ấm đun nước, vòi sen, dép và tủ để quần áo. Mỗi phòng đều có phòng tắm riêng, máy sấy tóc và ga trải giường.</p>
                            <a href="#">Chi tiết</a>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 p-0" style="">
                        <div class="categories__text probootstrap-inner probootstrap-animate" data-animate-effect="fadeInRight" style="height: 100%; background-color: #D5EEFB; padding: 2%; border-top-left-radius: 5px; border-bottom-left-radius: 5px; height: 280px">
                            <h1 style="color: #000000; text-align: center">Mira Bãi Xếp</h1>
                            <p>Tọa lạc tại Bãi Xép - Phường Ghềnh Ráng - TP Quy Nhơn. Homestay nằm cách biển chỉ 5m, với phong cách thiết kế chủ yếu là Tre, Nứa và các vật liệu đậm chất Mộc đảm bảo sẽ mang lại cho bạn cảm giác thư giãn.</p>
                            <a href="#">Chi tiết</a>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-6 p-0" style="">
                        <div class="image_1 overlay probootstrap-cover probootstrap-inner probootstrap-animate" data-animate-effect="fadeIn" style="background-image: url('<c:url value="/template/web/assets/images/MiraHotel.jpg"/>'); border-top-right-radius: 5px; border-bottom-right-radius: 5px; height: 280px"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End section Hotel  -->
</body>
</html>
