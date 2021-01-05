<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>에어팟 프로</title>

    <!-- Favicon  -->
    <link rel="icon" href="../../resources/img/core-img/favicon.ico">

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="../../resources/css/core-style.css">
    <link rel="stylesheet" href="../../resources/style.css">

</head>
<body>

    <!-- Search Wrapper Area Start -->
    <div class="search-wrapper section-padding-100">
        <div class="search-close">
            <i class="fa fa-close" aria-hidden="true"></i>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="search-content">
                        <form action="#" method="get">
                            <input type="search" name="search" id="search" placeholder="Type your keyword...">
                            <button type="submit"><img src="../../resources/core-img/search.png" alt=""></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Search Wrapper Area End -->

    <!-- ##### Main Content Wrapper Start ##### -->
    <div class="main-content-wrapper d-flex clearfix">

        <!-- Mobile Nav (max width 767px)-->
        <div class="mobile-nav">
            <!-- Navbar Brand -->
            <div class="amado-navbar-brand">
                <a href="index.html"><img src="../../resources/core-img/logo.png" alt=""></a>
            </div>
            <!-- Navbar Toggler -->
            <div class="amado-navbar-toggler">
                <span></span><span></span><span></span>
            </div>
        </div>

        <!-- Header Area Start -->
        <header class="header-area clearfix">
            <!-- Close Icon -->
            <div class="nav-close">
                <i class="fa fa-close" aria-hidden="true"></i>
            </div>
            <!-- Logo -->
            <div class="logo">
                <a href="/novusShopping/main.jsp"><img src="../../resources/core-img/logo.png" alt=""></a>
            </div>
            <!-- Amado Nav -->
            <nav class="amado-nav">
                <ul>
                    <li><a href="../../main.jsp">Home</a></li>
                    <li><a href="../../item/ItemList/itemList.nv">Shop</a></li>
                    <li class="active"><a href="itemDetails.nv">Product</a></li>
                    <li><a href="../../item/ItemList/cart.nv">Cart</a></li>
                    <li><a href="../../mem/myOrder/buyItem.nv">Checkout</a></li>
                </ul>
            </nav>
            <!-- Button Group -->
            <div class="amado-btn-group mt-30 mb-100">
                <!-- <a href="#" class="btn amado-btn mb-15">%Discount%</a>
                <a href="#" class="btn amado-btn active">New this week</a> -->
            </div>
            <!-- Cart Menu -->
            <div class="cart-fav-search mb-100">
                <a href="../../item/ItemList/cart.nv" class="cart-nav"><img src="../../resources/core-img/cart.png" alt=""> Cart <span></span></a>
                <!-- <a href="#" class="fav-nav"><img src="../../resources/core-img/favorites.png" alt=""> Favourite</a> -->
                <a href="#" class="search-nav"><img src="../../resources/core-img/search.png" alt=""> Search</a>
            </div>
            <!-- Social Button -->
            <div class="social-info d-flex justify-content-between">
                <!-- <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a> -->
            </div>
        </header>
        <!-- Header Area End -->

        <!-- Product Details Area Start -->
        <div class="single-product-area section-padding-100 clearfix">
            <div class="container-fluid">

                <div class="row">
                    <div class="col-12">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb mt-50">
                                <li class="breadcrumb-item"><a href="/novusShopping/main.jsp">HOME</a></li>
								<li class="breadcrumb-item"><a href="#">PRODUCT</a></li>
                                <li class="breadcrumb-item"><a href="../../item/ItemList/itemEars.nv">EARS</a></li>
                                <li class="breadcrumb-item active" aria-current="page"><a href="../../item/ItemList/itemApple.nv">APPLE</a></li>
                            </ol>
                        </nav>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12 col-lg-7">
                        <div class="single_product_thumb">
                            <div id="product_details_slider" class="carousel slide" data-ride="carousel">
                                <ol class="carousel-indicators">
                                    <li class="active" data-target="#product_details_slider" data-slide-to="0" style="background-image: url(../../resources/Ears/apple/airpot-pro-all.jpg);">
                                    </li>
                                    <li data-target="#product_details_slider" data-slide-to="1" style="background-image: url(../../resources/Ears/apple/airpot-pro-ears.jpg);">
                                    </li>
                                    <li data-target="#product_details_slider" data-slide-to="2" style="background-image: url(../../resources/Ears/apple/airpot-pro-front.jpg);">
                                    </li>
                                    <li data-target="#product_details_slider" data-slide-to="3" style="background-image: url(../../resources/Ears/apple/airpot-pro-top.jpg);">
                                    </li>
                                </ol>
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <a class="gallery_img" href="../../resources/Ears/apple/airpot-pro-all.jpg">
                                            <img class="d-block w-100" src="../../resources/Ears/apple/airpot-pro-all.jpg" alt="First slide">
                                        </a>
                                    </div>
                                    <div class="carousel-item">
                                        <a class="gallery_img" href="../../resources/Ears/apple/airpot-pro-ears.jpg">
                                            <img class="d-block w-100" src="../../resources/Ears/apple/airpot-pro-ears.jpg" alt="Second slide">
                                        </a>
                                    </div>
                                    <div class="carousel-item">
                                        <a class="gallery_img" href="../../resources/Ears/apple/airpot-pro-front.jpg">
                                            <img class="d-block w-100" src="../../resources/Ears/apple/airpot-pro-front.jpg" alt="Third slide">
                                        </a>
                                    </div>
                                    <div class="carousel-item">
                                        <a class="gallery_img" href="../../resources/Ears/apple/airpot-pro-top.jpg">
                                            <img class="d-block w-100" src="../../resources/Ears/apple/airpot-pro-top.jpg" alt="Fourth slide">
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-lg-5">
                        <div class="single_product_desc">
                            <!-- Product Meta Data -->
                            <div class="product-meta-data">
                                <div class="line"></div>
                                <p class="product-price">329,000</p>
                                <a href="/novusShopping/item/ItemInfo/itemDetailsAirpotsPro.nv">
                                    <h6>에어팟 프로</h6>
                                </a>
                                <!-- Ratings & Review -->
                                <div class="ratings-review mb-15 d-flex align-items-center justify-content-between">
                                    <div class="ratings">
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                    </div>
                                    <div class="review">
                                        <!-- <a href="#">리뷰</a> -->
                                    </div>
                                </div>
                                <!-- Avaiable -->
                                <p class="avaibility"><i class="fa fa-circle"></i>재고있음</p>
                            </div>

                            <div class="short_overview my-5">
                                <p>
                                	액티브 노이즈 캔슬링<br/>
                                	주변음 허용 모드<br/>
                                	편안한 착용감 맞춤형 핏<br/>
                                	무선 충전. 최대 4.5시간 음악 감상<br/>
                                </p>
                            </div>

                            <!-- Add to Cart Form -->
                            <form class="cart clearfix" method="post">
                                <div class="cart-btn d-flex mb-50">
                                    <p>수량</p>
                                    <div class="quantity">
                                        <span class="qty-minus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 1 ) effect.value--;return false;"><i class="fa fa-caret-down" aria-hidden="true"></i></span>
                                        <input type="number" class="qty-text" id="qty" step="1" min="1" max="300" name="quantity" value="1">
                                        <span class="qty-plus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty )) effect.value++;return false;"><i class="fa fa-caret-up" aria-hidden="true"></i></span>
                                    </div>
                                </div>
                                <button type="submit" name="addtocart" value="5" class="btn amado-btn">장바구니에 넣기</button>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
         <!-- 제품 상세 내용 -->
        <div class="detail">
   			<img src='/novusShopping/resources/itemdetail/airpotpro.jpg' >
   		</div>
        <!-- Product Details Area End -->
    </div>
    <!-- ##### Main Content Wrapper End ##### -->

    <!-- ##### Footer Area Start ##### -->
    <footer class="footer_area clearfix">
        <div class="container">
        
                <!-- 도연's footer -->
			<table>
            <tr>
            <td>
                <div class="box box1">
                <p class="title">고객센터</p>
				<p class="number">1522-4950</p>
				<p>Mon-Fri AM 11:00 – PM 6:00</p>
				<p>Lunch time PM 13:00 – 14:00</p>
				<p>Sat.Sun.Holiday OFF</p>
				<a href="/front/php/b/board_list.php?board_no=6">Q&amp;A 문의하기 <b>&gt;</b></a>
				</div>
			</td>
			<td></td><td></td><td></td><td></td>
			<td>	
				<div class="box box2">
				<p class="title title2" style="margin-top:45px;">은행정보</p>
				<p class="bank"></p>
				<p>농협 317-0011-4555-11</p>
				<p>국민 242437-04-006911</p>
				<p>예금주 : (주) novus</p>
				<br/><br/><p></p>
				</div>
			</td>
			<td>	
				<div class="box box3">
					<p class="title">주식회사 노부스</p>
					<p class="inner">대표이사 : 정승옥 | 이메일 : ehdus1149@gmail.com<br/>
					16490  서울특별시 가산디지털로 1031-2 성지빌딩 701호 <br/>
					사업자등록번호 : 885800000 <a href="#none" onclick="window.open('http://www.ftc.go.kr/bizCommPop.do?wrkr_no=8858800485', 'bizCommPop', 'width=750, height=950;');return false;">[사업자정보확인]</a> | 통신판매업신고번호 : 2017-수원팔달-0059호</p>
					<p class="link">
						<a href="/shopinfo/company.html">회사소개</a> 
						<a href="/member/agreement.html">이용약관</a>
						<a href="/shopinfo/guide.html">이용안내</a>  
						<a href="/member/privacy.html">개인정보처리방침</a>
					</p>
					<p class="link2">
						<a href="https://mark.inicis.com/markk/escrow_popup.php?mid=ECAstord70" target="blank">
						고객님은 안전거래를 위해 현금 등으로 결제시 저희 쇼핑몰에서 가입한 PG 사의 구매안전서비스를 이용하실 수 있습니다.<br/>
						KG 이니시스 [서비스 가입사실 확인]
						</a>
					</p>
				</div>
			</td>	
				
				<div class="single_widget_area">
                        <!-- Logo -->
                        <div class="footer-logo mr-50">
                            <a href="main.jsp"><img src="../../resources/core-img/logo.png" alt=""></a>
                        </div>
                        <!-- Copywrite Text -->
                        <p class="copywrite"> 
							Copyright &copy;
							<script>document.write(new Date().getFullYear());</script> 
							All rights reserved | 주식회사 노부스 
						</p>
				</div>
			</div>
			
			</table>
        </div>
    </footer>
    <!-- ##### Footer Area End ##### -->
    
    
    <!-- ##### jQuery (Necessary for All JavaScript Plugins) ##### -->
    <script src="../../resources/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="../../resources/js/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="../../resources/js/bootstrap.min.js"></script>
    <!-- Plugins js -->
    <script src="../../resources/js/plugins.js"></script>
    <!-- Active js -->
    <script src="../../resources/js/active.js"></script>

</body>
</html>