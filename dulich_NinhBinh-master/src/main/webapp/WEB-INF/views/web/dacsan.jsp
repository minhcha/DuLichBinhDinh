<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 11/11/2022
  Time: 5:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ taglib prefix="securtity" uri="http://www.springframework.org/security/tags" %>
<%@ page import= "com.laptrinhjavaweb.util.SecurityUtils" %>
<html>
<head>
    <title>Món ăn</title>
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
                <li class="nav-item"><a class="nav-link" href="<c:url value="/trang-chu"/>">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="<c:url value="/diadanh"/>">Địa danh</a></li>
                <li class="nav-item"><a class="nav-link" href="<c:url value="/event"/>">Sự kiện</a></li>
                <li class="nav-item active"><a class="nav-link" href="<c:url value="/dacsan"/>">Ẩm thực</a></li>
                <li class="nav-item "><a class="nav-link" href="<c:url value="/khachsan"/>">Khách sạn</a></li>
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

<section class="probootstrap-cover overflow-hidden relative"  style="background-image: url('<c:url value="/template/web/assets/images/bg_1.jpg"/>');" data-stellar-background-ratio="0.5" id="section-home">
    <div class="overlay"></div>
    <div class="container">
        <div class="row align-items-center text-center">
            <div class="col-md">
                <h2 class="heading mb-2 display-4 font-light probootstrap-animate">Khám phá đặc sản</h2>

                <p class="lead mb-5 probootstrap-animate">


                </p>
                <a href="https://themewagon.com/theme_tag/free/" target="_blank" role="button" class="btn btn-primary p-3 mr-3 pl-5 pr-5 text-uppercase d-lg-inline d-md-inline d-sm-block d-block mb-3">Tìm hiểu tại đây</a>
                </p>
            </div>
        </div>
    </div>

</section>
<!-- END section -->

<section class="probootstrap_section" id="section-city-guides">
    <div class="container">
        <div class="row mb-3">
            <div class="col-md-6">

                <div class="media probootstrap-media d-flex align-items-stretch mb-4 probootstrap-animate">
                    <div class="probootstrap-media-image" style="background-image: url(<c:url value="/template/web/assets/images/img_1.jpg"/>)">
                    </div>
                    <div class="media-body">
                        <h5 class="mb-3">01. Cá kho dưa</h5>
                        <p>Sở dĩ chả cá Quy Nhơn là một trong các đặc sản Bình Định nổi tiếng vì vị ngon và lạ đặc trưng. Với nguyên liệu được tuyển chọn từ những con
                            cá biển tươi ngon nhất và công thức chế biến độc quyền của người dân đã tạo nên sự khác biệt cho chả cá Quy Nhơn.. </p>
                    </div>
                </div>

                <div class="media probootstrap-media d-flex align-items-stretch mb-4 probootstrap-animate">
                    <div class="probootstrap-media-image" style="background-image: url(<c:url value="/template/web/assets/images/img_2.jpg"/>)">
                    </div>
                    <div class="media-body">
                        <h5 class="mb-3">02. Gỏi cá Chình</h5>
                        <p>Cá chình Bình Định có thân hình nhỏ, dài và thịt đặc biệt ngọt.
                            Những lát cá tươi ngọt trộn với rau sống kèm vị chua chua ngọt ngọt, khi ăn bạn nên cẩn thận, kẻo bị nghiện đấy </p>
                    </div>
                </div>

            </div>
            <div class="col-md-6">

                <div class="media probootstrap-media d-flex align-items-stretch mb-4 probootstrap-animate">
                    <div class="probootstrap-media-image" style="background-image: url(<c:url value="/template/web/assets/images/img_4.jpg"/>)">
                    </div>
                    <div class="media-body">
                        <h5 class="mb-3">03. Nem chợ huyện</h5>
                        <p>Nem chua là một trong các đặc sản Bình Định được chế biến cầu kỳ và công phu.
                            Với công thức hương vị đặc biệt để ướp những miếng thịt heo tươi ngon nhất </p>
                    </div>
                </div>

                <div class="media probootstrap-media d-flex align-items-stretch mb-4 probootstrap-animate">
                    <div class="probootstrap-media-image" style="background-image: url(<c:url value="/template/web/assets/images/img_5.jpg"/>)">
                    </div>
                    <div class="media-body">
                        <h5 class="mb-3">04. Bánh ít lá gai</h5>
                        <p>Sau một quá trình xay bột, làm nhân, gói và hấp bánh, những chiếc bánh ít lá gai thơm ngon,
                            dẻo dai với vị ngọt của nhân đậu xanh hoặc nhân dừa đã được ra lò. </p>
                    </div>
                </div>

            </div>
        </div>



    </div>
