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
    <title>Chi tiết</title>
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
            <li class="nav-item "><a class="nav-link" href="<c:url value="/trang-chu"/> ">Đăng ký</a></li>
        </securtity:authorize>

        <securtity:authorize access="isAuthenticated()">
            <li class="nav-item "><a class="nav-link" href="<c:url value="/trang-chu"/> ">Welcome <%=SecurityUtils.getPrincipal().getFullName()%></a></li>
            <li class="nav-item "><a class="nav-link" href="<c:url value="/thoat"/> ">Đăng xuất</a></li>
        </securtity:authorize>
    </ul>

</nav>

<section class="probootstrap-cover overflow-hidden relative"  style="background-image: url('<c:url value="/template/web/assets/images/BinhDinh05.jpg"/>');" data-stellar-background-ratio="0.5" id="section-home">
    <div class="overlay"></div>
    <div class="container">
        <div class="row align-items-center text-center">
            <div class="col-md">
                <h2 class="heading mb-2 display-4 font-light probootstrap-animate" style="font-family: 'Great Vibes'; ">Hãy chỉ nhớ những kỷ niệm</h2>
                <h2 class="heading mb-2 display-4 font-light probootstrap-animate" style="font-family: 'Great Vibes'; ">và để lại những dấu chân.</h2>
                <div style="margin-right: 10%; margin-left: 10%; width: 80%; margin-top: 3%">
                    <form action="<c:url value="/search" />" class="navbar-form navbar-left web-sh" method="get">
                        <div class="form probootstrap-inner probootstrap-animate" data-animate-effect="fadeInLeft">
                            <input type="text" name="keyword" class="form-control" placeholder="Tìm kiếm sự kiện ...">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- END section -->

<!-- BEGIN section top 5 place  -->
<section style="padding-top: 5%; padding-bottom: 5%">
    <div class="container" style="margin-top: 5%">
        <h1 class="display-4 border-bottom probootstrap-section-heading" style="font-family: Quicksand; text-align: center">${model.title}</h1>
        <div style="width: 100%; height: 100%">
            <div class="row" >
                <div class="probootstrap-inner probootstrap-animate" data-animate-effect="fadeInRight" style="background: rgba(255, 255, 255, 85%); margin-right: -20%; vertical-align: center; height: 80%; width: 50%; margin-top: 5%; margin-bottom: 5%; padding: 5%; z-index: 1; -webkit-box-shadow: 0 6px 10px -5px rgba(0, 0, 0, 0.1); box-shadow: 0 6px 10px -5px rgba(0, 0, 0, 0.1);">
                    <p style="padding-top: 2%; line-height: 1.5; color: #1e1a1a">${model.shortDescription}</p>
                    <p>Lượt yêu thích: ${like}</p>
                    <p>Lượt bình luận: ${cout_comment}</p>
                    <securtity:authorize access="isAnonymous()">
                        <p><a href="<c:url value="/dang-nhap"/>" class="btn btn-primary"style="float: left; background-color: #77C1D5; border-color: #77C1D5; border-radius: 50px"> Đăng nhập để ♥ </a></p>
                    </securtity:authorize>
                    <securtity:authorize access="isAuthenticated()">
                        <c:url value="/place_detail" var="redirect">
                            <c:param name="place_id" value="${model.id}"/>
                            <c:param name="yeu_thich" value="like"/>
                        </c:url>
                        <c:if test="${check_like == 1}">
                            <p><a href="${redirect}" class="btn btn-primary"> ♥ Bỏ yêu thích</a></p>
                        </c:if>
                        <c:if test="${check_like == 0}">
                            <p><a href="${redirect}" class="btn btn-primary"> ♥ Yêu thích</a></p>
                        </c:if>
                    </securtity:authorize>
                </div>
                <img class="probootstrap-image probootstrap-animate" data-animate-effect="fadeIn" src="<c:url value="/template/web/assets/images/${model.thumbnail}"/>" style="height: 80%; width: 70%; border-radius: 10%; float: right;">
            </div>
        </div>
    </div>
</section>
<!-- END section -->

