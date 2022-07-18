<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
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
            #blur{
                opacity: 0.8;
                filter: alpha(opacity=5);
            }
        </style>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="container">
                <div class="row">

                    <div class="col-sm-3">
                        <div class="card bg-light mb-3">
                            <div class="card-header bg-primary text-white text-uppercase"><i class="fa fa-list"></i>Filter Search</div>
                            <ul class="list-group category_block">
                                <form action="search" method="post">
                                    <h5>Name:</h5><br>
                                    <li class="list-group-item">
                                        <input type="text" name="name" style="width:205px;">
                                    </li>
                                    <br>
                                    <h5>Brands:</h5><br>
                                <c:forEach items="${requestScope.brands}" var="b">
                                    <li class="list-group-item">
                                        <input type="checkbox" name="brand"  style="margin-right: 10px" value="${b.brand_id}">${b.brand_name}<br>
                                    </li>
                                </c:forEach>
                                <h5>Price:</h5><br>
                                <li class="list-group-item">
                                    <table>
                                        <tr>
                                            <td>From</td>
                                            <td><input type="text" name="from" style="width:150px;"></td>
                                        </tr>
                                        <tr>
                                            <td>To</td>
                                            <td><input type="text" name="to" style="width:150px;"></td>
                                        </tr>
                                    </table>
                                </li>
                                <li class="list-group-item">
                                    <input type="submit" value="Apply" style="width:205px;text-align: center">
                                </li>
                            </form>
                        </ul>
                    </div>
                </div>

                <div class="col-sm-9">
                    <div id="content" class="row">
                        <c:forEach items="${requestScope.products}" var="o">
                            <div class="product col-12 col-md-6 col-lg-4">
                                <div class="card">
                                    <img class="card-img-top" src="${o.img}" alt="Card image cap" style="width:253px;height:253px;" 
                                         <c:if test="${o.quantity <= 0}">
                                             id="blur"
                                         </c:if> >
                                    <div class="card-body">
                                        <h4 class="card-title show_txt"><a href="details?pid=${o.productId}" title="View Product">${o.name}</a></h4>
                                        <p class="card-text show_txt">${o.descrip}</p>
                                        <div class="row">
                                            <div class="col">
                                                <p class="btn btn-danger btn-block">${o.price} $</p>
                                            </div>
                                            <div class="col">
                                                <a href="#" class="btn btn-success btn-block">Add to cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                    <br>    
                    <button onclick="loadMore()" class="btn btn-primary">Load more</button>
                </div>

            </div>
        </div>

        <jsp:include page="footer.jsp"></jsp:include>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script>
                        function loadMore() {
                            var amount = document.getElementsByClassName("product").length;
                            $.ajax({
                                url: "/Project_banhang/load",
                                type: "get", //send it through get method
                                data: {
                                    exits: amount
                                },
                                success: function (data) {
                                    var row = document.getElementById("content");
                                    row.innerHTML += data;
                                },
                                error: function (xhr) {
                                    //Do Something to handle error
                                }
                            });
                        }
                        function searchByName(param) {
                            var txtSearch = param.value;
                            $.ajax({
                                url: "/Project_banhang/searchAjax",
                                type: "get", //send it through get method
                                data: {
                                    txt: txtSearch
                                },
                                success: function (data) {
                                    var row = document.getElementById("content");
                                    row.innerHTML = data;
                                },
                                error: function (xhr) {
                                    //Do Something to handle error
                                }
                            });
                        }
        </script>  
    </body>
</html>

