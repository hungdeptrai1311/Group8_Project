<%-- 
    Document   : home
    Created on : Jun 10, 2022, 4:01:47 PM
    Author     : vuman
--%>

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
    </head>

    <body>
        <%@include file="header.jsp" %>

        <div class="top-page ">
            <div class="slide">
                <a class="banner" href="brand?brand=Converse"><img src="images/banner/Chuck-70-banner.jpg" alt="This is Chuck taylor 70s banner"></a>
                <a class="banner" href="brand?brand=Vans"><img src="images/banner/vans-banner.jpg" alt="This is Vans banner"></a>
                <a class="banner" href="brand?brand=Adidas"><img src="images/banner/adidas-banner.jpg" alt="This is Addidas banner"></a>
                <a class="banner" href="brand?brand=Nike"><img src="images/banner/nike-banner.jpeg" alt="This is Nike banner"></a>
            </div>
        </div>

        <div class="content">
            <div class="brand-logo container">
                <div class="row">
                    <div class="col-sm-2">
                        <a href="brand?brand=Converse"><img src="images/logo/converse-logo.jpg" alt="Converse-logo"></a>
                    </div>
                    <div class="col-sm-2">
                        <a href="brand?brand=Vans"><img src="images/logo/vans-logo.jpg" alt="Vans-logo"></a>
                    </div>
                    <div class="col-sm-2">
                        <a href="brand?brand=Puma"><img src="images/logo/puma-logo.jpg" alt="Puma-logo"></a>
                    </div>
                    <div class="col-sm-2">
                        <a href="brand?brand=Adidas"><img src="images/logo/adidas-logo.png" alt="Adidas-logo"></a>
                    </div>
                    <div class="col-sm-2">
                        <a href="brand?brand=Nike"><img src="images/logo/nike-logo.jpg" alt="Nike-logo"></a>
                    </div>
                    <div class="col-sm-2">
                        <a href="brand?brand=Bitis"><img src="images/logo/bitis-logo.png" alt="Bitis-logo"></a>
                    </div>
                </div>
            </div>

            <div class="small-list container">
                <div class="small-converse-list">
                    <img src="images/banner2/Converse.jpg" alt="Converse-banner">
                </div>
                <div class="small-vans-list">
                    <img src="images/banner2/Vans.jpg" alt="Vans-banner">
                </div>
                <div class="small-puma-list">
                    <img src="images/banner2/Puma.jpg" alt="Puma-banner">
                </div>
                <div class="small-adidas-list">
                    <img src="images/banner2/Adidas.jpg" alt="Adidas-banner">
                </div>
                <div class="small-nike-list">
                    <img src="images/banner2/Nike.jpg" alt="Nike-banner">
                </div>
                <div class="small-bitis-list">
                    <img src="images/banner2/Bitis.jpg" alt="Bitis-banner">
                </div>
            </div>
        </div>

        <%@include file="footer.jsp" %>          
    </body>
</html>
