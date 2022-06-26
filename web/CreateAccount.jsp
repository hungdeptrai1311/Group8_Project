<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="viewport" content="width=1,initial-scale=1,user-scalable=1" />
        <meta name="viewport" content="width=1,initial-scale=1,user-scalable=1" />
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
        <title>Đăng ký tài khoản</title>
        <link href="images/icon.png" rel="icon">
        <script src="https://kit.fontawesome.com/72eb2ee2e2.js" crossorigin="anonymous"></script>
        <script src="js/jquery-1.11.1.min.js"></script>
        <script src="js/header.js"></script>


        <link rel="stylesheet" type="text/css" href="assets/bootstrap/css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="assets/css/styles.css" />


    </head>
    <body>
        <%@include file="header.jsp" %>

        <section class="container">
            <section class="login-form">
                <form method="post" action="CreateController" role="login">
                    <h2>Đăng ký tài khoản</h2>

                    <p>Đã có tài khoản?   &emsp;<a href="Login.jsp" >Đăng nhập</a></p>
                    <p>${result}</p>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon"><span class="text-primary glyphicon glyphicon-envelope"></span></div>
                            <input type="text" name="account"  value="${account}" placeholder="Tài khoản"   required class="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon"><span class="text-primary glyphicon glyphicon-calendar"></span></div>
                            <input type="text" name="dob"  placeholder="Ngày sinh"   required class="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon"><span class="text-primary glyphicon glyphicon-user"></span></div>
                            <input type="text" name="name"  placeholder="Tên"   required class="form-control" />
                        </div>
                    </div>
                    <!--                    <div class="form-group">
                                            <div class="input-group">
                                                <div class="input-group-addon"><span class="text-primary glyphicon glyphicon-earphone"></span></div>
                                                <input type="text" name="phone"  placeholder="Số điện thoại"   required class="form-control" />
                                            </div>
                                        </div>-->
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon"><span class="text-primary glyphicon glyphicon-map-marker"></span></div>
                            <input type="text" name="address"  placeholder="Địa chỉ"   required class="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon"><span class="text-primary glyphicon glyphicon-user"></span></div>
                            <input type="text" name="gender"  placeholder="Giới tính"   required class="form-control" />
                        </div>
                    </div>    

                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon"><span class="text-primary glyphicon glyphicon-lock"></span></div>
                            <input type="text" name="pass" value="${pass}" placeholder="Mật khẩu"  required class="form-control" />
                        </div>
                    </div>
                    <!--                    <div class="form-group">
                                            <div class="input-group">
                                                <div class="input-group-addon"><span class="text-primary glyphicon glyphicon-lock"></span></div>
                                                <input type="text" name="pass"  placeholder="Nhập lại"  required class="form-control" />
                                            </div>
                                        </div>    -->
                    <!--                    Tôi đã đọc và đồng ý với các điều khoản <input type="checkbox" name="checkbox" />-->

                    <button type="submit" name="add " class="btn btn-block btn-success" style="background-color: orange">Đăng Ký</button>
                    <!--                    <a href="ForgetPass.jsp" class="btn btn-block btn-default">Forgot password</a>
                                        <a href="#" class="btn btn-block btn-default">Create an account</a>-->
                </form>
            </section>
        </section>

        <%@include file="footer.jsp" %>
    </body>
</html>