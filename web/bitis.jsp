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
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 292.09 237.03"><defs><style>.cls-1{
                                fill:#0a849b;
                            }
                            .cls-2{
                                font-size:21.83px;
                                fill:#fff;
                            }
                            .cls-2,.cls-5{
                                font-family:MyriadPro-Regular, Myriad Pro;
                            }
                            .cls-3,.cls-5{
                                fill:#0071bc;
                            }
                            .cls-4{
                                fill:red;
                            }
                            .cls-5{
                                font-size:84.62px;
                            }</style></defs><g id="Layer_2" data-name="Layer 2"><g id="Layer_1-2" data-name="Layer 1"><rect class="cls-1" y="186.55" width="292.09" height="50.48"/><text class="cls-2" transform="translate(72.48 216.5) scale(1.33 1)">S N E A K E R</text><text/><text/><text/><text/><path class="cls-3" d="M56.12,109.23Q47.83,99.41,34,99.4a26.3,26.3,0,0,0-3,.14v29.4a5.46,5.46,0,0,1,8.43.67,9.3,9.3,0,0,1,1.78,5.79,9,9,0,0,1-1.8,5.65,5.55,5.55,0,0,1-4.57,2.36q-6.48,0-6.49-11.58V73.77H5.22v53.42q0,13,1.69,19.65,2.88,11.37,10.37,17.93a25.76,25.76,0,0,0,17.49,6.56q12.45,0,21.06-10.5t8.6-25.43Q64.43,119.05,56.12,109.23Z"/><rect class="cls-3" x="69.54" y="98.53" width="23.42" height="70.2"/><path class="cls-3" d="M65.21,73.77A15.78,15.78,0,0,0,69.9,85.36a15.58,15.58,0,0,0,11.45,4.72A15.25,15.25,0,0,0,92.7,85.36a16,16,0,0,0,4.6-11.59Z"/><path class="cls-3" d="M143.18,119.93V94.36H128.55V73.77H99.22v65.52q0,16,8.21,23.4,7.77,6.94,23.9,6.94h11.85V143.48h-6.85q-7.79,0-7.78-6.58v-17Z"/><rect class="cls-3" x="149.44" y="98.02" width="27.61" height="71.24"/><ellipse class="cls-4" cx="163.25" cy="59.89" rx="28.23" ry="32.34"/><text class="cls-5" transform="translate(214.18 46.77) rotate(180) scale(1.75 1)">‘</text><path class="cls-3" d="M249.54,84.09h-38q1.22,12.87,10.22,20.85l21.48,19.12A5.77,5.77,0,0,1,245,128.6c0,2.8-1.84,4.21-5.54,4.21H210.83v35h34.48q16.17,0,26.43-7.31,12.33-8.73,12.33-25.86a32.08,32.08,0,0,0-5-18q-3.26-4.9-12.41-13L252.17,90.81Q249,88,249,85.74A2.56,2.56,0,0,1,249.54,84.09Z"/><path class="cls-3" d="M217.8,22.67C236.09,32,247.64,52.16,250.38,75.4l16.18-20.26c-4.88-17.63-15.26-32.27-30.06-39.82-16-8.19-34-6.41-49.6,3.05A47.3,47.3,0,0,1,217.8,22.67Z"/><path class="cls-4" d="M249.26,10.06c13.24,6.76,21.16,22.51,22.45,41.1l12.62-17c-3.06-14-10.28-25.35-21-30.82-11.61-5.93-25-3.75-36.81,4.51A31.45,31.45,0,0,1,249.26,10.06Z"/></g></g></svg>
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
