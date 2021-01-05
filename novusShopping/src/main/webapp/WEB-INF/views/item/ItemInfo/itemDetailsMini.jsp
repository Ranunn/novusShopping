<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<title>아이폰 12 미니 64GB</title>

    <!-- Favicon  -->
    <link rel="icon" href="../../resources/img/core-img/favicon.ico">

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="../../resources/css/core-style.css">
    <link rel="stylesheet" href="../../resources/style.css">

</head>
<body>

<a href="/novusShopping/Mgr/manager/mgrLogin.nv">&nbsp</a>		<!-- 관리자페이지로 넘어가는 링크. 맨 위 상단 왼쪽 -->
    <!-- Search Wrapper Area Start 좌측의 상품검색 메뉴를 클릭하면 위쪽에 검색창이 나타남-->
    <div class="search-wrapper section-padding-100">
        <div class="search-close">
            <i class="fa fa-close" aria-hidden="true"></i>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="search-content">
                        <form action="#" method="get">
                            <input type="search" name="search" id="search" placeholder="찾고자 하는 상품명을 입력하세요.">
                            <button type="submit"><img src="/novusShopping/img/core-img/search.png" alt=""></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Search Wrapper Area End -->

    <!-- ##### Main Content Wrapper Start ##### -->
    <div class="main-content-wrapper d-flex clearfix">

        <!-- Mobile Nav (max width 767px) 폭 767 이하일 때 적용되는 모바일 버전 메뉴 바-->
        <div class="mobile-nav">
            <!-- Navbar Brand -->
            <div class="amado-navbar-brand">
                <a href="/novusShopping/main.nv"><img src="/novusShopping/resources/core-img/logo.png" alt=""></a>
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
            <!-- Logo 로고-->
            <div class="logo">
                <a href="/novusShopping/main.nv"><img src="/novusShopping/resources/core-img/logo.png" alt=""></a>
            </div>
            <!-- Amado Nav -->
            <nav class="amado-nav">
                <ul>
                    <li><a href="/novusShopping/main.nv">H o m e </a></li>
                    <li><a href="/novusShopping/item/ItemList/itemList.nv">상품 목록 보기</a></li>
                    <li><a href="/novusShopping/item/ItemInfo/itemDetails.nv">상품 상세 보기</a></li>
                    <li><a href="/novusShopping/mem/myOrder/myOrder.nv">내 주문 내역</a></li>
                    <li><a href="/novusShopping/mem/CsCenter/csMain.nv">고객센터</a></li>
                </ul>
            </nav>
            <!-- Button Group -->
            <div class="amado-btn-group mt-30 mb-100">
                <a href="/novusShopping/mem/member/memLogin.nv" class="btn amado-btn mb-15">로그인</a>
                <a href="/novusShopping/mem/member/memSignup.nv" class="btn amado-btn active">회원가입</a>
            </div>
            
            <!-- Cart Menu 메뉴바 하단 바로가기 -->
            <div class="cart-fav-search mb-100">
                <a href="/novusShopping/item/ItemList/cart.nv" class="cart-nav"><img src="/novusShopping/resources/img/core-img/cart.png" alt=""> 장바구니 <span></span></a>
                <a href="novusInfo.nv" class="fav-nav"><img src="/novusShopping/resources/img/core-img/favorites.png" alt=""> novus 소개 </a>
                <a href="#" class="search-nav"><img src="/novusShopping/resources/img/core-img/search.png" alt=""> 상품 검색</a>
            </div>
            
            <!-- Social Button 메뉴바 하단 버튼-->
            <div class="social-info d-flex justify-content-between">
