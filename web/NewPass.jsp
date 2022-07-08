<%-- 
    Document   : Login
    Created on : Jul 4, 2022, 9:05:36 AM
    Author     : baqua
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        <title>Đăng Ký</title>
        <link href="images/icon.png" rel="icon">
        <script src="https://kit.fontawesome.com/72eb2ee2e2.js" crossorigin="anonymous"></script>
        <script src="js/jquery-1.11.1.min.js"></script>
        <script src="js/header.js"></script>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

        <meta http-equiv="X-UA-Compatible" content="ie=edge">

        <link href="https://fonts.googleapis.com/css?family=Karla:400,700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.materialdesignicons.com/4.8.95/css/materialdesignicons.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/login.css">
    </head>
    <body>
        <%@include file="header.jsp" %>

        <main class="d-flex align-items-center min-vh-100 py-3 py-md-0">
            <div class="container">
                <div class="card login-card">
                    <div class="row no-gutters">
                        <div class="col-md-5">
                            <img src="images/anh1.jpg"  alt="login" class="login-card-img" >
                        </div>
                        <div class="col-md-7">
                            <div class="card-body">
                                <div class="brand-wrapper">
                                    <img src="images/logo.png" alt="logo" class="logo" style="width: auto">
                                </div>
                                <p class="login-card-description">Nhập mật khẩu mới! </p>

                                <form action="newpass" method="post">
                                    
                                    <div class="text-success" style="margin-bottom: 20px; font-size: 20px ;font-weight: 20px">${result}</div>
                                    
                                    
                                    <div class="form-group">
                                        <label for="pass" >New Password</label>
                                        <input type="text" name="pass" id="authcode" class="form-control" placeholder="NewPassword">
                                    </div>
                                    
                                    

                                    <input name="verify" id="verify" class="btn btn-block login-btn mb-4" type="submit" value="Xác Nhận">
                                </form>

                                <a href="#!" class="forgot-password-link">Quên mật khẩu?</a>
                                <p class="login-card-footer-text">Bạn đã có tài khoản? <a href="Login.jsp" class="text-reset">Đăng nhập đây</a></p>
                                <nav class="login-card-footer-nav">
                                    <a href="#!">Điều khoản sử dụng</a>
                                    <br>
                                    <a href="#!">Chính sách bảo mật</a>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>


          <%@include file="footer.jsp" %>  
    </body>
</html>






