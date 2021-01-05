<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 주문 내역 </title>

	<!-- Favicon  -->
    <link rel="icon" href="/novusShopping/resources/img/core-img/favicon.ico">

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="/novusShopping/resources/css/core-style.css">
    <link rel="stylesheet" href="/novusShopping/resources/style.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
    <style type="text/css">
	    .sero { padding : 10px 0px;}
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript">
    $(function(){
		$('input[name="datefilter"]').daterangepicker({
			autoUpdateInput: false,
			locale: {
				cancelLabel: '초기화'
			}
		});
		
		$('input[name="datefilter"]').on('apply.daterangepicker', function(ev, picker) {
			$(this).val(picker.startDate.format('YYYY년MM월DD일') + ' - ' + picker.endDate.format('YYYY년MM월DD일'));
		});
		
		$('input[name="datefilter"]').on('cancel.daterangepicker', function(ev, picker) {
			$(this).val('');
		});
   		
    })
    </script>

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
                <a href="item/ItemList/cart.nv" class="cart-nav"><img src="/novusShopping/resources/img/core-img/cart.png" alt=""> 장바구니 <span></span></a>
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

		<!-- section-padding-100은 위 아래 여백 100px씩 주는 css 클래스 -->
        <div class="cart-table-area section-padding-100">
            <div class="container-fluid">
                <div class="row">
                
                
                	<!-- 중앙부 -->
                    <div class="col-12 col-lg-12">
                        <div class="cart-title mt-50">
                            <h2>내 주문 내역</h2>
                        </div>

						<!-- 달력 -->
						<div class="col-12" >
						조회기간 : <input type="text" name="datefilter"  value="" />
						
                        
						
                        <div class="cart-table clearfix">
                            <table class="table table-responsive">
                                <thead>
                                    <tr align=center>
                                        <th>주문일자</th>
                                        <th>상품명</th>
                                        <th>금액</th>
                                        <th>주문상태</th>
                                    </tr>
                                </thead>
                                <tbody>
                                
                                <!-- 컨트롤러에서 넘어오는 데이터로 표 그리기 -->
                                            
                                <c:forEach items="${buyList}" var="item">
                                
                                
                                    <tr align=center>
                                    	<td>${item.ORDER_DATE }<br/>
                                            <a href="#"><img src="/novusShopping/resources/upload/${item.ITEM_IMG}" alt="Product"></a>
                                        </td>
                                        <td class="cart_product_desc" align="center" name="itemName">
                                            <h5>${item.ITEM_NAME}</h5>
                                        </td>
                                        <td>
                                            <span>${item.PRICE}원</span><br/>
                                            <span>${item.COUNT}개</span><br/>
                                            <span>무료 배송</span>
                                        </td>
                                        <td><br/><br/>
                                        	<span>${item.DELIVERY}</span> <br/>
                                        	
                                        	<c:choose>
                                        	
                                       		<c:when test="${item.DELIVERY eq '상품준비중'}">
                                        	<div class="amado-btn-group mt-30 mb-100">
                                       			<a href="#" class="btn amado-btn active">배송 조회</a>
                                       		</div>
                                       		</c:when>

											<c:when test="${item.DELIVERY eq '배송중'}">
                                        	<div class="amado-btn-group mt-30 mb-100">
                                       			<a href="/novusShopping/mem/myOrder/myDelivery.nv?itemNo=${item.ITEM_NO}" class="btn amado-btn mb-15">배송 조회</a>
                                       		</div>
                                       		</c:when>
                                       		
                                       		<c:when test="${item.DELIVERY eq '배송완료'}">
                                        	<span class="amado-btn-group mt-30 mb-100">
                                       			<a href="/novusShopping/mem/myOrder/myReview.nv?itemNo=${item.ITEM_NO}" class="btn amado-btn mb-15">리뷰 남기기</a>
                                       		</span><br/>
                                       		<span class="amado-btn-group mt-30 mb-100">
                                       			<a href="/novusShopping/mem/myOrder/myExchange.nv?itemNo=${item.ITEM_NO}" class="btn amado-btn mb-15">교환 / 반품</a>
                                       		</span>
                                       		</c:when>
                                       		
                                       		</c:choose> 
                                       		
                                       	</td>
                                    </tr>
                                    
                                    
                               </c:forEach>     
                                    
                                    
                                    
                                </tbody>
                            </table>
                        </div>
                    </div>
                    
                    <!-- 우측 --><!-- 
                    <div class="col-12 col-lg-4">
                        <div class="cart-summary">
                            <h5>주문 합계</h5>
                            <ul class="summary-table">
                                <li><span>상품합계 : </span> <span>390,000원</span></li>
                                <li><span>배송료 : </span> <span>9,000원</span></li>
                                <li><span>총계 : </span> <span>399,000원</span></li>
                            </ul>
                            <div class="cart-btn mt-100">
                                <a href="cart.html" class="btn amado-btn w-100">Checkout</a>
                            </div>
                        </div>
                    </div> -->
                    
                    
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Main Content Wrapper End ##### -->
    
    
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
    
	<script type="text/javascript" src="/novusShopping/resources/assets/scripts/main.js"></script>
	
	<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
	<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
	<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>

</body>
</html>