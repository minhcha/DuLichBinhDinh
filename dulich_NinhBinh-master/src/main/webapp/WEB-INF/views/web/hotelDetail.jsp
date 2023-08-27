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
  <title>Khách sạn</title>
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
<section class="probootstrap-cover overflow-hidden relative" style="background-image: url('<c:url value="/template/web/assets/images/${hotel.thumbnail05}"/>');" data-stellar-background-ratio="0.5" id="section-home">
  <div class="overlay"></div>
  <div class="container">
    <div class="row align-items-center">
    </div>
  </div>

</section>
<!-- END section -->

<!-- BEGIN section -->
<section class="probootstrap_section">
  <div class="container">
    <div class="row text-center mb-5 probootstrap-animate">
      <div class="col-md-12">
        <h2 class="display-4 border-bottom probootstrap-section-heading">${hotel.name}</h2>
      </div>
    </div>
  </div>
</section>
<!-- END section -->

<!-- BEGIN section Khách sạn được yêu thích nhất -->
<section class="probootstrap-section-half d-md-flex">
  <div class="probootstrap-image order-2 probootstrap-animate" data-animate-effect="fadeIn" style="background-image: url(<c:url value="/template/web/assets/images/${hotel.thumbnail}"/>)"></div>
  <div class="probootstrap-text order-1" style="background-color: #D5EEFB; font-size: 19px">
    <div class="probootstrap-inner probootstrap-animate" data-animate-effect="fadeInLeft">
      <p style="color: #000000;">${hotel.shortDescription}</p>
    </div>
  </div>
</section>
<!-- END section -->

<!-- BEGIN section Service01 -->
<section class="probootstrap-section-half d-md-flex" id="section-about">
  <div class="probootstrap-image probootstrap-animate" data-animate-effect="fadeIn" style="background-image: url(<c:url value="/template/web/assets/images/${hotel.thumbnail02}"/>)"></div>
  <div class="probootstrap-text" style="background-color: #D5EEFB; font-size: 19px">
    <div class="probootstrap-inner probootstrap-animate" data-animate-effect="fadeInRight">
      <p style="color: #000000;">${hotel.shortDescription02}</p>
    </div>
  </div>
</section>
<!-- END section -->

<!-- BEGIN section Service02 -->
<section class="probootstrap-section-half d-md-flex">
  <div class="probootstrap-image order-2 probootstrap-animate" data-animate-effect="fadeIn" style="background-image: url(<c:url value="/template/web/assets/images/${hotel.thumbnail03}"/>)"></div>
  <div class="probootstrap-text order-1" style="background-color: #D5EEFB; font-size: 19px">
    <div class="probootstrap-inner probootstrap-animate" data-animate-effect="fadeInLeft">
      <p style="color: #000000;">${hotel.shortDescription03}</p>
    </div>
  </div>
</section>
<!-- END section -->

<!-- BEGIN section Service03 -->
<section class="probootstrap-section-half d-md-flex" style="padding-bottom: 80px;">
  <div class="probootstrap-image probootstrap-animate" data-animate-effect="fadeIn" style="background-image: url(<c:url value="/template/web/assets/images/${hotel.thumbnail04}"/>)"></div>
  <div class="probootstrap-text" style="background-color: #D5EEFB; font-size: 19px">
    <div class="probootstrap-inner probootstrap-animate" data-animate-effect="fadeInRight">
      <p style="color: #000000;">${hotel.shortDescription04}</p>
    </div>
  </div>
</section>
<!-- END section -->

<!-- BEGIN section Service03 -->
<section class="probootstrap_section">
  <securtity:authorize access="isAnonymous()">
    <a href="http://localhost:8081/DuLichBinhDinh/dang-nhap">
      <div class="" style="text-align: center; color: #00a43e; font-size: 25px">Bạn cần đăng nhập để đặt phòng</div>
    </a>
  </securtity:authorize>
  <securtity:authorize access="isAuthenticated()">
    <p style="text-align: center"><a href="<c:url value='/thanhToan'>
                            <c:param name='id' value='${hotel.id}'/>
                        </c:url>" class="btn btn-primary">Đặt phòng</a></p>
  </securtity:authorize>
</section>
<!-- END section -->