<!--                 <a href="http://www.pinterest.co.kr"><i class="fa fa-pinterest" aria-hidden="true"></i></a> -->
<!--                 <a href="http://www.instagram.com"><i class="fa fa-instagram" aria-hidden="true"></i></a> -->
<!--                 <a href="http://ko-kr.facebook.com"><i class="fa fa-facebook" aria-hidden="true"></i></a> -->
<!--                 <a href="http://twitter.com"><i class="fa fa-twitter" aria-hidden="true"></i></a> -->
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
                                <li class="breadcrumb-item"><a href="../../item/ItemList/itemList.nv">PHONE</a></li>
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
                                    <li class="active" data-target="#product_details_slider" data-slide-to="0" style="background-image: url(../../resources/phone/apple/iphone-12-mini-black.png);">
                                    </li>
                                    <li data-target="#product_details_slider" data-slide-to="1" style="background-image: url(../../resources/phone/apple/iphone-12-mini-blue.png);">
                                    </li>
                                    <li data-target="#product_details_slider" data-slide-to="2" style="background-image: url(../../resources/phone/apple/iphone-12-mini-green.png);">
                                    </li>
                                     <li data-target="#product_details_slider" data-slide-to="3" style="background-image: url(../../resources/phone/apple/iphone-12-mini-red.png);">
                                    </li>
                                    <li data-target="#product_details_slider" data-slide-to="4" style="background-image: url(../../resources/phone/apple/iphone-12-mini-white.png);">
                                    </li>
                                </ol>
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <a class="gallery_img" href="../../resources/phone/apple/iphone-12-mini-black.png">
                                            <img class="d-block w-100" src="../../resources/phone/apple/iphone-12-mini-black.png" alt="First slide">
                                        </a>
                                    </div>
                                    <div class="carousel-item">
                                        <a class="gallery_img" href="../../resources/phone/apple/iphone-12-mini-blue.png">
                                            <img class="d-block w-100" src="../../resources/phone/apple/iphone-12-mini-blue.png" alt="Second slide">
                                        </a>
                                    </div>
                                    <div class="carousel-item">
                                        <a class="gallery_img" href="../../resources/phone/apple/iphone-12-mini-green.png">
                                            <img class="d-block w-100" src="../../resources/phone/apple/iphone-12-mini-green.png" alt="Third slide">
                                        </a>
                                    </div>
                                    <div class="carousel-item">
                                        <a class="gallery_img" href="../../resources/phone/apple/iphone-12-mini-red.png">
                                            <img class="d-block w-100" src="../../resources/phone/apple/iphone-12-mini-red.png" alt="Fourth slide">
                                        </a>
                                    </div>
                                    <div class="carousel-item">
                                        <a class="gallery_img" href="../../resources/phone/apple/iphone-12-mini-white.png">
                                            <img class="d-block w-100" src="../../resources/phone/apple/iphone-12-mini-white.png" name="itemImg" value="iphone-12-mini-white.png" alt="Fifth slide">
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
                                
                                <p class="product-price" >950,000</p>
                                <a href="/novusShopping/item/ItemInfo/itemDetailsMini.nv">
                                    <h6>아이폰 12 미니 64GB</h6>
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
                                      <!--   <a href="#">리뷰</a> -->
                                    </div>
                                </div>
                                <!-- Avaiable -->
                                <p class="avaibility"><i class="fa fa-circle"></i>재고있음</p>
                            </div>

                            <div class="short_overview my-5">
                                <p>
                                   5G 스피드. 스마트폰 사상 가장 빠른<br/>
                                   A14 Bionic 칩. 전면 화면 OLED<br/>
                                   디스플레이. 그리고 모든 카메라에서<br/>
                                   지원되는 '야간 모드'까지.<br/>
                                </p>
                            </div>

                            <!-- Add to Cart Form -->
                            <form class="cart clearfix" id="frm" action="cartInsert.nv" method="post">
                                <div class="cart-btn d-flex mb-50">
                                    <p>수량</p>
                                    <div class="quantity">
                                        <span class="qty-minus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty ) &amp; &amp; qty &gt; 1 ) effect.value--;return false;"><i class="fa fa-caret-down" aria-hidden="true"></i></span>
                                        <input type="number" class="qty-text" id="qty" step="1" min="1" max="300" name="count" value="1">
                                        <span class="qty-plus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty )) effect.value++;return false;"><i class="fa fa-caret-up" aria-hidden="true"></i></span>
                                    </div>
                                <div>
                                <select name="optionColor" class="phonecolor">
                                   <option value='블랙'>블랙</option>
                                   <option value='블루'>블루</option>
                                   <option value='그린'>그린</option>
                                   <option value='레드'>레드</option>
                                   <option value='화이트'>화이트</option>
                                </select>
                                </div>
                                </div>
                                <div>
                                <input type="hidden" id="itemName" name="itemName" value="아이폰 12 미니 64GB">
                                <input type="hidden" id="price" name="price" value="950000">
                                <input type="hidden" id="itemNo" name="itemNo" value="7" />
                                <input type="hidden" id="itemImg" name="itemImg" value="../../resources/phone/apple/iphone-12-mini-black.png">
                                <input type="submit" id ="addtocart" name="addtocart" value="장바구니에 넣기" class="btn amado-btn"></input>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
         <!-- 제품 상세 내용 -->
        <div class="detail">
            <img src='/novusShopping/resources/itemdetail/iphone-12-mini.jpg' >
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