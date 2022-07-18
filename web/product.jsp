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
        <title>${product.getName()}</title>
        <link href="images/icon.png" rel="icon">
        <script src="https://kit.fontawesome.com/72eb2ee2e2.js" crossorigin="anonymous"></script>
        <script src="js/jquery-1.11.1.min.js"></script>
        <script src="js/header.js"></script>
    </head>
    <body>
        <%@include file="header.jsp" %>

        <div class="store">
            <div class="container">
                <br>
                <a href="home">Trang chủ</a>
                >
                <a href="brand?brand=<%= request.getParameter("brand") %>">All <%= request.getParameter("brand") %></a>
                >
                <a href="product?productid=${product.getProductId()}&brandid=${product.getBrandId()}&brand=<%= request.getParameter("brand") %>">${product.getName()}</a>

                <div class="item">
                    <div class="row">
                        <div class="col-sm-4">
                            <img class="img-responsive img-fluid" src="${product.getImg()}"/>
                        </div>
                        <div class="col-sm-8">
                            <p style="font-size: 26px; font-weight: bold">${product.getName()}</p>
                            <div class="row detail">
                                <div class="col-sm-4 descript" style="font-size: 12.98px">
                                    ${product.getDescrip()}
                                </div>
                                <div class="col-sm-8">
                                    <p><span>Price: </span><span style="color: red; font-size: 32px; font-weight: 500">${product.getPrice2()} đ</span></p>
                                    <p style="font-size: 11px; font-weight: bold">MIỄN PHÍ VẬN CHUYỂN TOÀN QUỐC VÀ TẶNG VỚ CHÍNH HÃNG KHI ĐẶT HÀNG ONLINE  </p>
                                </div>
                            </div>

                            <form action="checkout" method="post" onsubmit="return notAllowToOrder()">
                                <div class="choose_size">
                                    <input type="hidden" name="productId" value="${product.getProductId()}">
                                    <select name="size" id="size"" onchange="sizeChanged()">
                                        <option>
                                            Vui lòng chọn size
                                        </option>
                                        <c:forEach  items="${size}" var="s">
                                            <c:if test="${s.getQuantity() > 0}">
                                                <option value="${s.getSize()}">
                                                    ${s.getSize()}
                                                </option>
                                            </c:if>
                                        </c:forEach>
                                    </select><br>
                                    <div id="alert_choose_size">
                                        Vui lòng chọn size trước khi đặt hàng
                                    </div>
                                </div>

                                <div class="choose_quantity">
                                    <span style="font-weight: bold">Số lượng:</span>
                                    <input class="minus is-form" type="button" value="-" onclick="decrease()">
                                    <input class="input-qty" name="quantity" type="text" value="1" oninput="checkQuantity()">
                                    <input class="plus is-form" type="button" value="+" onclick="increase()">
                                </div>

                                <input type="submit" value="Đặt hàng" id="order" onclick="notAllowToOrder()">
                            </form>

                            <div id="alert_login">
                                Vui lòng đăng nhập trước khi đặt hàng
                            </div>

                            <div id="alert_cart_quantity">
                                Số hàng của quý khách vượt quá số hàng trong kho
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%@include file="footer.jsp" %>

        <script>
            var x = document.getElementsByClassName("input-qty")[0];
            var please = document.getElementById("alert_choose_size");
            please.style.display = 'none';
            var login = document.getElementById("alert_login");
            login.style.display = 'none';
            var cart = document.getElementById("alert_cart_quantity");
            cart.style.display = 'none';

            function sizeChanged() {
                x.value = 1;
            }

            function decrease() {
                if (x.value <= 1) {
                    x.value = 1;
                    return;
                }
                x.value--;
            }
            ;

            function increase() {
                var value = document.getElementById("size").value;
            <c:forEach items="${size}" var="s">
                if (value == '${s.getSize()}') {
                    if (x.value >= ${s.getQuantity()}) {
                        x.value = ${s.getQuantity()};
                        return;
                    }
                }
            </c:forEach>
                x.value++;
            }
            ;

            function notAllowToOrder() {
                var value = document.getElementById("size").value;

                if (value == 'Vui lòng chọn size') {
                    please.style.display = 'inline-block';
                    return false;
                }

            <c:if test="${sessionScope.account == null}">
                login.style.display = 'inline-block';
                return false;
            </c:if>

            <c:if test="${sessionScope.account != null}">
                <c:forEach items="${size}" var="s">
                if (value == '${s.getSize()}') {
                    <c:forEach items="${cart}" var="cart">
                    if (value == '${cart.getSize()}' && <%= request.getParameter("productid")%> == ${cart.getProductId()}) {
                        if (x.value > (${s.getQuantity()} - ${cart.getQuantity()})) {
                            cart.style.display = 'block';
                            return false;
                        }
                    }
                    </c:forEach>
                }
                </c:forEach>
            </c:if>


                return;
            }
            ;

            function checkQuantity() {
                var value = document.getElementById("size").value;
            <c:forEach items="${size}" var="s">
                if (value == '${s.getSize()}') {
                    if (x.value > ${s.getQuantity()}) {
                        x.value = ${s.getQuantity()};
                        return;
                    }
                    if (x.value < 1) {
                        x.value = 1;
                    }
                }
            </c:forEach>
            }
            ;


        </script>

    </body>
</html>
