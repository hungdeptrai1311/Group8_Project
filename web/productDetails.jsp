<%-- 
    Document   : productDetails
    Created on : Jul 3, 2022, 12:00:54 PM
    Author     : Loki
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/home.css">
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
        <title>EightShoes</title>
        <link href="images/icon.png" rel="icon">
        <script src="https://kit.fontawesome.com/72eb2ee2e2.js" crossorigin="anonymous"></script>
        <script src="js/jquery-1.11.1.min.js"></script>
        <script src="js/header.js"></script>
        <style>
            .page-footer {
                background-color: #929FBA;
            }
        </style>
        <script>
            new WOW().init();
        </script>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <!--Main layout-->
        <main class="mt-5 pt-4">
            <div class="container dark-grey-text mt-5">

                <!--Grid row-->
                <div class="row wow fadeIn">

                    <!--Grid column-->
                    <div class="col-md-6 mb-4">

                        <img src="${requestScope.product.img}" class="img-fluid" alt="">

                    </div>
                    <!--Grid column-->

                    <!--Grid column-->
                    <div class="col-md-6 mb-4">
                        <!--Content-->
                        <div class="p-4">
                            <div class="mb-3">
                                <a href="/Group8_Project/home">
                                    <span class="badge purple mr-1"><i class="fa fa-arrow-circle-o-left"></i>Home Page</span>
                                </a>
                                <a href="">
                                    <span class="badge purple mr-1">${requestScope.product.brand.brand_name}</span>
                                </a>
                            </div>
                            <h3>${requestScope.product.name}</h3><br>
                            <p class="lead">
                                <span>${requestScope.product.price} $</span>
                            </p>
                            <p class="lead font-weight-bold">Description</p>

                            <p>${requestScope.product.descrip}</p>

                            <form class="d-flex justify-content-left">
                                <!-- Default input -->
                                <input type="number" value="1" aria-label="Search" class="form-control" style="width: 100px">
                                <button class="btn btn-primary btn-md my-0 p" type="submit">Add to cart
                                    <i class="fas fa-shopping-cart ml-1"></i>
                                </button>

                            </form>

                        </div>
                        <!--Content-->

                    </div>
                    <!--Grid column-->

                </div>
                <!--Grid row-->

                <!--                <hr>-->

                <!--                Grid row
                                <div class="row d-flex justify-content-center wow fadeIn">
                
                                    Grid column
                                    <div class="col-md-6 text-center">
                
                                        <h4 class="my-4 h4">Additional information</h4>
                
                                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus suscipit modi sapiente illo soluta odit
                                            voluptates,
                                            quibusdam officia. Neque quibusdam quas a quis porro? Molestias illo neque eum in laborum.</p>
                
                                    </div>
                                    Grid column
                
                                </div>-->
            </div>
        </main>
        <!--Main layout-->
        <%@include file="footer.jsp" %> 
    </body>
</html>
