<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 11/11/2022
  Time: 5:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ taglib prefix="securtity" uri="http://www.springframework.org/security/tags" %>
<%@ page import= "com.laptrinhjavaweb.util.SecurityUtils" %>
<html>
<head>
    <title>Khách sạn</title>
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
                <li class="nav-item active"><a class="nav-link" href="<c:url value="/khachsan"/>">Khách sạn</a></li>
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


<section class="probootstrap-cover overflow-hidden relative"  style="background-image: url('<c:url value="/template/web/assets/images/bg_ks.png"/>');" data-stellar-background-ratio="0.5" id="section-home">
    <div class="overlay"></div>
    <div class="container">
        <div class="row align-items-center text-center">
            <div class="col-md">
                <h2 class="heading mb-2 display-4 font-light probootstrap-animate" style="font-family: 'Great Vibes'; ">Your Passion is our Satisfaction</h2>
                <h2 class="heading mb-2 display-4 font-light probootstrap-animate" style="font-family: 'Great Vibes'; ">Đam mê của bạn là sự hài lòng của chúng tôi</h2>
            </div>
        </div>
    </div>
</section>
<!-- END section -->

<!-- BEGIN section -->
<section class="probootstrap-section-half d-md-flex" style="padding-bottom: 5%">
    <div class="container">
        <div class="row text-center mb-5 probootstrap-animate" data-animate-effect="fadeIn" style="padding-top: 10%">
            <div class="col-md-12">
                <img src="<c:url value="/template/web/assets/images/DuocYeuThichNhat.png"/>" style="height: 100%; width: 60%; margin-left: 20%; margin-right: 20%;">
            </div>
        </div>

        <div class="container">
            <div style="width: 100%; height: 100%">
                <div class="row" >
                    <img class="probootstrap-image probootstrap-animate" data-animate-effect="fadeIn" src="<c:url value="/template/web/assets/images/${hotel1.thumbnail}"/>" style="height: 80%; width: 55%; border-radius: 10%; -webkit-box-shadow: 0 6px 10px -5px rgba(0, 0, 0, 0.1); box-shadow: 0 6px 10px -5px rgba(0, 0, 0, 0.1); height: 400px;">
                    <div class="probootstrap-inner probootstrap-animate" data-animate-effect="fadeInLeft" style="float: right; vertical-align: center; height: 80%; width: 40%; margin-top: 5%; margin-bottom: 5%; padding: 5%;-webkit-box-shadow: 0 6px 10px -5px rgba(0, 0, 0, 0.1); box-shadow: 0 6px 10px -5px rgba(0, 0, 0, 0.1); background: #D5EEFB;margin-left: 2%">
                        <h1 style="padding-top: 3%; font-family: 'Font Awesome 5 Brands';text-align: right">${hotel1.name}</h1>
                        <p style="padding-top: 2%; line-height: 1.5; color: #1e1a1a; text-align: right">${hotel1.shortDescription}</p>
                        <c:url var="detail" value="/chitietkhachsan">
                            <c:param name="id" value="${hotel1.id}" />
                        </c:url>
                        <p><a href="${detail}" class="btn btn-primary"style="float: right; background-color: #77C1D5; border-color: #77C1D5; border-radius: 50px">Xem thêm</a></p>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div style="width: 100%; height: 100%">
                <div class="row" >
                    <div class="probootstrap-inner probootstrap-animate" data-animate-effect="fadeInLeft" style="float: left; vertical-align: center; height: 80%; width: 40%; margin-top: 5%; margin-bottom: 5%; padding: 5%;-webkit-box-shadow: 0 6px 10px -5px rgba(0, 0, 0, 0.1); box-shadow: 0 6px 10px -5px rgba(0, 0, 0, 0.1); background: #D5EEFB;">
                        <h1 style="padding-top: 3%; font-family: 'Font Awesome 5 Brands';text-align: right">${hotel2.name}</h1>
                        <p style="padding-top: 2%; line-height: 1.5; color: #1e1a1a; text-align: right">${hotel2.shortDescription}</p>
                        <c:url var="detail" value="/chitietkhachsan">
                            <c:param name="id" value="${hotel2.id}" />
                        </c:url>
                        <p><a href="${detail}" class="btn btn-primary"style="float: right; background-color: #77C1D5; border-color: #77C1D5; border-radius: 50px">Xem thêm</a></p>
                    </div>
                    <img class="probootstrap-image probootstrap-animate" data-animate-effect="fadeIn" src="<c:url value="/template/web/assets/images/MiraHotel.jpg"/>" style="height: 80%; width: 55%; border-radius: 10%; -webkit-box-shadow: 0 6px 10px -5px rgba(0, 0, 0, 0.1); box-shadow: 0 6px 10px -5px rgba(0, 0, 0, 0.1); margin-left: 2%; height: 400px;">
                </div>
            </div>
        </div>
    </div>
