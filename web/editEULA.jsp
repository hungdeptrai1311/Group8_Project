<%-- 
    Document   : editEULA
    Created on : Jul 2, 2022, 11:36:40 PM
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
            .csw-btn-button {
                cursor: pointer;
                font-size: 16px;
                padding: 10px 35px;
                color: #ffffff !important;
                border-radius: 5px;
                background: #9B6A1D;
                border: 1px solid #9B6A1D;
                transition: 0.4s;
            }
            .csw-btn-button:hover {
                background: #292929;
            }

            body{
                margin-top:20px;
            }
            .avatar{
                width:200px;
                height:200px;
            }
        </style>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="container bootstrap snippets bootdey">
            <h1 class="text-primary">Edit EULA</h1>
            <hr>
            <div class="row">
                <!-- left column -->
                <div class="col-md-3">
                    <div class="text-center">
                    </div>
                </div>

                <!-- edit form column -->
                <div class="col-md-9 personal-info">
                    <c:if test="${not empty alert}">
                       <div class="alert alert-info alert-dismissable">
                        <a class="panel-close close" data-dismiss="alert">×</a> 
                        <i class="fa fa-coffee"></i>
                        ${alert}
                    </div> 
                    </c:if>
                    <h3>EULA info</h3>

                    <form class="form-horizontal" role="form" action="editEULA" method="post">
                        <c:forEach items="${eulas}" var="e">
                            <div class="form-group">
                                <label class="col-lg-3 control-label"><h6>Điều khoản ${e.eula_id}</h6></label>
                                <div class="col-lg-8">
                                    <input type="hidden" name="eula_id_${e.eula_id}" value="${e.eula_id}">
                                    <input name="eula_content_${e.eula_id}" class="form-control" type="text" value="${e.eula_content}">
                                </div>
                            </div>  
                        </c:forEach>
                        <div class="form-group">
                        <div class="col-lg-8">
                        <button class="csw-btn-button" type="submit">Save</button>
                        </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <hr>
        <%@include file="footer.jsp" %>
    </body>
</html>
