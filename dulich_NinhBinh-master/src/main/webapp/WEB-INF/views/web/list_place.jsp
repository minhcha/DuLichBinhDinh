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
    <title>Trang cá nhân</title>
</head>
<body>
    <link href="<c:url value="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"/> " rel="stylesheet">
    <div class="container mb-4" style="padding-top: 20px">
        <div class="row">
            <div class="col-lg-4 pb-5">
                <!-- Account Sidebar-->
                <div class="author-card pb-3">
                    <div class="author-card-cover" style="background-image: url(https://bootdey.com/img/Content/flores-amarillas-wallpaper.jpeg);"><a class="btn btn-style-1 btn-white btn-sm" href="#" data-toggle="tooltip" title="" data-original-title="You currently have 290 Reward points to spend"><i class="fa fa-award text-md"></i>&nbsp;290 points</a></div>
                    <div class="author-card-profile">
                        <div class="author-card-avatar"><img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="Daniel Adams">
                        </div>
                        <div class="author-card-details">
                            <h5 class="author-card-name text-lg">Daniel Adams</h5><span class="author-card-position">Joined February 06, 2017</span>
                        </div>
                    </div>
                </div>
                <div class="wizard">
                    <nav class="list-group list-group-flush">
                        <a class="list-group-item active" href="#">
                            <div class="d-flex justify-content-between align-items-center">
                                <div><i class="fa fa-shopping-bag mr-1 text-muted"></i>
                                    <div class="d-inline-block font-weight-medium text-uppercase">Orders List</div>
                                </div><span class="badge badge-secondary">6</span>
                            </div>
                        </a><a class="list-group-item" href="https://www.bootdey.com/snippets/view/bs4-profile-settings-page" target="__blank">
                        <i class="fa fa-user text-muted"></i>Profile Settings</a><a class="list-group-item" href="#"><i class="fa fa-map-marker text-muted"></i>Addresses</a>
                        <a class="list-group-item" href="#">
                            <div class="d-flex justify-content-between align-items-center">
                                <div><i class="fa fa-heart mr-1 text-muted"></i>
                                    <div class="d-inline-block font-weight-medium text-uppercase">My Wishlist</div>
                                </div><span class="badge badge-secondary">3</span>
                            </div>
                        </a>
                        <a class="list-group-item" href="https://www.bootdey.com/snippets/view/bs4-account-tickets" target="__blank">
                            <div class="d-flex justify-content-between align-items-center">
                                <div><i class="fa fa-tag mr-1 text-muted"></i>
                                    <div class="d-inline-block font-weight-medium text-uppercase">My Tickets</div>
                                </div><span class="badge badge-secondary">4</span>
                            </div>
                        </a>
                    </nav>
                </div>
            </div>
            <!-- Wishlist-->
            <div class="col-lg-8 pb-5">
                <!-- Item-->
                <div class="cart-item d-md-flex justify-content-between"><span class="remove-item"><i class="fa fa-times"></i></span>
                    <div class="px-3 my-3">
                        <a class="cart-item-product" href="#">
                            <div class="cart-item-product-thumb"><img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="Product"></div>
                            <div class="cart-item-product-info">
                                <h4 class="cart-item-product-title">Canon EOS M50 Mirrorless Camera</h4>
                                <div class="text-lg text-body font-weight-medium pb-1">$910.00</div><span>Availability: <span class="text-success font-weight-medium">In Stock</span></span>
                            </div>
                        </a>
                    </div>
                </div>
                <!-- Item-->
                <div class="cart-item d-md-flex justify-content-between"><span class="remove-item"><i class="fa fa-times"></i></span>
                    <div class="px-3 my-3">
                        <a class="cart-item-product" href="#">
                            <div class="cart-item-product-thumb"><img src="https://bootdey.com/img/Content/avatar/avatar2.png" alt="Product"></div>
                            <div class="cart-item-product-info">
                                <h4 class="cart-item-product-title">Apple iPhone X 256 GB Space Gray</h4>
                                <div class="text-lg text-body font-weight-medium pb-1">$1,450.00</div><span>Availability: <span class="text-warning font-weight-medium">2 - 3 Weeks</span></span>
                            </div>
                        </a>
                    </div>
                </div>
                <!-- Item-->
                <div class="cart-item d-md-flex justify-content-between"><span class="remove-item"><i class="fa fa-times"></i></span>
                    <div class="px-3 my-3">
                        <a class="cart-item-product" href="#">
                            <div class="cart-item-product-thumb"><img src="https://bootdey.com/img/Content/avatar/avatar3.png" alt="Product"></div>
                            <div class="cart-item-product-info">
                                <h4 class="cart-item-product-title">HP LaserJet Pro Laser Printer</h4>
                                <div class="text-lg text-body font-weight-medium pb-1">$188.50</div><span>Availability: <span class="text-success font-weight-medium">In Stock</span></span>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="custom-control custom-checkbox">
                    <input class="custom-control-input" type="checkbox" checked="" id="inform-me">
                    <label class="custom-control-label" for="inform-me">Inform me when item from my wishlist is available</label>
                </div>
            </div>
        </div>
    </div>


</body>
</html>