</section>
<!-- END section -->

<!-- BEGIN section -->
<section class="probootstrap-section-half" >
    <div style="background-image: url('<c:url value="/template/web/assets/images/bg-sk.jpg"/>'); margin-top: 5%; background-size: cover; background-repeat: no-repeat; padding-bottom: 5%">
        <div style="width: 100%; height: 100%; padding-top: 5%">
            <img class="probootstrap-animate" src="<c:url value="/template/web/assets/images/DuocBinhLuanNhieuNhat.png"/>" style="height: 30%; width: 40%; border-radius: 10%; margin-left: 30%; margin-right: 30%; margin-bottom: 5%">
        </div>

        <div class="container">
            <div class="row" style="background: rgba(0, 0, 0, 50%); padding-top: 3%; padding-bottom: 3%">
                <div class="col-lg-3 p-0" style="margin-left: 10%; margin-right: 1%; -webkit-box-shadow: 0 6px 10px -5px rgba(0, 0, 0, 0.1); box-shadow: 0 6px 10px -5px rgba(0, 0, 0, 0.1);">
                    <div class="categories__text probootstrap-inner probootstrap-animate" data-animate-effect="fadeInLeft" style="height: 50%; background-color: white; padding: 2%; border-top-left-radius: 5px; border-top-right-radius: 5px">
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
                            <div class="categories__text probootstrap-inner probootstrap-animate" data-animate-effect="fadeInRight" style="height: 100%; background-color: white; padding: 2%; border-top-right-radius: 5px; border-bottom-right-radius: 5px; height: 280px">
                                <h1 style="color: #000000; text-align: center">Kadupul Hotel</h1>
                                <p>Tất cả phòng nghỉ tại đây được trang bị máy điều hòa, TV truyền hình cáp màn hình phẳng, tủ lạnh, ấm đun nước, vòi sen, dép và tủ để quần áo. Mỗi phòng đều có phòng tắm riêng, máy sấy tóc và ga trải giường.</p>
                                <a href="#">Chi tiết</a>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6 p-0" style="">
                            <div class="categories__text probootstrap-inner probootstrap-animate" data-animate-effect="fadeInRight" style="height: 100%; background-color: white; padding: 2%; border-top-left-radius: 5px; border-bottom-left-radius: 5px; height: 280px">
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
                <div class="image_1 overlay probootstrap-cover" style="background-image: url('<c:url value="/template/web/assets/images/CasaMarina.jpg"/>'); border-radius: 5px; height: 100%; width: 100%">
                    <div class="text-center" style="padding-top: 2%">
                        <h6><a href="#" style="background: rgba(0, 0, 0, 50%); display: block; color: #FFFFFF; margin-left: 10%; margin-right: 10%; padding: 2%; border-radius: 5px; text-align: center;">Casa Marina</a></h6>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="image_1 overlay probootstrap-cover" style="background-image: url('<c:url value="/template/web/assets/images/FleurDeLys.png"/>'); border-radius: 5px; height: 100%; width: 100%">
                    <div class="text-center" style="padding-top: 2%">
                        <h6><a href="#" style="background: rgba(0, 0, 0, 50%); display: block; color: #FFFFFF; margin-left: 10%; margin-right: 10%; padding: 2%; border-radius: 5px; text-align: center;">Fleur de Lys</a></h6>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="image_1 overlay probootstrap-cover" style="background-image: url('<c:url value="/template/web/assets/images/Raon.jpg"/>'); border-radius: 5px; height: 100%; width: 100%">
                    <div class="text-center" style="padding-top: 2%">
                        <h6><a href="#" style="background: rgba(0, 0, 0, 50%); display: block; color: #FFFFFF; margin-left: 10%; margin-right: 10%; padding: 2%; border-radius: 5px; text-align: center;">Raon Hotel</a></h6>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Recommend Event Section End -->

</body>
</html>
