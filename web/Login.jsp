<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                <form method="post" action="LoginController" role="login">
                    <h2>Khách hàng cũ </h2>
                    <p>Nhập thông tin</p>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon"><span class="text-primary glyphicon glyphicon-envelope"></span></div>
                            <input type="text" name="account"  value="${account}" placeholder="Tài Khoản"  required class="form-control" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <div class="input-group-addon"><span class="text-primary glyphicon glyphicon-lock"></span></div>
                            <input type="password" name="pass"  value="${pass}" placeholder="Mật Khẩu"  required class="form-control" />
                        </div>
                    </div>
                    ${result}
                    <button type="submit" name="go" class="btn btn-block btn-success" style="background-color: orange">Đăng nhập</button>
                    <a href="FogotLogin.jsp" class="btn btn-block btn-default">Quên mật khẩu</a>
                    <a href="CreateAccount.jsp" class="btn btn-block btn-default">Tài khoản mới</a>
                    <a href="DeleteAccount.jsp" class="btn btn-block btn-default">Xóa</a>
                </form>
            </section>
        </section>


    </body>
</html>