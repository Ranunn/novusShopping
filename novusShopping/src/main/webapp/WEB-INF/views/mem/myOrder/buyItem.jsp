<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title> 결제하기 </title>
    <script src="/novusShopping/resources/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="/novusShopping/resources/js/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="/novusShopping/resources/js/bootstrap.min.js"></script>
    <!-- Plugins js -->
    <script src="/novusShopping/resources/js/plugins.js"></script>
    <!-- Active js -->
    <script src="/novusShopping/resources/js/active.js"></script>
    
    
<script src="/novusShopping/resources/js/mypageAddr.js"></script>
 <script
   src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <!-- Favicon  -->
    <link rel="icon" href="/novusShopping/resources/img/core-img/favicon.ico">

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="/novusShopping/resources/css/core-style.css">
    <link rel="stylesheet" href="/novusShopping/resources/style.css">
    <style type="text/css">
	    .sero { padding : 0px 0px 10px 0px;}
    </style>    
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

        <div class="cart-table-area section-padding-100">
            <div class="container-fluid">



                   <div class="cart-title mt-50">
                       <h2>결제하기</h2>
                   </div>
                   
			<!-- 폼 태그 시작 
			//////////////////////////////////////////////////////////
			- 폼 마지막의 "결제하기" 버튼 클릭시 "주문내역" 페이지로 이동함
			
			- form에 쓰인 name들
			  : 상품명 itemName
			  : 가격 price
			  : 수량 count
			  : 수령자명 memName
			  : 수령인연락처 memTel
			  : 결제수단 payment
			  : 결제상세 bank
			  : 할부 month
			  : 개인정보동의 infoAgree
			  : 구매동의 buyAgree
			//////////////////////////////////////////////////////////
			-->
			<form action="/novusShopping/mem/myOrder/buyItemOrder3.nv" method="post">
                <div class="row">
                    <div class="col-lg-12">

                        <div class="cart-table clearfix">
                            <table class="table table-responsive">
                                <thead align="center">
                                    <tr>
                                        <th>상품번호</th>
                                        <th>상품명</th>
                                        <th>금액</th>
                                        <th>수량</th>
                                    </tr>
                                </thead>
                                
                                <tbody> 
                                
                                
                                
                                    <tr align="center">
                                        <td class="cart_product_img">
                                            <a href="#"><img src="../../resources/phone/apple/iphone-12-mini-black.png" alt="Product"></a>
                                        </td>
                                        <td class="cart_product_desc" name="itemName" value="">
                                            <h5>아이폰 12 미니 64GB</h5>
                                        </td>
                                        <td class="price">
                                            <span >950000원</span><br/>
                                            <input type="hidden" name="price" value="130000">
                                            <span>무료 배송</span>
                                        </td>
                                        <td class="qty" align="">
                                            <div class="qty-btn d-flex">
                                                <div class="quantity">
                                                
                                                <!-- 수량조절 버튼 위치 조정을 위한 &nbsp -->                                                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                                    <span class="qty-minus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 1 ) effect.value--;return false;"><i class="fa fa-minus" aria-hidden="true"></i></span>
                                                    <input type="number" class="qty-text" id="qty" step="1" min="1" max="300" name="count" value="1">
                                                    <span class="qty-plus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty )) effect.value++;return false;"><i class="fa fa-plus" aria-hidden="true"></i></span>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                  
                                    
                                    <tr>
                                    	<td> <br/> <br/> <br/> </td>
                                    	<td> <br/> <br/> <br/> </td>
		                                    	<td> <br/> <br/> <br/> </td>
		                                    	<td> <br/> <br/> <br/> </td>
		                                    </tr>
		                                    <tr>
		                                    	<td align="center" class="amado-btn-group btn amado-btn active sero">구매자 정보<br/></td>
		                                    	<td> 
		                                    		<input type="text" class="form-control" name="memName" value="${sessionScope.name}"/>
                                    	</td>
                                    	<td><input type="text" class="form-control" name="memTel" value="{sessionScope.tel}"/></td>
                    					<td> </td>
                                    </tr>
                                    <tr>
                                    	<td> <br/> <br/> <br/> </td>
                                    	<td> <br/> <br/> <br/> </td>
                                    	<td> <br/> <br/> <br/> </td>
                                    	<td> <br/> <br/> <br/> </td>
                                    </tr>
                                    <tr>
                                    	<td align="center" class="amado-btn-group btn amado-btn active sero">수령인 정보<br/></td>
                                    	<td> 
                                    		<input type="text" class="form-control" placeholder="${sessionScope.name}" value=""/>
                                    	</td>
                                    	<td><input type="text" class="form-control" placeholder="${sessionScope.tel}" value=""/></td>
                    					<td></td>
                                    </tr>
                                    <tr>
                                    	
                                    	     	<td> 
                                    		<input type="text" class="form-control" id="zonecode" name="memAddr" placeholder="우편번호" value=""/>
                                    	</td>
                                    	<td><input type="text" class="form-control" id = "addr" placeholder="상세주소" value="${sessionScope.addr}"/></td>
                    					<td><input type="text" class="form-control" placeholder="나머지 주소" value=""/></td>
                    					<td><div class="wrap-input100 validate-input edirAddress"
                  data-validate="Password is required">
                  <span class="label-input100">배송주소</span> <span
                     class="focus-input100"></span> <input class="mypageAddr"
                     type="button" value="변경" id="mypageAddr"><br>
                      
              
              </div></td>
                                    </tr>
                                    <tr>
                                    	<td> <br/> <br/> <br/> </td>
                                    	<td> <br/> <br/> <br/> </td>
                                    	<td> <br/> <br/> <br/> </td>
                                    	<td> <br/> <br/> <br/> </td>
                                    </tr>
                                    <tr>
                                    	<td align="center" class="amado-btn-group btn amado-btn active sero">결제수단</td>
                                    	<td> <input type="radio" name="payment" value="카드"/>  카드 </td>
                                    	<td> <input type="radio" name="payment" value="무통장입금"/>  무통장입금 </td>
                    					<td> <input type="radio" name="payment" value="계좌이체"/>  계좌이체 </td>
                                    </tr>
                                    <tr>
                                    	<td></td>
                                    	<td> <input type="radio" name="payment" value="휴대폰"/>  휴대폰 </td>
				                    	<td> <input type="radio" name="payment" value="PAYKO"/>  PAYKO </td>
				                    	<td> <input type="radio" name="payment" value="카카오페이"/>  카카오페이 </td>
                                    </tr>
                                    <tr>
                                    	<td> <br/> <br/> <br/> </td>
                                    	<td> <br/> <br/> <br/> </td>
                                    	<td> <br/> <br/> <br/> </td>
                                    	<td> <br/> <br/> <br/> </td>
                                    </tr>
                                    <tr>
                                    	<td align="center" class="amado-btn-group btn amado-btn active sero">결제상세</td>
                                    	<td>
                                    		<select name="bank">
                                    			<option value="국민은행">국민은행</option>
                                    			<option value="신한은행">신한은행</option>
                                    			<option value="우리은행">우리은행</option>
                                    			<option value="하나은행">하나은행</option>
                                    		</select>
                                    	</td>
                                    	<td>
                                    		<select name="month">
                                    			<option value="1">일시불</option>
                                    			<option value="3">3개월 할부</option>
                                    			<option value="6">6개월 할부</option>
                                    		</select>
                                    	</td>
                                    	<td></td>
                                    </tr>
                                    <tr>
                                    	<td> <br/> <br/> <br/> </td>
                                    	<td> <br/> <br/> <br/> </td>
                                    	<td> <br/> <br/> <br/> </td>
                                    	<td> <br/> <br/> <br/> </td>
                                    </tr>
                                    <tr>
                                    	<td align="center" class="amado-btn-group btn amado-btn active sero">구매 전 동의</td>
                                    	<td>개인 정보 제3자 제공에 동의하십니까? </td>
                                    	<td> <input type="radio" name="infoAgree" value="네"/>  네</td>
                                    	<td> <input type="radio" name="infoAgree" value="아니오"/>  아니오</td>
                                    </tr>
                                    <tr>
                                    	<td></td>
                                    	<td>상품 정보 및 거래 조건을 확인하였으며, <br/> 구매 진행에 동의합니다.</td>
                                    	<td> <input type="radio" name="buyAgree" value="네"/>  네</td>
                                    	<td> <input type="radio" name="buyAgree" value="아니오"/>  아니오</td>
                                    </tr>
                                    
                                </tbody>
                            </table>
                        </div>
                    </div>
                    
                    
                
                    
                    <div class="col-12 col-lg-7"></div>
                    <div class="col-12 col-lg-5">
                        <div class="cart-summary">
                            <h5>Total</h5>
                            <ul class="summary-table">
                                <li><span>총 결제 금액 :</span> <span id="totalPrice">$140.00</span></li>
                                
                            </ul>
                            <div class="cart-btn mt-100">
                                <input type="submit" id="submit" class="btn amado-btn w-100" value="결제하기" />
                            </div>
                        </div>
                    </div>
                    
                    
                </form>
                    
                    
                    
                    
                </div>
            </div>
        </div>
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
			</table>
        </div>
    </footer>
    <!-- ##### Footer Area End ##### -->
    
    <!-- ##### jQuery (Necessary for All JavaScript Plugins) ##### -->
<script type="text/javascript">
    $(function(){
    	
    	

    })
    </script>
    
</body>

</html>