<section class="probootstrap_section" style="background-color: #D5EEFB;">
  <div class="container">
    <div class="row text-center mb-5 probootstrap-animate">
      <div class="col-md-12">
        <h1 class="display-4 border-bottom probootstrap-section-heading" style="font-family: Quicksand; text-align: center"> Gợi ý cho bạn </h1>
      </div>
    </div>
    <div class="row">
      <c:forEach var="itemRandom" items="${list}" begin="0" end="3">
        <div class="col-sm-6 col-xl-3">
          <div class="box">
            <a href="<c:url value="/chitietkhachsan?id=${itemRandom.id}"/>">
              <div class="image_1 overlay probootstrap-cover probootstrap-inner probootstrap-animate" data-animate-effect="fadeIn" style="display: block; background-image: url('<c:url value="/template/web/assets/images/${itemRandom.thumbnail}"/>'); height: 100%; width: 100%; border-radius: 5px; vertical-align: top">
                <div style="background: rgba(0, 0, 0, 50%); display: block; color: #FFFFFF; margin-left: 10%; margin-right: 10%; padding: 2%; border-radius: 5px; text-align: center;"> ${itemRandom.name} </div>
              </div>
            </a>
          </div>
        </div>
      </c:forEach>
    </div>
  </div>
</section>

<%--<section >--%>
<%--  <div class="container-fluid">--%>
<%--    <!-- Comments -->--%>
<%--    <div>--%>
<%--      <h2 class="tm-color-primary tm-post-title">Comments</h2>--%>
<%--      <for:forEach var="item" items="${comments}">--%>
<%--        <hr class="tm-hr-primary tm-mb-45">--%>
<%--        <div class="tm-comment-reply tm-mb-45">--%>
<%--          <div class="tm-comment">--%>
<%--            <figure class="tm-comment-figure">--%>
<%--              <img src="<c:url value="/template/web/assets/user_profile/images_and_videos/avata2.jpg"/>" alt="Image" class="mb-2 rounded-circle img-thumbnail" style="width: 100px;height: 100px;">--%>
<%--              <figcaption class="tm-color-primary text-center">${item.userName}</figcaption>--%>
<%--            </figure>--%>
<%--            <p>--%>
<%--                ${item.content}--%>
<%--            </p>--%>
<%--          </div>--%>
<%--          <span class="d-block text-right tm-color-primary">${item.createDate}</span>--%>
<%--        </div>--%>
<%--      </for:forEach>--%>
<%--      <securtity:authorize access="isAnonymous()">--%>
<%--        <h2 class="tm-color-primary tm-post-title mb-4">Bạn cần đăng nhập để bình luận</h2>--%>
<%--      </securtity:authorize>--%>
<%--      <securtity:authorize access="isAuthenticated()">--%>
<%--        <c:url value="/place_detail" var="post"/>--%>
<%--        <form:form action="${post}" class="mb-5" modelAttribute="comment" method="POST">--%>
<%--          <h2 class="tm-color-primary tm-post-title mb-4">Your comment</h2>--%>
<%--          <div class="mb-4">--%>
<%--            <form:textarea path="content" class="form-control"  rows="6"/>--%>
<%--          </div>--%>
<%--          <input type="hidden" id="placeid" name="placeid" value="${model.id}">--%>
<%--          <div class="text-right">--%>
<%--            <button class="tm-btn tm-btn-primary tm-btn-small">Bình luận</button>--%>
<%--          </div>--%>
<%--        </form:form>--%>
<%--      </securtity:authorize>--%>
<%--    </div>--%>
<%--  </div>--%>
<%--</section>--%>

<section class="probootstrap_section bg-light">
  <div class="container">
    <div class="row text-center mb-5 probootstrap-animate">
      <div class="col-md-12">
        <h2 class="display-4 border-bottom probootstrap-section-heading">Một số khách sạn khác</h2>
      </div>
    </div>
    <div class="row">
      <c:forEach var="item" items="${lists}" begin="0" end="1">
        <div class="col-md-6">
          <c:url value="/place_detail" var="redirect">
            <c:param name="place_id" value="${item.id}"/>
          </c:url>
          <a href="${redirect}" class="probootstrap-thumbnail">
            <div class="media probootstrap-media d-flex align-items-stretch mb-4 probootstrap-animate">
              <div class="probootstrap-media-image" style="background-image: url(<c:url value="/template/web/assets/images/${item.thumbnail}"/>)">
              </div>
              <div class="media-body">
                <h5 class="mb-3">${item.title}</h5>
                <p>${item.shortDescription}</p>
              </div>
            </div>
          </a>
        </div>
      </c:forEach>
    </div>
    <div class="row">
      <c:forEach var="item" items="${lists}" begin="2" end="3">
        <div class="col-md-6">
          <c:url value="/place_detail" var="redirect">
            <c:param name="place_id" value="${item.id}"/>
          </c:url>
          <a href="${redirect}" class="probootstrap-thumbnail">
            <div class="media probootstrap-media d-flex align-items-stretch mb-4 probootstrap-animate">
              <div class="probootstrap-media-image" style="background-image: url(<c:url value="/template/web/assets/images/${item.thumbnail}"/>)">
              </div>
              <div class="media-body">
                <h5 class="mb-3">${item.title}</h5>
                <p>${item.shortDescription}</p>
              </div>
            </div>
          </a>
        </div>
      </c:forEach>
    </div>
  </div>
</section>
</body>
</html>