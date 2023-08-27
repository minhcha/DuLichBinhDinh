<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 11/11/2022
  Time: 5:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ taglib prefix="securtity" uri="http://www.springframework.org/security/tags" %>
<%@ page import= "com.laptrinhjavaweb.util.SecurityUtils" %>
<html>
<head>
    <title>Sự kiện</title>
    <link href="https://fonts.googleapis.com/css2?family=Great+Vibes&display=swap" rel="stylesheet">
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
                <li class="nav-item active"><a class="nav-link" href="<c:url value="/event"/>">Sự kiện</a></li>
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

<section class="probootstrap-cover overflow-hidden relative"  style="background-image: url('<c:url value="/template/web/assets/images/BinhDinh07.jpeg"/>');" data-stellar-background-ratio="0.5" id="section-home">
    <div class="overlay"></div>
    <div class="container">
        <div class="row align-items-center text-center">
            <div class="col-md">
                <h2 class="heading mb-2 display-4 font-light probootstrap-animate" style="font-family: 'Great Vibes'; text-align: left">Anh dắt em về thăm quê Bình Định</h2>
                <h2 class="heading mb-2 display-4 font-light probootstrap-animate" style="font-family: 'Great Vibes'; text-align: left">Xem trai làng luyện võ, gái làm thơ</h2>
            </div>
            <div style="margin-right: 10%; width: 80%; margin-top: 3%">
                <form action="<c:url value="/search" />" class="navbar-form navbar-left web-sh" method="get">
                    <div class="form probootstrap-inner probootstrap-animate" data-animate-effect="fadeInLeft">
                        <input type="text" name="keyword" class="form-control" placeholder="Tìm kiếm sự kiện ...">
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
<!-- END section -->

<!-- Loved event Section Begin -->
<section style="padding-bottom: 5%">
    <div class="row text-center mb-5 probootstrap-animate" data-animate-effect="fadeIn" style="padding-top: 10%">
        <div class="col-md-12">
            <img src="<c:url value="/template/web/assets/images/DuocYeuThichNhat.png"/>" style="height: 100%; width: 60%; margin-left: 20%; margin-right: 20%;">
        </div>
    </div>

    <div class="container-fluid">
        <div class="row" style="padding: 5% 2%; background-color: #D5EEFB">
            <div class="col-md-4 probootstrap-inner probootstrap-animate" data-animate-effect="fadeInLeft" style="padding-right: 2%; ">
                <div class="small-box-c" style="-webkit-box-shadow: 0 6px 10px -5px rgba(0, 0, 0, 0.1); box-shadow: 0 6px 10px -5px rgba(0, 0, 0, 0.1); background: #ffffff; padding: 2%; height: fit-content">
                    <div class="small-img-b" style="height: 50%">
                        <img class="img-responsive" src="<c:url value="/template/web/assets/images/LeHoiDuaThuyen.jpg"/>" alt="Hình ảnh Lễ Hội Đua Thuyền" style="width: 100%; height: 300px; border-radius: 5%"/>
                    </div>
                    <div class="clearfix" style="padding-top: 2%; padding-left: 2%">
                        <div class="left-ti">
                            <h4 style="text-align: center">Lễ Hội Đua Thuyền</h4>
                            <p style="color: black"> Lễ hội này được tổ chức nhằm thể hiện sức mạnh của những ngư dân vùng sông nước, đem lại niềm vui, xóa đi bao nỗi nhọc nhằn của một năm lao động vất vả. </p>
                            <a href="#"> Chi tiết </a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4 probootstrap-inner probootstrap-animate" data-animate-effect="fadeIn" style="padding-right: 2%">
                <div class="small-box-c" style="-webkit-box-shadow: 0 6px 10px -5px rgba(0, 0, 0, 0.1); box-shadow: 0 6px 10px -5px rgba(0, 0, 0, 0.1); background: #ffffff; padding: 2%; height: fit-content">
                    <div class="small-img-b" style="height: 50%">
                        <img class="img-responsive" src="<c:url value="/template/web/assets/images/LeHoiChuaOngNui.jpg"/>" alt="Hình ảnh Lễ hội Chùa Ông Núi" style="width: 100%; height: 300px; border-radius: 5%"/>
                    </div>
                    <div class="clearfix" style="padding-top: 2%; padding-left: 2%">
                        <div class="left-ti">
                            <h4 style="text-align: center"> Lễ hội Chùa Ông Núi </h4>
                            <p style="color: black"> Nơi đây không chỉ là di tích lịch sử – văn hóa cấp quốc gia, địa chỉ tâm linh mà còn là chốn thăm quan hữu tình, điểm du lịch hấp dẫn. </p>
                            <a href="#"> Chi tiết </a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4 probootstrap-inner probootstrap-animate" data-animate-effect="fadeInRight" style="padding-right: 2%;">
                <div class="small-box-c" style="-webkit-box-shadow: 0 6px 10px -5px rgba(0, 0, 0, 0.1); box-shadow: 0 6px 10px -5px rgba(0, 0, 0, 0.1); background: #ffffff; padding: 2%; height: fit-content">
                    <div class="small-img-b" style="height: 50%">
                        <img class="img-responsive" src="<c:url value="/template/web/assets/images/LeHoiCauNgu.jpg"/>" alt="Hình ảnh Lễ hội Cầu Ngư" style="width: 100%; height: 300px; border-radius: 5%"/>
                    </div>
                    <div class="clearfix" style="padding-top: 2%; padding-left: 2%">
                        <div class="left-ti">
                            <h4 style="text-align: center">Lễ hội Cầu Ngư</h4>
                            <p style="color: black"> Xuất phát từ cuộc sống lênh đênh sóng gió, luôn phải đối chọi với bão tố, phong ba bằng những phương tiện thô sơ thiếu thốn, người dân vùng biển đành phải tin vào cõi thần linh.</p>
                            <a href="#"> Chi tiết </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Section End -->

