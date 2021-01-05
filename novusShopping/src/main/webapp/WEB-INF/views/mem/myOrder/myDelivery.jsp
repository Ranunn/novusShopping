<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 배송 조회 </title>

	<!-- Favicon  -->
    <link rel="icon" href="/novusShopping/resources/img/core-img/favicon.ico">

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="/novusShopping/resources/css/core-style.css">
    <link rel="stylesheet" href="/novusShopping/resources/style.css">
<%
	String no = request.getParameter("itemNo");
%>
</head>
<body>

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
                            <button type="submit"><img src="img/core-img/search.png" alt=""></button>
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
                <a href="main.jsp"><img src="resources/core-img/logo.png" alt=""></a>
            </div>
            <!-- Amado Nav -->
            <nav class="amado-nav">
                <ul>
                    <li><a href="main.jsp">H o m e </a></li>
                    <li><a href="item/ItemList/itemList.nv">상품 목록 보기</a></li>
                    <li><a href="item/ItemInfo/itemDetails.nv">상품 상세 보기</a></li>
                    <li><a href="mem/myOrder/myOrder.nv">내 주문 내역</a></li>
                    <li><a href="mem/CsCenter/csMain.nv">고객센터</a></li>
                </ul>
            </nav>
            <!-- Button Group -->
            <div class="amado-btn-group mt-30 mb-100">
                <a href="mem/member/memLogin.nv" class="btn amado-btn mb-15">로그인</a>
                <a href="mem/member/memSignup.nv" class="btn amado-btn active">회원가입</a>
            </div>
            
            <!-- Cart Menu 메뉴바 하단 바로가기 -->
            <div class="cart-fav-search mb-100">
                <a href="item/ItemList/cart.nv" class="cart-nav"><img src="resources/img/core-img/cart.png" alt=""> 장바구니 <span></span></a>
                <a href="novusInfo.nv" class="fav-nav"><img src="resources/img/core-img/favorites.png" alt=""> novus 소개 </a>
                <a href="#" class="search-nav"><img src="resources/img/core-img/search.png" alt=""> 상품 검색</a>
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

        <div class="cart-table-area section-padding-100">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12 col-lg-12">
                        <div class="checkout_details_area mt-50 clearfix">

                            <div class="cart-title">
                                <h2>배송 조회</h2><br/><br/>
                            </div>
                            
                            <div class="row">
	                            <div class="col-md-3 mb-3" align="center"><img src="/novusShopping/resources/upload/${item.itemImg}" alt="Product"></div>
                                	<div class="col-md-9 mb-3">
                                		<h2>${item.itemName}</h2><br/>
                                	</div>
                                	<input type="hidden" name="itemNo" value="<%= no %>"/>
                            </div><br/><br/>

							<div class="row" align="center">
								<div class="col-md-2 col-md-push-1">
								<img src="/novusShopping/resources/core-img/item-ready.png"/><br/><div>발송 준비중</div>
								</div>
								<div class="col-md-1">
								<img src="/novusShopping/resources/core-img/right-arrow.png"/>
								</div>
								<div class="col-md-2">
								<img src="/novusShopping/resources/core-img/delivery-start.png"/><br/><div>배송종</div>
								</div>
								<div class="col-md-1">
								<img src="/novusShopping/resources/core-img/right-arrow.png"/>
								</div>
								<div class="col-md-2">
								<img src="/novusShopping/resources/core-img/delivery-ready.png"/><br/><div>도착 예정</div>
								</div>
								<div class="col-md-1">
								<img src="/novusShopping/resources/core-img/right-arrow.png"/>
								</div>
								<div class="col-md-2">
								<img src="/novusShopping/resources/core-img/delivery-end.png"/><br/><div>배송 완료</div>
								</div>
							</div>
							</div><br/><br/>
							
							<div class="row" align="center">
							<div class="col-md-6 mb-3">
								<input type="text" class="form-control" disabled placeholder="CJ 대한통운                        1588-1255" />
							</div>
							<div class="col-md-6 mb-3">
								<input type="text" class="form-control" disabled placeholder="송장번호                        1234-1234-1234" />
							</div>
							</div>
							
							<div class="row" align="center">
							<div class="col-md-3 mb-3">
								<input type="text" class="form-control" disabled placeholder="2020-12-24" />
							</div>
							<div class="col-md-9 mb-3">
								<input type="text" class="form-control" disabled placeholder="배달 출발" />
							</div>
							</div>
							
							<div class="row" align="center">
							<div class="col-md-3 mb-3">
								<input type="text" class="form-control" disabled placeholder="2020-12-24" />
							</div>
							<div class="col-md-9 mb-3">
								<input type="text" class="form-control" disabled placeholder="간선 하차" />
							</div>
							</div>
							
							<div class="row" align="center">
							<div class="col-md-3 mb-3">
								<input type="text" class="form-control" disabled placeholder="2020-12-24" />
							</div>
							<div class="col-md-9 mb-3">
								<input type="text" class="form-control" disabled placeholder="간선 상차" />
							</div>
							</div>
							
							<div class="row" align="center">
							<div class="col-md-3 mb-3">
								<input type="text" class="form-control" disabled placeholder="2020-12-24" />
							</div>
							<div class="col-md-9 mb-3">
								<input type="text" class="form-control" disabled placeholder="집하완료" />
							</div>
							</div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Main Content Wrapper End ##### -->
    
    
	<jsp:directive.include file="../../footer.jsp"/>
    
    
    <!-- ##### jQuery (Necessary for All JavaScript Plugins) ##### -->
    <script src="/novusShopping/resources/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src=/novusShopping/resources/js/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="/novusShopping/resources/js/bootstrap.min.js"></script>
    <!-- Plugins js -->
    <script src="/novusShopping/resources/js/plugins.js"></script>
    <!-- Active js -->
    <script src="/novusShopping/resources/js/active.js"></script>
    
    

</body>
</html>