<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 리뷰 작성 </title>

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

        <!-- Mobile Nav (max width 767px)-->
        <div class="mobile-nav">
            <!-- Navbar Brand -->
            <div class="amado-navbar-brand">
                <a href="/novusShopping/main.nv"><img src="/novusShopping/resources/img/core-img/logo.png" alt=""></a>
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
                <a href="/novusShopping/main.nv"><img src="/novusShopping/resources/core-img/logo.png" alt=""></a>
            </div>
            <!-- Amado Nav -->
            <nav class="amado-nav">
                <ul>
                    <li><a href="/novusShopping/main.nv">H o m e </a></li>
                    <li><a href="/novusShopping/item/ItemList/itemList.nv">S H O P</a></li>
                    <li><a href="/novusShopping/mem/myOrder/myOrder.nv">내 주문 내역</a></li>
                    <li><a href="/novusShopping/mem/CsCenter/csMain.nv">고객센터</a></li>
                </ul>
            </nav>
            <!-- Button Group -->
            <div class="amado-btn-group mt-30 mb-100">
                <a href="/novusShopping/item/ItemList/itemList.nv" class="btn amado-btn mb-15">베스트 상품</a>
                <a href="/novusShopping/item/ItemInfo/itemDetails.nv" class="btn amado-btn active">신제품</a>
            </div>
            <!-- Cart Menu -->
            <div class="cart-fav-search mb-100">
                <a href="cart.html" class="cart-nav"><img src="/novusShopping/resources/img/core-img/cart.png" alt=""> 장바구니 <span>(0)</span></a>
                <a href="#" class="fav-nav"><img src="/novusShopping/resources/img/core-img/favorites.png" alt=""> 관심상품 </a>
                <a href="#" class="search-nav"><img src="/novusShopping/resources/img/core-img/search.png" alt=""> 상품 검색</a>
            </div>
            <!-- Social Button -->
            <div class="social-info d-flex justify-content-between">
                <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
            </div>
        </header>
        <!-- Header Area End -->

        <div class="cart-table-area section-padding-100">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12 col-lg-8">
                        <div class="checkout_details_area mt-50 clearfix">

                            <div class="cart-title">
                                <h2>리뷰 남기기</h2>
                            </div>

							<!-- 폼 태그 시작 
							//////////////////////////////////////////////////////////
							//////////////////////////////////////////////////////////
							-->
                            <form action="saveReview.nv" id="reviewFrm" method="post" enctype="multipart/form-data" >
                                <div class="row">
                                	<div class="col-md-3 mb-3" align="center"><img src="/novusShopping/resources/upload/${item.itemImg}" alt="Product"></div>
                                	<div class="col-md-9 mb-3">
                                		<h2>${item.itemName}</h2><br/>
                                	</div>
                                	<input type="hidden" name="itemNo" value="<%= no %>"/>
                                	
                                	<!-- 
                                	<div class="col-md-3 mb-3" align="center">
                                		<div class="line"></div>
                                		<h4>상품 평가</h4>
                                		<div align="center">
                                			<select name="grade">
                                			<option value="5">★★★★★</option>
                                			<option value="4">★★★★</option>
                                			<option value="3">★★★</option>
                                			<option value="2">★★</option>
                                			<option value="1">★</option>
                                			</select>
 	                                    	
                                	</div>
                                	<div class="col-md-9 mb-3">
                                		<h4>별을 클릭하여 상품 만족도를 나타내주세요.</h4>
                                	</div>
                                	 -->
                                	 
                                	 
                                	<div class="row">
                                	
                                	<div class="col-md-2 mb-3">
	                                	<div>배송은 빨랐나요?</div><br/>
	                                	<div>색상은 어떤가요?</div>
	                                </div>
	                                <div class="col-md-3 col-md-offset-1 mb-3">
	                                	<div><input type="radio" name="reviewSpeed" value="빨라요"/> 빨라요 </div><br/>
	                                	<div><input type="radio" name="reviewColor" value="화면과 같아요"/> 화면과 같아요 </div>
	                                </div>
	                                <div class="col-md-3 mb-3">
	                                	<div><input type="radio" name="reviewSpeed" value="보통이에요"/> 보통이에요 </div><br/>
	                                	<div><input type="radio" name="reviewColor" value="화면보다 어두워요"/> 화면보다 어두워요 </div>
	                                </div>
	                                <div class="col-md-3 mb-3">
	                                	<div><input type="radio" name="reviewSpeed" value="느려요"/> 느려요 </div><br/>
	                                	<div><input type="radio" name="reviewColor" value="화면보다 밝아요"/> 화면보다 밝아요 </div>
	                                </div>
	                                
                                    <div class="col-12 mb-3">
                                        <input type="text" class="form-control" id="rTitle" name="rTitle" placeholder="제목" value="">
                                    </div>
                                    <div class="col-12 mb-3">
                                        <textarea class="form-control w-100" id="content" name="content" cols="30" rows="10" placeholder="상품평을 남겨주세요."></textarea>
                                    </div>
                                    
                                    
                                    <div class="col-12 mb-3">
                                    	<input type="file" maxlength="100" size="100" name='file'>
                                    </div>
                                    
                                    
                                    <div class="col-12 mb-3">
	                                    <div class="cart-btn">
	                                		<input type="submit"class="btn amado-btn w-100" value="등록" />
	                           			</div>
                                    </div>
                                </div>
                            </form>
                            
                            <!-- 폼 태그 끝
                            //////////////////////////////////////////////////////////
                            //////////////////////////////////////////////////////////
                             -->
                            
                        </div>
                    </div>
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
    
    <script type="text/javascript" src="/novusShopping/resouces/js/jquery.validate.js"></script>

<script type="text/javascript">
$(function(){
	/*
	$('.btn').click(function(){
		
		var title = $("#title").val();
		var content = $("#content").val();
		
	    $('#reviewFrm').validate({
	        rules : {
	        reviewSpeed : { required : true },
	        reviewColor : { required : true },
	        name : { required : true, maxlength : 100 }
	        title : { required : true, maxlength : 1024 }
	        }	
	    });
	    $('#reviewFrm').submit();
	    alert('ok')
	});
	*/
})
</script>
</body>
</html>