<!--Begin section most comment place-->
<section class="probootstrap-cover overflow-hidden relative" style="background-image: url('<c:url value="/template/web/assets/images/bg-sk.jpg"/>'); margin-top: 5%; height: 100%; width: 100%">
    <div style="">
        <div class="row text-center mb-5 probootstrap-animate">
            <div class="col-md-12">
                <img src="<c:url value="/template/web/assets/images/DuocBinhLuanNhieuNhat.png"/>" style="height: 100%; width: 60%; margin-left: 20%; margin-right: 20%;">
            </div>
        </div>

        <div class="row" style="background: rgba(0, 0, 0, 50%); padding: 5% 2%;">
            <div class="container" style="margin-top: -5%; padding-top: 5%">
                <div style="width: 100%; height: 100%; margin-left: 7%">
                    <div class="row">
                        <div class="col-lg-3 col-md-4 col-sm-6 probootstrap-inner probootstrap-animate" data-animate-effect="fadeInLeft" style="background-color: #FFFFFF; width: 100%; height: 100%; margin: 2%; border-radius: 5%">
                            <div class="" style="width: 100%; height: 100%; border-radius: 10px">
                                <img src="<c:url value="/template/web/assets/images/DemVoDai.jpg"/>" style="width:100%; border-radius: 5px; height: 200px; padding: 3% 2% 2%;">
                            </div>
                            <a href="#">
                                <div style="text-align: center; color: black; font-size: 19px; ">
                                    Đêm Võ Đài - Bình Định
                                </div>
                            </a>
                        </div>

                        <div class="col-lg-3 col-md-4 col-sm-6 probootstrap-inner probootstrap-animate" data-animate-effect="fadeIn" style="background-color: #FFFFFF; width: 100%; height: 100%; margin: 2%; border-radius: 5%">
                            <div class="" style="width: 100%; height: 100%; border-radius: 10px">
                                <img src="<c:url value="/template/web/assets/images/VnExpressMarathon.jpg"/>" style="width:100%; border-radius: 5px; height: 200px; padding: 3% 2% 2%;">
                            </div>
                            <a href="#">
                                <div style="text-align: center; color: black; font-size: 19px; ">
                                    VnExpress Marathon
                                </div>
                            </a>
                        </div>

                        <div class="col-lg-3 col-md-4 col-sm-6 probootstrap-inner probootstrap-animate" data-animate-effect="fadeInRight" style="background-color: #FFFFFF; width: 100%; height: 100%; margin: 2%; border-radius: 5%">
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
                        <div class="col-lg-3 col-md-4 col-sm-6 probootstrap-inner probootstrap-animate" data-animate-effect="fadeInLeft" style="background-color: #FFFFFF; width: 100%; height: 100%; margin: 2%; border-radius: 5%">
                            <div class="" style="width: 100%; height: 100%; border-radius: 10px">
                                <img src="<c:url value="/template/web/assets/images/LeHoiDuongPho1.jpg"/>" style="width:100%; border-radius: 5px; height: 200px; padding: 3% 2% 2%;">
                            </div>
                            <a href="#">
                                <div style="text-align: center; color: black; font-size: 19px; ">
                                    Lễ Hội Đường Phố
                                </div>
                            </a>
                        </div>

                        <div class="col-lg-3 col-md-4 col-sm-6 probootstrap-inner probootstrap-animate" data-animate-effect="fadeIn" style="background-color: #FFFFFF; width: 100%; height: 100%; margin: 2%; border-radius: 5%">
                            <div class="" style="width: 100%; height: 100%; border-radius: 10px">
                                <img src="<c:url value="/template/web/assets/images/LeHoiDongDa.jpg"/>" style="width:100%; border-radius: 5px; height: 200px; padding: 3% 2% 2%;">
                            </div>
                            <a href="#">
                                <div style="text-align: center; color: black; font-size: 19px; ">
                                    Lễ Hội Đống Đa
                                </div>
                            </a>
                        </div>

                        <div class="col-lg-3 col-md-4 col-sm-6 probootstrap-inner probootstrap-animate" data-animate-effect="fadeInRight" style="background-color: #FFFFFF; width: 100%; height: 100%; margin: 2%; border-radius: 5%">
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

        <div class="btn-box" style="padding-top: 5%; text-align: center">
            <a href="#" class="btn btn-primary">Xem thêm</a>
        </div>
    </div>