<section class="probootstrap_section" id="section-feature-testimonial" style="background-color: #D5EEFB;">
    <div class="container">
        <h1 class="display-4 border-bottom probootstrap-section-heading" style="font-family: Quicksand; text-align: center">Mô tả</h1>
        <div class="row justify-content-center mb-5">
            <div class="col-md-12 text-center mb-5 probootstrap-animate">

                <blockquote class="normal">

                    <div class="row" style="padding-top: 3%">
                        <img class="col-lg-6" src="<c:url value="/template/web/assets/images/${model.video}"/>" style="border-bottom-left-radius: 25%; border-top-right-radius: 25%">
                        <div class="col-lg-6" style="float: right; font-size: 19px; margin-right: auto">${model.content}</div>
                    </div>
                </blockquote>
            </div>
        </div>
    </div>
</section>
<!-- END section -->

<section class="probootstrap_section">
    <div class="container-fluid">
        <!-- Comments -->
        <div>
            <h1 class="display-4 border-bottom probootstrap-section-heading" style="font-family: Quicksand; text-align: center"> Bình luận </h1>
            <for:forEach var="item" items="${comments}">
            <hr class="tm-hr-primary tm-mb-45">
            <div class="tm-comment-reply tm-mb-45">
                <div class="tm-comment">
                    <figure class="tm-comment-figure">
                        <img src="<c:url value="/template/web/assets/user_profile/images_and_videos/avata2.jpg"/>" alt="Image" class="mb-2 rounded-circle img-thumbnail" style="width: 100px;height: 100px;">
                        <figcaption class="tm-color-primary text-center">${item.userName}</figcaption>
                    </figure>
                    <p style="font-family: Montserrat">
                        ${item.content}
                    </p>
                </div>
                <span class="d-block text-right tm-color-primary">${item.createDate}</span>
            </div>
            </for:forEach>
            <securtity:authorize access="isAnonymous()">
                <p style="text-align: center"><a href="<c:url value="/dang-nhap"/>" class="btn btn-primary"style=" background-color: #77C1D5; border-color: #77C1D5; border-radius: 50px"> Đăng nhập để bình luận </a></p>
            </securtity:authorize>
            <securtity:authorize access="isAuthenticated()">
                <c:url value="/place_detail" var="post"/>
            <form:form action="${post}" class="mb-5" modelAttribute="comment" method="POST">
                <h2 class="tm-color-primary tm-post-title mb-4">Your comment</h2>
                <div class="mb-4">
                    <form:textarea path="content" class="form-control"  rows="6"/>
                </div>
                <input type="hidden" id="placeid" name="placeid" value="${model.id}">
                <div class="text-right">
                    <button class="tm-btn tm-btn-primary tm-btn-small">Bình luận</button>
                </div>
            </form:form>
            </securtity:authorize>
        </div>
    </div>
</section>

<section class="probootstrap_section" style="background-color: #D5EEFB;">
    <div class="container">
        <div class="row text-center mb-5 probootstrap-animate">
            <div class="col-md-12">
                <h1 class="display-4 border-bottom probootstrap-section-heading" style="font-family: Quicksand; text-align: center"> Gợi ý cho bạn </h1>
            </div>
        </div>
        <div class="row">
            <c:forEach var="itemRandom" items="${lists}" begin="0" end="3">
                <div class="col-sm-6 col-xl-3">
                    <div class="box">
                        <a href="<c:url value="/place_detail?place_id=${itemRandom.id}"/>">
                            <div class="image_1 overlay probootstrap-cover probootstrap-inner probootstrap-animate" data-animate-effect="fadeIn" style="display: block; background-image: url('<c:url value="/template/web/assets/images/${itemRandom.thumbnail}"/>'); height: 100%; width: 100%; border-radius: 5px; vertical-align: top">
                                <div style="background: rgba(0, 0, 0, 50%); display: block; color: #FFFFFF; margin-left: 10%; margin-right: 10%; padding: 2%; border-radius: 5px; text-align: center;"> ${itemRandom.title} </div>
                            </div>
                        </a>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</section>
</body>
</html>