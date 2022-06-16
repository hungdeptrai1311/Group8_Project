<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="viewport" content="width=1,initial-scale=1,user-scalable=1" />
        <title>Insert title here</title>


        <link rel="stylesheet" type="text/css" href="assets/bootstrap/css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="assets/css/styles.css" />


    </head>
    <body>

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


    </body>
</html>