</section>
<!--End section most comment place-->

<!-- Recommend Event Section Begin -->
<section class="probootstrap_section">
    <div class="container">
        <div class="row text-center mb-5 probootstrap-animate">
            <div class="col-md-12">
                <h2 class="display-4 border-bottom probootstrap-section-heading">Gợi ý cho bạn</h2>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="image_1 overlay probootstrap-cover" style="background-image: url('<c:url value="/template/web/assets/images/LeHoiDuongPho1.jpg"/>'); border-radius: 5px; height: 100%; width: 100%">
                    <div class="text-center" style="padding-top: 2%">
                        <h6><a href="#" style="background: rgba(0, 0, 0, 50%); display: block; color: #FFFFFF; margin-left: 10%; margin-right: 10%; padding: 2%; border-radius: 5px; text-align: center;">Lễ hội Đường Phố</a></h6>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="image_1 overlay probootstrap-cover" style="background-image: url('<c:url value="/template/web/assets/images/LeHoiDongDa.jpg"/>'); border-radius: 5px; height: 100%; width: 100%">
                    <div class="text-center" style="padding-top: 2%">
                        <h6><a href="#" style="background: rgba(0, 0, 0, 50%); display: block; color: #FFFFFF; margin-left: 10%; margin-right: 10%; padding: 2%; border-radius: 5px; text-align: center;">Lễ hội Đống Đa</a></h6>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="image_1 overlay probootstrap-cover" style="background-image: url('<c:url value="/template/web/assets/images/LeHoiCauNgu.jpg"/>'); border-radius: 5px; height: 100%; width: 100%">
                    <div class="text-center" style="padding-top: 2%">
                        <h6><a href="#" style="background: rgba(0, 0, 0, 50%); display: block; color: #FFFFFF; margin-left: 10%; margin-right: 10%; padding: 2%; border-radius: 5px; text-align: center;">Lễ hội Cầu Ngư</a></h6>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Recommend Event Section End -->
</body>
</html>
