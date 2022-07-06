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
        <title>Đăng Nhập</title>
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
        <header>
            <div class="top-header">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6"></div>
                        <div class="col-md-6 col-sm-12">
                            Hotline: <a href="tel: 123456789" style="font-weight: bold">0123456789</a> | <a href="CreateAccount.jsp"><i
                                    class="fa-solid fa-lock"></i> Đăng ký</a> | <a href="Login.jsp"><i class="fa-solid fa-user"></i>
                                Đăng
                                nhập</a>
                        </div>
                    </div>
                </div>
            </div>


            <div class="mid-header">
                <div class="mid1-header container">
                    <div class="row">
                        <div class="col-sm-3"></div>
                        <div class="col-sm-6">
                            <a href="home.jsp">
                                <img class="logo" src="images/logo.png">
                            </a>
                        </div>
                        <div class="col-sm-3 text-right">
                            <a title="Danh sách yêu thích" href="">
                                <i class="fa-solid fa-heart"></i>
                            </a>
                            <i class="fa-solid fa-cart-shopping"></i>
                        </div>
                    </div>
                </div>
                <div class="mid2-header">
                    <div class="popup-box">
                        <div class="popup-box__stage">
                            <div class="popup-box__item">Email hỗ trợ : linhtinh@gmail.com</div>
                            <div class="popup-box__item">Miễn phí vận chuyển toàn quốc</div>
                            <div class="popup-box__item">Đăng ký hoặc gọi 0123456789 để cập nhật chương trình khuyến mãi
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="bottom-header">
                <div class="container">
                    <div class="row">
                        <div class="menu">
                            <nav><a href="converse.jsp">CONVERSE</a></nav>
                            <nav><a href="vans.jsp">VANS</a></nav>
                            <nav><a href="puma.jsp">PUMA</a></nav>
                            <nav><a href="adidas.jsp">ADIDAS</a></nav>
                            <nav><a href="nike.jsp">NIKE</a></nav>
                            <nav><a href="bitis.jsp">BITIS</a></nav>
                            <nav><a style="color: red" href="">KHUYẾN MÃI</a></nav>
                            <nav><a href="">CỬA HÀNG</a></nav>
                        </div>
                        <div class="search">
                            <input name="search" class="sb-search-input" placeholder="Tìm kiếm" type="text" value="">
                            <button type="button"><i class="fa fa-search"></i></button>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <main class="d-flex align-items-center min-vh-100 py-3 py-md-0">
            <div class="container">
                <div class="card login-card">
                    <div class="row no-gutters">
                        <div class="col-md-5">
                            <img src="images/anh1.jpg" alt="login" class="login-card-img">
                        </div>
                        <div class="col-md-7">
                            <div class="card-body">
                                <div class="brand-wrapper">
                                    <img src="images/logo.png" alt="logo" class="logo" style="width: 150px">
                                </div>
                                <p class="login-card-description">Sign into your account</p>
                                <form action="create">
                                    <div class="form-group">
                                        Email
                                        <input type="email" name="email" id="email" class="form-control" placeholder="Email address">
                                    </div>
                                    <div class="form-group">
                                        <label for="email" class="sr-only">Email</label>
                                        <input type="email" name="email" id="email" class="form-control" placeholder="Email address">
                                    </div>
                                    <div class="form-group">
                                        <label for="email" class="sr-only">Email</label>
                                        <input type="email" name="email" id="email" class="form-control" placeholder="Email address">
                                    </div>
                                    <div class="form-group">
                                        <label for="email" class="sr-only">Email</label>
                                        <input type="email" name="email" id="email" class="form-control" placeholder="Email address">
                                    </div>
                                    <div class="form-group">
                                        <label for="email" class="sr-only">Email</label>
                                        <input type="email" name="email" id="email" class="form-control" placeholder="Email address">
                                    </div>
                                    <div class="form-group mb-4">
                                        <label for="password" class="sr-only">Password</label>
                                        <input type="password" name="password" id="password" class="form-control" placeholder="***********">
                                    </div>
                                    <input name="login" id="login" class="btn btn-block login-btn mb-4" type="button" value="Login">
                                </form>
                                <a href="#!" class="forgot-password-link">Forgot password?</a>
                                <p class="login-card-footer-text">Don't have an account? <a href="#!" class="text-reset">Register here</a></p>
                                <nav class="login-card-footer-nav">
                                    <a href="#!">Terms of use.</a>
                                    <a href="#!">Privacy policy</a>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>


        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-sm-4">
                        <span>GIỚI THIỆU</span>
                        <ul>
                            <a href=""><li>Về Eight Shoes</li></a>
                            <a href=""><li>Cửa hàng</li></a>
                            <a href=""><li>Khuyến mãi</li></a>
                        </ul>
                    </div>
                    <div class="col-sm-4">
                        <span>Thông tin</span>
                        <ul>
                            <a href=""><li>Chính sách và quy định chung</li></a>
                            <a href=""><li>Chính sách vận chuyển và giao nhận</li></a>
                            <a href=""><li>Chính sách bảo hành - đổi/trả</li></a>
                            <a href=""><li>Chính sách bảo mật</li></a>
                        </ul>
                    </div>
                    <div class="col-sm-4">
                        <span>Hỗ trợ</span>
                        <ul>
                            <a href=""><li>Hỗ trợ trực tuyến</li></a>
                            <a href=""><li>Kiểm tra đơn hàng</li></a>
                        </ul>
                    </div>
                </div>
            </div>
        </footer>
    </body>
</html>