</section>

<!-- END section -->


<section class="probootstrap_section">
    <div class="container">
        <div class="row text-center mb-5 probootstrap-animate">
            <div class="col-md-12">
                <h2 class="display-4 border-bottom probootstrap-section-heading">Những món được yêu thích nhất</h2>
            </div>
        </div>

        <div class="row probootstrap-animate">
            <div class="col-md-12">
                <div class="owl-carousel js-owl-carousel">
                    <a class="probootstrap-slide" href="#">
                        <span class="flaticon-teatro-de-la-caridad"></span>
                        <em>Cá chình</em>
                    </a>
                    <a class="probootstrap-slide" href="#">
                        <span class="flaticon-royal-museum-of-the-armed-forces"></span>
                        <em>Bánh gai ít</em>
                    </a>
                    <a class="probootstrap-slide" href="#">
                        <span class="flaticon-parthenon"></span>
                        <em>Kẹo</em>
                    </a>
                    <a class="probootstrap-slide" href="#">
                        <span class="flaticon-marina-bay-sands"></span>
                        <em>Marina Bay Sands</em>
                    </a>
                    <a class="probootstrap-slide" href="#">
                        <span class="flaticon-samarra-minaret"></span>
                        <em>Samarra Minaret</em>
                    </a>
                    <a class="probootstrap-slide" href="#">
                        <span class="flaticon-chiang-kai-shek-memorial"></span>
                        <em>Chiang Kai Shek Memorial</em>
                    </a>
                    <a class="probootstrap-slide" href="#">
                        <span class="flaticon-heuvelse-kerk-tilburg"></span>
                        <em>Heuvelse Kerk Tilburg</em>
                    </a>
                    <a class="probootstrap-slide" href="#">
                        <span class="flaticon-cathedral-of-cordoba"></span>
                        <em>Cathedral of Cordoba</em>
                    </a>
                    <a class="probootstrap-slide" href="#">
                        <span class="flaticon-london-bridge"></span>
                        <em>London Bridge</em>
                    </a>
                    <a class="probootstrap-slide" href="#">
                        <span class="flaticon-taj-mahal"></span>
                        <em>Taj Mahal</em>
                    </a>
                    <a class="probootstrap-slide" href="#">
                        <span class="flaticon-leaning-tower-of-pisa"></span>
                        <em>Leaning Tower of Pisa</em>
                    </a>
                    <a class="probootstrap-slide" href="#">
                        <span class="flaticon-burj-al-arab"></span>
                        <em>Burj al Arab</em>
                    </a>
                    <a class="probootstrap-slide" href="#">
                        <span class="flaticon-gate-of-india"></span>
                        <em>Gate of India</em>
                    </a>
                    <a class="probootstrap-slide" href="#">
                        <span class="flaticon-osaka-castle"></span>
                        <em>Osaka Castle</em>
                    </a>
                    <a class="probootstrap-slide" href="#">
                        <span class="flaticon-statue-of-liberty"></span>
                        <em>Statue of Liberty</em>
                    </a>

                </div>
            </div>
        </div>
    </div>
</section>

</body>
</html>
