<%-- 
    Document   : converse
    Created on : Jun 17, 2022, 1:46:02 PM
    Author     : vuman
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList, Model.Product"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/home.css">
        <link rel="stylesheet" href="css/product.css"/>
        <link rel="stylesheet" href="css/cart.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
                integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
                integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
                integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
        <script src="js/home.js"></script>
        <title>Giỏ hàng</title>
        <link href="images/icon.png" rel="icon">
        <script src="https://kit.fontawesome.com/72eb2ee2e2.js" crossorigin="anonymous"></script>
        <script src="js/jquery-1.11.1.min.js"></script>
        <script src="js/header.js"></script>
    </head>
    <body>
        <%@include file="header.jsp" %>

        <div class="container">
            <div class="cart">
                <div class="table">
                    <div class="head">
                        <i class="fa-solid fa-cart-shopping"></i> Giỏ hàng
                    </div>


                    <table class="table-striped mt-5 mb-5">
                        <c:if test="${cart == null}">
                            <h1 style="text-align: center">Giỏ hàng của bạn hiện đang trống</h1>
                        </c:if>

                        <c:if test="${cart != null}">
                            <thead>
                                <tr>
                                    <td class="qc-image">Hình ảnh</td>
                                    <td class="qc-name">Tên sản phẩm</td>
                                    <td class="qc-size">Size</td>
                                    <td class="qc-quantity ">Số lượng</td>
                                    <td class="qc-price">Đơn Giá</td>
                                    <td class="qc-total">Tổng cộng</td>
                                </tr>
                            </thead>

                            <tbody>				
                                <c:forEach items="${cart}" var="c">
                                    <c:forEach items="${productList}" var="p">
                                        <c:forEach items="${brandList}" var="b">
                                            <c:if test="${c.getProductId() == p.getProductId() && p.getBrandId() == b.getBrandId()}">
                                                <tr>    
                                                    <td class="qc-image">
                                                        <a href="product?productid=${c.getProductId()}&brandid=${p.getBrandId()}&brand=${b.getBrandName()}"><img src="${p.getImg()}" style="width: 90px;"/></a>
                                                    </td>

                                                    <td class="qc-name">
                                                        <a href="product?productid=${c.getProductId()}&brandid=${p.getBrandId()}&brand=${b.getBrandName()}">${p.getName()}</a>
                                                    </td>

                                                    <td class="qc-size">
                                                        ${c.getSize()}
                                                    </td>

                                                    <td class="qc-quantity ">
                                                        ${c.getQuantity()}
                                                    </td>

                                                    <td class="qc-price">
                                                        ${p.getPrice()} đ
                                                    </td>

                                                    <td class="qc-total">
                                                        ${c.getQuantity() * p.getPrice()} đ
                                                    </td>
                                                </tr>
                                            </c:if>
                                        </c:forEach>
                                    </c:forEach>
                                </c:forEach>
                            </c:if>
                    </table>
                </div>
            </div>

            <c:if test="${sessionScope.account != null}">
                <div style="margin-bottom: 50px">
                    <a href="checkout" >
                        <div>Thanh toán</div>
                    </a>
                </div>
            </c:if>
        </div>



        <%@include file="footer.jsp" %>
    </body>
</html>