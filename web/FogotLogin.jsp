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
                <form method="post" action="ForgotController" role="login">
                    <h2>Quên mật khẩu??</h2>
                    <p>Nhập thông tin</p>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon"><span class="text-primary glyphicon glyphicon-envelope"></span></div>
                            <input type="text" name="account"  value="${account}" placeholder="Tài khoản"   required class="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon"><span class="text-primary glyphicon glyphicon-user"></span></div>
                            <input type="text" name="dob"  placeholder="Ngày sinh"   required class="form-control" />
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon"><span class="text-primary glyphicon glyphicon-lock"></span></div>
                            <input type="text" name="pass" value="${pass}" placeholder="Mật khẩu mới" readonly required class="form-control" />
                        </div>
                    </div>


                    <button type="submit" name="go" class="btn btn-block btn-success" style="background-color: orange">Tiếp tục</button>
                    <!--                    <a href="ForgetPass.jsp" class="btn btn-block btn-default">Forgot password</a>
                                        <a href="#" class="btn btn-block btn-default">Create an account</a>-->
                </form>
            </section>
        </section>


    </body>
</html>