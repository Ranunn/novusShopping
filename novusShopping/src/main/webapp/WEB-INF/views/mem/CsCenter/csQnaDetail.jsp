<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String projectName = "/novusShopping"; %>
<%--     <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 고객센터 메인 </title>
<style type="text/css">
.tabs{border: "hidden";
   
   text-align: center;
  display: table-cell; vertical-align: middle;
 margin-top: 15px;
   font-size: smaller;
   color: white;
}
#qnaTable input{
border-left-width:0;
　border-right-width:0;
　border-top-width:0;
　border-bottom-width:1;
}
.firstTabs{font-size:large; font-family: 맑은 고딕;}
#qnaTable{width: "500px";}
#main{border: thin;
border-color: silver;}
#img2{position: absolute;left:750px; top:360px;}
#img11{position: absolute;left:720px; top:320px;}
	
</style>

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

        <div class="cart-table-area section-padding-100">
           <div width=500px><table >
<th   width=130px><a class="firstTabs" href="./csMain.nv" >FAQ</a></th>
<th  width=190px><a class="firstTabs" href="./csQna.nv">1:1 문의하기</a></th>
<th  width=210px><a  class="firstTabs" href="./csQnaList.nv">내 문의 목록</a></th>
<th  width=170px><a  class="firstTabs" href="./csPosting.nv">공지사항</a></th>
</table></div>
<br></br>
		
			<!-- 1. 폼태그에 속성 추가  -->
		<div id ="main">
		<form action="./deleteQna.nv" method='post' enctype="multipart/form-data" > 
			<table id="qnaTable" border="0"  cellpadding="0" cellspacing="0"  >
				<!-- 2. 각 항목에  name 맞추기 -->
				
				<tr><td>질문</td></tr>
				<tr><td width="70" >질문일시 :</td>
				<td align="left"><input type="text" value="${QnaDetail.writeDate}"  /> </td></tr>
				<tr>
					<td bgcolor="orange" width="70" >제목</td>
					<td align="left"><input type="text"  size="60" disabled="disabled" value="${QnaDetail.qtitle}" ></input></td>
				</tr>
				<tr>
					<td bgcolor="orange" >작성자</td>
					<td align="left"><input type="text" size="10" disabled="disabled"  value="${QnaDetail.memId}"></input></td>
				</tr>
				<tr>
					<td bgcolor="orange" >카테고리</td>
					<td align="left"><input type="text" size="12"  value="${QnaDetail.cate}" disabled="disabled"></input></td>
				</tr>
				<tr>
					<td bgcolor="orange" >내용</td>
					<td align="left"><textarea cols="60"  rows="10" disabled="disabled" >${QnaDetail.qcontent}</textarea></td>
				</tr>
				
				<!-- 추가항목 시작 -->
			
			
<!-- 					<td bgcolor="orange" >카테고리</td> -->
<!-- 					<td align="left"> -->
<!-- 					<select  name="cate"> -->
<!-- 					<option>질문 카테고리</option> -->
<!-- 					<option value="제품">제품</option> -->
<!-- 					<option value="배송">배송</option> -->
<!-- 					<option value="서비스">서비스</option> -->
<!-- 					<option value="기타">기타</option> -->
<!-- 					</select> -->
					<input type="hidden" value="${QnaDetail.qno }" name="qno" ></input>
<!-- 					</td> -->
<!-- 				</tr> -->
				
<!-- 					<td bgcolor="orange" width="70">파일추가</td><td align="left"> -->
<!-- 					<input type="file" maxlength="60" size="40" name='file'></td> -->
<!-- 				</tr> -->
				<!-- 추가항목 끝 -->
				<tr><td width="70" >답변일시 :</td>
				<td align="left"><input type="text" value="${QnaDetail.answerDate}"  /> </td></tr>
				<tr>
					<td bgcolor="orange" >답변내용</td>
					<td align="left"><textarea cols="60"  rows="10" disabled="disabled" >${QnaDetail.qanswer}</textarea></td>
				</tr>
				
				
				<tr>
					<td colspan="2" align="center"><input type="submit"	value=" 삭제하기 " /></td>
				</tr>
			</table>
		<div id ="img11">첨부 이미지 : </div>
		<img id ="img2" src="<%=projectName %>/resources/upload/${QnaDetail.qfname}" alt=".">
		</form>
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
<!-- 			</div> -->
<!-- 			</div> -->
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
    
<script type="text/javascript" src="../../resources/assets/scripts/main.js"></script>
	<script  src="../../resources/assets/scripts/js_userinput.js"></script>

</body>
</html>