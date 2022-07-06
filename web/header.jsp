<%-- 
    Document   : header
    Created on : Jun 27, 2022, 12:07:52 AM
    Author     : vuman
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<header>
    <div class="top-header">
        <div class="container">
            <div class="row">
                <div class="col-md-6"></div>
                <div class="col-md-6 col-sm-12">
                    Hotline: <a href="tel: 123456789" style="font-weight: bold">0123456789</a> | 
                    <c:if test="${sessionScope.account != null}">

                        <a href="">
                            <i class="fa-solid fa-user"></i>
                            ${name} </a>
                        |
                        <a href="logout">
                            <i class="fa-solid fa-lock"></i> Đăng xuất </a>     
                        </c:if>
                        <c:if test="${sessionScope.account == null}">
                        <a href="Register.jsp">
                            <i class="fa-solid fa-lock"></i> Đăng ký</a> 
                        | 
                        <a href="Login.jsp"><i class="fa-solid fa-user"></i>
                            Đăng
                            nhập</a>    
                        </c:if>
                </div>
            </div>
        </div>
    </div>


    <div class="mid-header">
        <div class="mid1-header container">
            <div class="row">
                <div class="col-sm-3"></div>
                <div class="col-sm-6">
                    <a href="home">
                        <img class="logo" src="images/logo.png">
                    </a>
                </div>
                <div class="col-sm-3 text-right">
                    <i class="fa-solid fa-cart-shopping"></i>
                </div>
            </div>
        </div>
        <div class="mid2-header">
            <div class="popup-box">
                <div class="popup-box__stage">
                    <div class="popup-box__item">Email hỗ trợ : linhtinh@gmail.com</div>
                    <div class="popup-box__item">Miễn phí vận chuyển toàn quốc</div>
                    <div class="popup-box__item">Đăng ký hoặc gọi 0123456789 để cập nhật chương trình khuyến mãi
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="bottom-header">
        <div class="container">
            <div class="row">
                <div class="menu">
                    <nav><a href="brand?brand=Converse">CONVERSE</a></nav>
                    <nav><a href="brand?brand=Vans">VANS</a></nav>
                    <nav><a href="brand?brand=Puma">PUMA</a></nav>
                    <nav><a href="brand?brand=Adidas">ADIDAS</a></nav>
                    <nav><a href="brand?brand=Nike">NIKE</a></nav>
                    <nav><a href="brand?brand=Bitis">BITIS</a></nav>
                    <nav><a style="color: red" href="">KHUYẾN MÃI</a></nav>
                    <nav><a href="">CỬA HÀNG</a></nav>
                </div>
                <div class="search">
                    <input name="search" class="sb-search-input" placeholder="Tìm kiếm" type="text" value="">
                    <button type="button"><i class="fa fa-search"></i></button>
                </div>
            </div>
        </div>
    </div>
</header>