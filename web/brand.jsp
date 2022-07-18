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
        <title><%= request.getParameter("brand") %></title>
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
                
                <img src="images/banner2/<%= request.getParameter("brand") %>.jpg">
                
                <div class="sort">
                    <div class="row">
                        <div class="col-sm-10"></div>
                        <div class="col-sm-2">
                            <select>
                                <option>Sắp xếp: Mặc định</option>
                                <option>Sắp xếp: Tên (A - Z)</option>
                                <option>Sắp xếp: Tên (Z - A)</option>
                                <option>Sắp xếp: Giá (Thấp > Cao)</option>
                                <option>Sắp xếp: Giá (Cao > Thấp)</option>
                                <option>Sắp xếp: Đánh giá (Cao nhất)</option>
                                <option>Sắp xếp: Đánh giá (Thấp nhất)</option>
                                <option>Sắp xếp: Kiểu (A - Z)</option>
                                <option>Sắp xếp: Kiểu (Z - A)</option>
                            </select>
                        </div>
                    </div>
                </div>
                
                <div class="item">
                    <div class="row">
                        <c:forEach items="${list}" var="x">
                            <div class="col-sm-3">
                                <a href="ProductController?productid=${x.getProductId()}&brandid=${x.getBrandId()}&brand=<%= request.getParameter("brand") %>"><img class="img-responsive img-fluid" src="${x.getImg()}"/></a><br>
                                <p style="text-align: center; text-transform: uppercase; font-size: 15px">${x.getName()}</p>
                                <p style="text-align: center; font-size: 14px">Price: <span style="font-size: 20px">${x.getPrice()} đ</span></p>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
        
        <%@include file="footer.jsp" %>
    </body>
</html>
