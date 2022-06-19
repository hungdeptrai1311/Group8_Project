<%-- 
    Document   : converse
    Created on : Jun 17, 2022, 1:46:02 PM
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
        <link rel="stylesheet" href="css/brand.css"/>
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
        <title>Vans</title>
        <link href="images/icon.png" rel="icon">
        <script src="https://kit.fontawesome.com/72eb2ee2e2.js" crossorigin="anonymous"></script>
        <script src="js/jquery-1.11.1.min.js"></script>
        <script src="js/header.js"></script>
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

        <div class="store">
            <div class="container">
                <br>
                <a href="home.jsp">Trang chủ</a>
                >
                <a href="converse.jsp">All vans</a>
                <div style="display: flex; justify-content: center; background-color: rgb(219, 250, 253); padding: 20px">
                    <div style="width: 200px;"> 
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 292.09 197.56"><defs><style>.cls-1{
                            fill:#0a849b;
                        }
                        .cls-2{
                            font-size:21.83px;
                            fill:#fff;
                            font-family:MyriadPro-Regular, Myriad Pro;
                        }
                        .cls-3{
                            font-size:85px;
                            stroke:#000;
                            stroke-miterlimit:10;
                            font-family:Futura-CondensedExtraBold, Futura Condensed Extra;
                            font-weight:800;
                        }</style></defs><g id="Layer_2" data-name="Layer 2"><g id="Layer_1-2" data-name="Layer 1"><rect class="cls-1" y="147.08" width="292.09" height="50.48"/><text class="cls-2" transform="translate(72.48 177.02) scale(1.33 1)">S N E A K E R</text><path d="M42.55,58.31l-2.68,2.3-2.81,2.55L34.3,65.63,32,67.8l-2.43,2.3-2.51,2.34L23.57,76l-2.63,2.9-3,3.27L14,86.82l-3.23,4.3L7.32,96.57,5.53,99.8l-1.79,3.75L2.25,108l-.89,3.27-.55,3.36L.5,117.08s-.17.25,0,2.13,1,6,1,6A32.87,32.87,0,0,0,3,129a40.5,40.5,0,0,0,3.36,4.55l2.9,2.85,3.66,2.38,3.4,1.66,4.77,1.58,5.19,1.06,5.19.43h7L46.3,143,54,141.72l8.12-1.79,8.64-2.6,6-1.78,5.66-2,5.32-1.92L94,129.5l5.91-2.08,7.07-2.43,8.08-3,6.21-2.09,6.68-2.34,7.75-2.77,6.34-2.29,5.62-2,5.49-2,6.8-2.38,6.64-2.26,6.3-2.3,6.94-2.38,6-2.08,5.32-1.88L198,92.91l5.62-2L208.81,89,215,87l6.55-2.34,5.58-2.08L232,80.82l5.83-1.95,5.87-2.05L248.85,75l7.66-2.72L262.89,70l5.53-1.88L274.25,66l6.6-2.3,5.32-1.88L291.66,60l-5.36.9-5.88,1.23L275,63.25l-10.08,2.17-8.22,1.74-7.87,1.66-6.21,1.32-11,2.56-7.71,1.57-6.21,1.32L210,77.16l-11.57,2.56-8.34,1.87-7.45,1.7L175.28,85l-6.94,1.62-5.23,1.1-8.43,1.79L146,91.38l-5.7,1.32-5.66,1.23L128,95.29l-7.24,1.62-6.93,1.57-8.51,1.88-8,1.74-7.45,1.57-5.7,1.2-6,1.27-5.87,1-5.4.6-5.37.21a43.53,43.53,0,0,1-6.38-.3c-3.87-.42-4.21-.3-7.23-1.27a34.48,34.48,0,0,1-7-3.2c-1.49-.89-1.79-1.27-4.22-3.49s-4.51-8-4.51-8-.51-2.34-.68-3.91a43.35,43.35,0,0,1,.21-5.58s1.15-6.51,1.49-7.15,2.56-6.17,2.81-6.46,2-3.54,2.38-4.22S42.55,58.31,42.55,58.31Z"/><text class="cls-3" transform="matrix(1.11, 0, -0.34, 0.94, 39.9, 70.52)">NIKE</text></g></g></svg>
                    </div>
                </div>

                <div class="sort">
                    <div class="row">
                        <div class="col-sm-10"></div>
                        <div class="col-sm-2">
                            <select>
                                <option>Sắp xếp: Mặc định</option>
                                <option>Sắp xếp: Tên (A - Z)</option>
                                <option>Sắp xếp: Tên (Z - A)</option>
                                <option>Sắp xếp: Giá (Thấp > Cao)</option>
                                <option>Sắp xếp: Giá (Cao > Thấp)</option>
                                <option>Sắp xếp: Đánh giá (Cao nhất)</option>
                                <option>Sắp xếp: Đánh giá (Thấp nhất)</option>
                                <option>Sắp xếp: Kiểu (A - Z)</option>
                                <option>Sắp xếp: Kiểu (Z - A)</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
        </div>

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

