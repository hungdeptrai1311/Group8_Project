<%-- 
    Document   : home
    Created on : Jun 10, 2022, 4:01:47 PM
    Author     : vuman
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>8Shoes</title>

        <!-- Font Awesome -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet"/>

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />

        <!-- MDB -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.3.0/mdb.min.css" rel="stylesheet" />

        <!-- Owl Carousel -->
        <link rel="stylesheet" href="lib/owlcarousel/assets/owl.carousel.min.css"/>
        <link rel="stylesheet" href="lib/owlcarousel/assets/owl.theme.default.min.css"/>

        <link rel="stylesheet" href="css/style.css" />
    </head>

    <body>
        <%@include file="header.jsp" %>

        <div class="container-fluid mb-5">
            <div class="owl-carousel">
                <img
                    src="https://drake.vn/image/cache/catalog/banner/banner-l%E1%BB%9Bn/Chuck-70-banner-web-home1-1500x560.jpg"
                    alt=""
                    class="img-fluid w-100"
                    />
                <img
                    src="https://drake.vn/image/cache/catalog/banner/banner-l%E1%BB%9Bn/web-converse-Keith-Haring-1500x560.jpg"
                    alt=""
                    class="img-fluid w-100"
                    />
                <img
                    src="https://drake.vn/image/cache/catalog/banner/banner-l%E1%BB%9Bn/web-vans-classic-1500x560.jpg"
                    alt=""
                    class="img-fluid w-100"
                    />
                <img
                    src="https://drake.vn/image/cache/catalog/banner/banner-l%E1%BB%9Bn/web-Palladium-Pallabrousse-Legion-1500x560.jpg"
                    alt=""
                    class="img-fluid w-100"
                    />
                <img
                    src="https://drake.vn/image/cache/catalog/banner/banner-l%E1%BB%9Bn/web-converse-classic1-1500x560.jpg"
                    alt=""
                    class="img-fluid w-100"
                    />
            </div>
        </div>

        <c:forEach items="${brands}" var="brand">
            <div class="container mb-5">
                <div class="row">
                    <img src="images/brand-banner/${brand.brandName}.jpg" class="img-fluid" alt=""/>
                </div>

                <c:set var="products" value="${productDAO.getProductsByBrand(brand.brandName)}" />

                <div class="row">
                    <c:forEach items="${products.size() < 8 ? products : products.subList(0, 8)}" var="product">
                        <div class="col-12 col-sm-6 col-md-3" data-mdb-toggle="tooltip" title="${product.name}">
                            <a href="product?productid=${product.getProductId()}">
                                <img class="img-fluid" src="${product.img}" alt=""/>

                                <p class="text-center text-truncate text-body">${product.name}</p>
                            </a>
                        </div>
                    </c:forEach>
                </div>

                <div class="d-flex justify-content-center">
                    <a href="brand?brand=converse" class="btn btn-outline-warning flex-fill">MORE</a>
                </div>
            </div>
        </c:forEach>


        <%@include file="footer.jsp" %>          
    </body>
</html>
