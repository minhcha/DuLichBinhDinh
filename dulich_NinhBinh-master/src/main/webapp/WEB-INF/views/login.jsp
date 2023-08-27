<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 11/10/2022
  Time: 3:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<html>
<head>
	<title>Login</title>
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
				<li class="nav-item active"><a class="nav-link" href="<c:url value="/trang-chu"/>">Trang chủ</a></li>
				<li class="nav-item"><a class="nav-link" href="<c:url value="/diadanh"/>">Địa danh</a></li>
				<li class="nav-item"><a class="nav-link" href="<c:url value="/event"/>">Sự kiện</a></li>
				<li class="nav-item"><a class="nav-link" href="<c:url value="/dacsan"/>">Ẩm thực</a></li>
				<li class="nav-item"><a class="nav-link" href="<c:url value="/khachsan"/>">Khách sạn</a></li>
				<li class="nav-item "><a class="nav-link" href="<c:url value="/contact"/> ">Thông tin liên hệ</a></li>
			</ul>
		</div>
	</div>
</nav>
<section class="probootstrap-cover overflow-hidden relative" style="background-image: url('<c:url value="/template/web/assets/images/bg_1.jpg"/>');" data-stellar-background-ratio="0.5" id="section-home">
	<div class="overlay"></div>
	<div class="container">
		<div class="row align-items-center">
			<div class="col-md">
				<h2 class="heading mb-2 display-4 font-light probootstrap-animate">Cuộc sống là một cuộc hành trình, và đi du lịch là cách tuyệt vời để tạo ra những kỷ niệm vô giá.</h2>
				<div style="margin: 10px auto; text-align: center">
					<a href="http://localhost:8081/DuLichBinhDinh/dang-ky" role="button" class="btn btn-primary" style="margin: 10px auto">Đăng ký</a>
				</div>
			</div>
			<div class="col-md probootstrap-animate">
				<c:if test="${param.incorrectAccount != null}">
					<div class="alert alert-danger">
						Username or password incorrect
					</div>
				</c:if>
				<c:if test="${param.accessDenied != null}">
					<div class="alert alert-danger">
						you Not authorize
					</div>
				</c:if>
				<form action="j_spring_security_check" class="probootstrap-form" id="formLogin" method="post">
					<div class="form-group">
						<div class="row mb-3">
							<div class="col-md">
								<div class="form-group">
									<label for="j_username">Tên đăng nhập</label>
									<label for="j_username" style="width: 100%;">
										<input type="text" class="form-control" id="j_username" name="j_username" placeholder="User name">
									</label>
								</div>
							</div>
							<div class="col-md">
								<div class="form-group">
									<label for="j_password">Mật khẩu</label>
									<label for="j_password" style="width: 100%;">
										<input type="password" class="form-control" id="j_password" name="j_password" placeholder="Password">
									</label>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md">
								<button type="submit" class="btn btn-primary btn-block" >Đăng nhập</button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>
<!-- END section -->

<section class="probootstrap_section" id="section-feature-testimonial">
	<div class="container">
		<div class="row justify-content-center mb-5">
			<div class="col-md-12 text-center mb-5 probootstrap-animate">
				<h2 class="display-4 border-bottom probootstrap-section-heading">Sơ lược về Bình Định</h2>
				<blockquote class="">
					<p class="lead mb-4"><em>Bình Định là tỉnh thuộc vùng Duyên hải Nam Trung bộ Việt Nam, có tổng diện tích tự nhiên 6.025km2, Bắc giáp tỉnh Quảng Ngãi, Nam giáp tỉnh Phú Yên, Tây giáp tỉnh Gia Lai, Đông giáp Biển Đông, cách Thủ đô Hà Nội 1.065km, cách Thành phố Hồ Chí Minh 686km, cách Thành phố Đà Nẵng 300km, cách Cửa khẩu Quốc tế Bờ Y (tỉnh Kon Tum) qua Lào 300km. Là 1 trong 5 tỉnh của Vùng kinh tế trọng điểm Miền Trung (cùng với Thừa Thiên Huế, Đà Nẵng, Quảng Nam, Quảng Ngãi).</em></p>
					<p class="lead mb-4"><em>Nhiệt độ không khí trung bình năm: ở khu vực miền núi biến đổi 20,1 - 26,1°C; tại vùng duyên hải là 27°C. Độ ẩm tuyệt đối trung bình tháng trong năm: tại khu vực miền núi là 22,5 - 27,9% và độ ẩm tương đối 79 - 92%; tại vùng duyên hải độ ẩm tuyệt đối trung bình là 27,9% và độ ẩm tương đối 79%. Tổng lượng mưa trung bình năm là 1.751mm, cực đại là 2.658mm, cực tiểu là 1.131mm. Mùa mưa bắt đầu từ tháng 9 - 12; mùa khô kéo dài từ tháng 1 - 8.</em></p>
				</blockquote>

			</div>
		</div>

	</div>
</section>
<!-- END section -->
</body>
</html>
