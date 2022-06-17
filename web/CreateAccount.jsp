<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="viewport" content="width=1,initial-scale=1,user-scalable=1" />
        meta name="viewport" content="width=1,initial-scale=1,user-scalable=1" />
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


        <link rel="stylesheet" type="text/css" href="assets/bootstrap/css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="assets/css/styles.css" />


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
                            <nav><a href="">CONVERSE</a></nav>
                            <nav><a href="">VANS</a></nav>
                            <nav><a href="">PUMA</a></nav>
                            <nav><a href="">ADIDAS</a></nav>
                            <nav><a href="">NIKE</a></nav>
                            <nav><a href="">BITIS</a></nav>
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