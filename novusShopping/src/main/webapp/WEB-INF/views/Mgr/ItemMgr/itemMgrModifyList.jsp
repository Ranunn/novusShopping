<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Language" content="en">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title> 상품 수정하기 </title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no, shrink-to-fit=no" />
    <meta name="description" content="Tables are the backbone of almost all web applications.">
    <meta name="msapplication-tap-highlight" content="no">
    <!--
    =========================================================
    * ArchitectUI HTML Theme Dashboard - v1.0.0
    =========================================================
    * Product Page: https://dashboardpack.com
    * Copyright 2019 DashboardPack (https://dashboardpack.com)
    * Licensed under MIT (https://github.com/DashboardPack/architectui-html-theme-free/blob/master/LICENSE)
    =========================================================
    * The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
    -->
<link href="../../resources/css/main.css" rel="stylesheet">
</head>

<body>
    <div class="app-container app-theme-white body-tabs-shadow fixed-sidebar fixed-header">
        <div class="app-header header-shadow">
            <div class="app-header__logo">
            <!-- 좌측 상단 로고 -->
            	<div class="logo">
                	<a href="../../main.jsp"><img src="../../resources/core-img/logo(manager).png" alt=""></a>
            	</div>
                <div class="logo-src">    
                </div>
            <!-- 좌측 상단 로고 끝 -->
                
                <div class="header__pane ml-auto">
                    <div>
                        <button type="button" class="hamburger close-sidebar-btn hamburger--elastic" data-class="closed-sidebar">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                        </button>
                    </div>
                </div>
            </div>
            <div class="app-header__mobile-menu">
                <div>
                    <button type="button" class="hamburger hamburger--elastic mobile-toggle-nav">
                        <span class="hamburger-box">
                            <span class="hamburger-inner"></span>
                        </span>
                    </button>
                </div>
            </div>
            <div class="app-header__menu">
                <span>
                    <button type="button" class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
                        <span class="btn-icon-wrapper">
                            <i class="fa fa-ellipsis-v fa-w-6"></i>
                        </span>
                    </button>
                </span>
            </div>    
            
            <!-- 상단 메뉴바 -->
            <div class="app-header__content">
            	<!-- 상단 좌측 메뉴바 -->
                <div class="app-header-left">
                    <!-- 상단 돋보기 클릭시 나오는 검색 창 -->
                </div> <!-- app-header-left 상단 좌측 메뉴바 끝 -->
                
                <!-- 상단 우측 메뉴바 -->
                <div class="app-header-right">
                    <div class="header-btn-lg pr-0">
                        <div class="widget-content p-0">
                            <div class="widget-content-wrapper">
                                <div class="widget-content-left">
                                    <div class="btn-group">
                                        <a data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="p-0 btn">
                                            <img width="42" class="rounded-circle" src="assets/images/avatars/1.jpg" alt="">
                                            <i class="fa fa-angle-down ml-2 opacity-8"></i>
                                        </a>
                                        
                                        <!-- 우측 상단 드롭박스 메뉴(로그아웃) -->
                                        <div tabindex="-1" role="menu" aria-hidden="true" class="dropdown-menu dropdown-menu-right">
                                           <!-- <button type="button" tabindex="0" class="dropdown-item">User Account</button>
                                            <button type="button" tabindex="0" class="dropdown-item">Settings</button>
                                            <h6 tabindex="-1" class="dropdown-header">Header</h6>
                                            <button type="button" tabindex="0" class="dropdown-item">Actions</button>-->
                                            <div tabindex="-1" class="dropdown-divider"></div>
                                            <button type="button" tabindex="0" class="dropdown-item">로그아웃</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="widget-content-left  ml-3 header-user-info">
                                    <div class="widget-heading">
                                        	고은별
                                    </div>
                                    <div class="widget-subheading">
                                        NOVUS MD
                                    </div>
                                </div>
                                <div class="widget-content-right header-user-info ml-3">
                                    <button type="button" class="btn-shadow p-1 btn btn-primary btn-sm show-toastr-example">
                                        <i class="fa text-white fa-calendar pr-1 pl-1"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>        
                </div> <!-- app-header-right 상단 우측 메뉴바 끝 -->
            </div> <!-- app-header__content 상단 메뉴바 끝 -->
        </div>       
        <div class="ui-theme-settings">
            <button type="button" id="TooltipDemo" class="btn-open-options btn btn-warning">
                <i class="fa fa-cog fa-w-16 fa-spin fa-2x"></i>
            </button>
            <div class="theme-settings__inner">
                <div class="scrollbar-container">
                    <div class="theme-settings__options-wrapper">
                        <h3 class="themeoptions-heading">Layout Options
                        </h3>
                        <div class="p-3">
                            <ul class="list-group">
                                <li class="list-group-item">
                                    <div class="widget-content p-0">
                                        <div class="widget-content-wrapper">
                                            <div class="widget-content-left mr-3">
                                                <div class="switch has-switch switch-container-class" data-class="fixed-header">
                                                    <div class="switch-animate switch-on">
                                                        <input type="checkbox" checked data-toggle="toggle" data-onstyle="success">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="widget-content-left">
                                                <div class="widget-heading">Fixed Header
                                                </div>
                                                <div class="widget-subheading">Makes the header top fixed, always visible!
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="widget-content p-0">
                                        <div class="widget-content-wrapper">
                                            <div class="widget-content-left mr-3">
                                                <div class="switch has-switch switch-container-class" data-class="fixed-sidebar">
                                                    <div class="switch-animate switch-on">
                                                        <input type="checkbox" checked data-toggle="toggle" data-onstyle="success">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="widget-content-left">
                                                <div class="widget-heading">Fixed Sidebar
                                                </div>
                                                <div class="widget-subheading">Makes the sidebar left fixed, always visible!
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="list-group-item">
                                    <div class="widget-content p-0">
                                        <div class="widget-content-wrapper">
                                            <div class="widget-content-left mr-3">
                                                <div class="switch has-switch switch-container-class" data-class="fixed-footer">
                                                    <div class="switch-animate switch-off">
                                                        <input type="checkbox" data-toggle="toggle" data-onstyle="success">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="widget-content-left">
                                                <div class="widget-heading">Fixed Footer
                                                </div>
                                                <div class="widget-subheading">Makes the app footer bottom fixed, always visible!
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <h3 class="themeoptions-heading">
                            <div>
                                Header Options
                            </div>
                            <button type="button" class="btn-pill btn-shadow btn-wide ml-auto btn btn-focus btn-sm switch-header-cs-class" data-class="">
                                Restore Default
                            </button>
                        </h3>
                        <div class="p-3">
                            <ul class="list-group">
                                <li class="list-group-item">
                                    <h5 class="pb-2">Choose Color Scheme
                                    </h5>
                                    <div class="theme-settings-swatches">
                                        <div class="swatch-holder bg-primary switch-header-cs-class" data-class="bg-primary header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-secondary switch-header-cs-class" data-class="bg-secondary header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-success switch-header-cs-class" data-class="bg-success header-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-info switch-header-cs-class" data-class="bg-info header-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-warning switch-header-cs-class" data-class="bg-warning header-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-danger switch-header-cs-class" data-class="bg-danger header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-light switch-header-cs-class" data-class="bg-light header-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-dark switch-header-cs-class" data-class="bg-dark header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-focus switch-header-cs-class" data-class="bg-focus header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-alternate switch-header-cs-class" data-class="bg-alternate header-text-light">
                                        </div>
                                        <div class="divider">
                                        </div>
                                        <div class="swatch-holder bg-vicious-stance switch-header-cs-class" data-class="bg-vicious-stance header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-midnight-bloom switch-header-cs-class" data-class="bg-midnight-bloom header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-night-sky switch-header-cs-class" data-class="bg-night-sky header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-slick-carbon switch-header-cs-class" data-class="bg-slick-carbon header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-asteroid switch-header-cs-class" data-class="bg-asteroid header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-royal switch-header-cs-class" data-class="bg-royal header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-warm-flame switch-header-cs-class" data-class="bg-warm-flame header-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-night-fade switch-header-cs-class" data-class="bg-night-fade header-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-sunny-morning switch-header-cs-class" data-class="bg-sunny-morning header-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-tempting-azure switch-header-cs-class" data-class="bg-tempting-azure header-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-amy-crisp switch-header-cs-class" data-class="bg-amy-crisp header-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-heavy-rain switch-header-cs-class" data-class="bg-heavy-rain header-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-mean-fruit switch-header-cs-class" data-class="bg-mean-fruit header-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-malibu-beach switch-header-cs-class" data-class="bg-malibu-beach header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-deep-blue switch-header-cs-class" data-class="bg-deep-blue header-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-ripe-malin switch-header-cs-class" data-class="bg-ripe-malin header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-arielle-smile switch-header-cs-class" data-class="bg-arielle-smile header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-plum-plate switch-header-cs-class" data-class="bg-plum-plate header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-happy-fisher switch-header-cs-class" data-class="bg-happy-fisher header-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-happy-itmeo switch-header-cs-class" data-class="bg-happy-itmeo header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-mixed-hopes switch-header-cs-class" data-class="bg-mixed-hopes header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-strong-bliss switch-header-cs-class" data-class="bg-strong-bliss header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-grow-early switch-header-cs-class" data-class="bg-grow-early header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-love-kiss switch-header-cs-class" data-class="bg-love-kiss header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-premium-dark switch-header-cs-class" data-class="bg-premium-dark header-text-light">
                                        </div>
                                        <div class="swatch-holder bg-happy-green switch-header-cs-class" data-class="bg-happy-green header-text-light">
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <h3 class="themeoptions-heading">
                            <div>Sidebar Options</div>
                            <button type="button" class="btn-pill btn-shadow btn-wide ml-auto btn btn-focus btn-sm switch-sidebar-cs-class" data-class="">
                                Restore Default
                            </button>
                        </h3>
                        <div class="p-3">
                            <ul class="list-group">
                                <li class="list-group-item">
                                    <h5 class="pb-2">Choose Color Scheme
                                    </h5>
                                    <div class="theme-settings-swatches">
                                        <div class="swatch-holder bg-primary switch-sidebar-cs-class" data-class="bg-primary sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-secondary switch-sidebar-cs-class" data-class="bg-secondary sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-success switch-sidebar-cs-class" data-class="bg-success sidebar-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-info switch-sidebar-cs-class" data-class="bg-info sidebar-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-warning switch-sidebar-cs-class" data-class="bg-warning sidebar-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-danger switch-sidebar-cs-class" data-class="bg-danger sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-light switch-sidebar-cs-class" data-class="bg-light sidebar-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-dark switch-sidebar-cs-class" data-class="bg-dark sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-focus switch-sidebar-cs-class" data-class="bg-focus sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-alternate switch-sidebar-cs-class" data-class="bg-alternate sidebar-text-light">
                                        </div>
                                        <div class="divider">
                                        </div>
                                        <div class="swatch-holder bg-vicious-stance switch-sidebar-cs-class" data-class="bg-vicious-stance sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-midnight-bloom switch-sidebar-cs-class" data-class="bg-midnight-bloom sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-night-sky switch-sidebar-cs-class" data-class="bg-night-sky sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-slick-carbon switch-sidebar-cs-class" data-class="bg-slick-carbon sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-asteroid switch-sidebar-cs-class" data-class="bg-asteroid sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-royal switch-sidebar-cs-class" data-class="bg-royal sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-warm-flame switch-sidebar-cs-class" data-class="bg-warm-flame sidebar-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-night-fade switch-sidebar-cs-class" data-class="bg-night-fade sidebar-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-sunny-morning switch-sidebar-cs-class" data-class="bg-sunny-morning sidebar-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-tempting-azure switch-sidebar-cs-class" data-class="bg-tempting-azure sidebar-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-amy-crisp switch-sidebar-cs-class" data-class="bg-amy-crisp sidebar-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-heavy-rain switch-sidebar-cs-class" data-class="bg-heavy-rain sidebar-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-mean-fruit switch-sidebar-cs-class" data-class="bg-mean-fruit sidebar-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-malibu-beach switch-sidebar-cs-class" data-class="bg-malibu-beach sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-deep-blue switch-sidebar-cs-class" data-class="bg-deep-blue sidebar-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-ripe-malin switch-sidebar-cs-class" data-class="bg-ripe-malin sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-arielle-smile switch-sidebar-cs-class" data-class="bg-arielle-smile sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-plum-plate switch-sidebar-cs-class" data-class="bg-plum-plate sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-happy-fisher switch-sidebar-cs-class" data-class="bg-happy-fisher sidebar-text-dark">
                                        </div>
                                        <div class="swatch-holder bg-happy-itmeo switch-sidebar-cs-class" data-class="bg-happy-itmeo sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-mixed-hopes switch-sidebar-cs-class" data-class="bg-mixed-hopes sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-strong-bliss switch-sidebar-cs-class" data-class="bg-strong-bliss sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-grow-early switch-sidebar-cs-class" data-class="bg-grow-early sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-love-kiss switch-sidebar-cs-class" data-class="bg-love-kiss sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-premium-dark switch-sidebar-cs-class" data-class="bg-premium-dark sidebar-text-light">
                                        </div>
                                        <div class="swatch-holder bg-happy-green switch-sidebar-cs-class" data-class="bg-happy-green sidebar-text-light">
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <h3 class="themeoptions-heading">
                            <div>Main Content Options</div>
                            <button type="button" class="btn-pill btn-shadow btn-wide ml-auto active btn btn-focus btn-sm">Restore Default
                            </button>
                        </h3>
                        <div class="p-3">
                            <ul class="list-group">
                                <li class="list-group-item">
                                    <h5 class="pb-2">Page Section Tabs
                                    </h5>
                                    <div class="theme-settings-swatches">
                                        <div role="group" class="mt-2 btn-group">
                                            <button type="button" class="btn-wide btn-shadow btn-primary btn btn-secondary switch-theme-class" data-class="body-tabs-line">
                                                Line
                                            </button>
                                            <button type="button" class="btn-wide btn-shadow btn-primary active btn btn-secondary switch-theme-class" data-class="body-tabs-shadow">
                                                Shadow
                                            </button>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>        
        
        <div class="app-main">
                <div class="app-sidebar sidebar-shadow">
                    <div class="app-header__logo">
                        <div class="logo-src"></div>
                        <div class="header__pane ml-auto">
                            <div>
                                <button type="button" class="hamburger close-sidebar-btn hamburger--elastic" data-class="closed-sidebar">
                                    <span class="hamburger-box">
                                        <span class="hamburger-inner"></span>
                                    </span>
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="app-header__mobile-menu">
                        <div>
                            <button type="button" class="hamburger hamburger--elastic mobile-toggle-nav">
                                <span class="hamburger-box">
                                    <span class="hamburger-inner"></span>
                                </span>
                            </button>
                        </div>
                    </div>
                    <div class="app-header__menu">
                        <span>
                            <button type="button" class="btn-icon btn-icon-only btn btn-primary btn-sm mobile-toggle-header-nav">
                                <span class="btn-icon-wrapper">
                                    <i class="fa fa-ellipsis-v fa-w-6"></i>
                                </span>
                            </button>
                        </span>
                    </div>    
                    
                    <!-- 좌측 메뉴바 -->
                    <div class="scrollbar-sidebar">
                        <div class="app-sidebar__inner">
                            <ul class="vertical-nav-menu">
                            
                                <li class="app-sidebar__heading">상품</li>
                                <li>
                                    <a href="itemMgr.nv">
                                        <i class="metismenu-icon pe-7s-diamond"></i>
                                        	상품관리
                                        <i class="metismenu-state-icon pe-7s-angle-down caret-left"></i>
                                    </a>
                                    <ul>
<!--                                     	<li> -->
<!--                                             <a href="../ItemMgr/itemMgrSearch.nv"> -->
<!--                                                 <i class="metismenu-icon"> -->
<!--                                                 </i>상품 검색 -->
<!--                                             </a> -->
<!--                                         </li> -->
                                        <li>
                                            <a href="../ItemMgr/itemMgrInsert.nv">
                                                <i class="metismenu-icon">
                                                </i>상품 추가
                                            </a>
                                        </li>
                                        <li>
                                            <a href="../ItemMgr/itemMgrModify.nv">
                                                <i class="metismenu-icon">
                                                </i>상품 수정
                                            </a>
                                        </li>
                                        <li>
                                            <a href="../ItemMgr/itemMgrDelete.nv">
                                                <i class="metismenu-icon">
                                                </i>상품 삭제
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                
                                <li class="app-sidebar__heading">주문</li>
                                <li>
                                    <a href="#">
                                        <i class="metismenu-icon pe-7s-diamond"></i>
                                        	주문관리
                                        <i class="metismenu-state-icon pe-7s-angle-down caret-left"></i>
                                    </a>
                                    <ul>
                                        <li>
                                            <a href="../OrderMgr/orderMgr.nv">
                                                <i class="metismenu-icon">
                                                </i>주문내역
                                            </a>
                                        </li>
                                        <li>
                                            <a href="../OrderMgr/deliveryMgr.nv">
                                                <i class="metismenu-icon">
                                                </i>배송상황
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                
                                <li class="app-sidebar__heading">통계</li>
                                <li>
                                    <a href="#">
                                        <i class="metismenu-icon pe-7s-diamond"></i>
                                        	인기 상품 조회
                                        <i class="metismenu-state-icon pe-7s-angle-down caret-left"></i>
                                    </a>
                                    <ul>
                                        <li>
                                            <a href="/novusShopping/Mgr/SearchFavorite/readCntTable.nv">
                                                <i class="metismenu-icon">
                                                </i>조회수
                                            </a>
                                        </li>
                                        <li>
                                            <a href="/novusShopping/Mgr/SearchFavorite/buyCntTable.nv">
                                                <i class="metismenu-icon">
                                                </i>구매수
                                            </a>
                                        </li>
                                        <li>
                                            <a href="/novusShopping/Mgr/SearchFavorite/reviewCntTable.nv">
                                                <i class="metismenu-icon">
                                                </i>리뷰수
                                            </a>
                                        </li>
                                        <li>
                                            <a href="/novusShopping/Mgr/SearchFavorite/refundCntTable.nv">
                                                <i class="metismenu-icon">
                                                </i>반품수
                                            </a>
                                        </li>
                                        <li>
                                            <a href="/novusShopping/Mgr/SearchFavorite/exchangeCntTable.nv">
                                                <i class="metismenu-icon">
                                                </i>교환수
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="metismenu-icon pe-7s-diamond"></i>
                                       		매출별 조회
                                        <i class="metismenu-state-icon pe-7s-angle-down caret-left"></i>
                                    </a>
                                    <ul>
                                        <li>
                                            <a href="../Statistics/daySell.nv">
                                                <i class="metismenu-icon">
                                                </i>일 매출
                                            </a>
                                        </li>
                                        <li>
                                            <a href="../Statistics/monthSell.nv">
                                                <i class="metismenu-icon">
                                                </i>월 매출
                                            </a>
                                        </li>
                                        <li>
                                            <a href="../Statistics/yearSell.nv">
                                                <i class="metismenu-icon">
                                                </i>연 매출
                                            </a>
                                        </li>
                                        <li>
                                            <a href="../Statistics/categorySell.nv">
                                                <i class="metismenu-icon">
                                                </i>카테고리별
                                            </a>
                                        </li>
                                        <li>
                                            <a href="../Statistics/itemtypeSell.nv">
                                                <i class="metismenu-icon">
                                                </i>품목별
                                            </a>
                                        </li>
                                        <li>
                                            <a href="../Statistics/brandSell.nv">
                                                <i class="metismenu-icon">
                                                </i>브랜드별
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                
                                <li class="app-sidebar__heading">광고</li>
                                <li>
                                    <a href="#">
                                        <i class="metismenu-icon pe-7s-diamond"></i>
                                        	배너 &amp; 팝업
                                        <i class="metismenu-state-icon pe-7s-angle-down caret-left"></i>
                                    </a>
                                    <ul>
                                        <li>
                                            <a href="../Event/bannerMgr.nv">
                                                <i class="metismenu-icon">
                                                </i>배너 관리
                                            </a>
                                        </li>
                                        <li>
                                            <a href="../Event/popupMgr.nv">
                                                <i class="metismenu-icon">
                                                </i>팝업 관리
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                
                                <li class="app-sidebar__heading">게시판관리</li>
                                <li>
                                    <a href="#">
                                        <i class="metismenu-icon pe-7s-diamond"></i>
                                        	구매 리뷰
                                        <i class="metismenu-state-icon pe-7s-angle-down caret-left"></i>
                                    </a>
                                    <ul>
                                        <li>
                                            <a href="..Mgr/mgrReviewAndQna/mgrReview.nv">
                                                <i class="metismenu-icon">
                                                </i>조회수 정렬
                                            </a>
                                        </li>
                                        <li>
                                            <a href="..Mgr/mgrReviewAndQna/mgrReview.nv">
                                                <i class="metismenu-icon">
                                                </i>작성일 정렬
                                            </a>
                                        </li>
                                        <li>
                                            <a href="..Mgr/mgrReviewAndQna/mgrReview.nv">
                                                <i class="metismenu-icon">
                                                </i>글번호 정렬
                                            </a>
                                        </li>
                                        <li>
                                            <a href="..Mgr/mgrReviewAndQna/mgrReview.nv">
                                                <i class="metismenu-icon">
                                                </i>평점높은순 정렬
                                            </a>
                                        </li>
                                        <li>
                                            <a href="..Mgr/mgrReviewAndQna/mgrReview.nv">
                                                <i class="metismenu-icon">
                                                </i>평점낮은순 정렬
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                
                                <li>
                                    <a href="#">
                                        <i class="metismenu-icon pe-7s-diamond"></i>
                                        1:1 문의
                                        <i class="metismenu-state-icon pe-7s-angle-down caret-left"></i>
                                    </a>
                                    <ul>
                                        <li>
                                            <a href="../mgrReviewAndQna/mgrQna.nv">
                                                <i class="metismenu-icon">
                                                </i>문의번호별
                                            </a>
                                        </li>
                                        <li>
                                            <a href="../mgrReviewAndQna/mgrQna.nv">
                                                <i class="metismenu-icon">
                                                </i>작성일 
                                            </a>
                                        </li>
                                        <li>
                                            <a href="../mgrReviewAndQna/mgrQna.nv">
                                                <i class="metismenu-icon">
                                                </i>카테고리
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                
                                <li class="app-sidebar__heading">직원</li>
                                <li>
                                    <a href="#">
                                        <i class="metismenu-icon pe-7s-diamond"></i>
                                        	직원관리
                                        <i class="metismenu-state-icon pe-7s-angle-down caret-left"></i>
                                    </a>
                                    <ul>
                                        <li>
                                            <a href="../Person/empTable.nv">
                                                <i class="metismenu-icon">
                                                </i>직원 정보 조회
                                            </a>
                                        </li>
                                        <li>
                                            <a href="../Person/exEmpTable.nv">
                                                <i class="metismenu-icon">
                                                </i>퇴사자 정보 조회
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                
                                <li class="app-sidebar__heading">회원</li>
                                <li>
                                    <a href="#">
                                        <i class="metismenu-icon pe-7s-diamond"></i>
                                        	회원관리
                                        <i class="metismenu-state-icon pe-7s-angle-down caret-left"></i>
                                    </a>
                                    <ul>
                                        <li>
                                            <a href="../Person/memTable.nv">
                                                <i class="metismenu-icon">
                                                </i>회원 정보 조회
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                
                            </ul>
                        </div>
                    </div>	<!-- 좌측메뉴바 끝 -->
                </div>    <!-- app-sidebar sidebar-shadow 끝 -->
                
                <!-- 본문 -->
                <div class="app-main__outer">
                    <div class="app-main__inner">
                        <div class="app-page-title">
                            <div class="page-title-wrapper">
                                <!-- 본문 제목 -->
                                <div class="page-title-heading">
                                    <div class="page-title-icon">
                                        <i class="pe-7s-drawer icon-gradient bg-happy-itmeo"></i>
                                    </div>
                                    <div> 상품 관리 현황
                                        <div class="page-title-subheading">재고 파악 - 수정</div>
                                    </div>
                                </div>
                                <!-- page-title-heading 끝 -->
                            </div>    <!-- page-title-wrapper 끝 -->
                        </div>   <!-- app-page-title 끝 -->
                        
                        <!-- 본문 테이블 시작 -->
                        <div>
                        	<a href='itemMgr.nv'><input type='button' value='리스트'></a>
	                        <a href='itemMgrInsert.nv'><input type='button' value='추가'></a>
	                      <!--   <a href='itemMgrModify.nv'><input type='button' value='수정'></a> -->
	                        <a href='itemMgrDelete.nv?itemName=${item.itemName}'><input type='button' value='삭제'></a>
                        </div><br/>
                        <div class="row">
                        <!-- 테이블 시작 -->
                            <div class="col-lg-6">
                                <div class="main-card mb-3 card">
                                    <div class="card-body"><h5 class="card-title"></h5>
                                        <form action="./itemModify.nv" method='post'> 
                                        <table class="mb-0 table">
                                      <!--   <thead align=center> -->
                                      	 <tr>
                							<td width="100">상품번호</td>
                							<td><input type="text" name='itemNo' readonly='readonly' value="${item.itemNo}"/></td>
            							</tr> 
            							<tr>
                							<td width="100">상 품 명</td>
                							<td><input type="text" name='itemName' value="${item.itemName}"/></td>
            							</tr>
            							<tr>
                							<td>카테고리</td>
                							<td>
												<select class='category' name='category' >
                                            		<option value="핸드폰">핸드폰</option>
                                            		<option value="태블릿">태블릿</option>
                                            		<option value="스마트워치">스마트워치</option>
                                            		<option value="노트북">노트북</option>
                                            		<option value="무선 이어폰">무선 이어폰</option>
                                            		<option value="기타 기기">기타 기기</option>
                                            	</select>
                							</td>
            							</tr>
            							<tr>
                							<td>브 랜 드</td>
                							<td>
												<select class='brandName' name='brandName' >
                                            		<option value="삼성">삼성</option>
                                            		<option value="애플">애플</option>
                                            		<option value="엘지">엘지</option>
                                            	</select>
                							</td>
            							</tr>
            							<tr>
                							<td>가     격</td>
                							<td><input type="text" name='price' value="${item.price}"/></td>
            							</tr>
            							<tr>
                							<td>수     량</td>
                							<td><input type="text" name='count' value="${item.count}"/></td>
            							</tr>
            							<tr>
                							<td>내     용</td>
                							<td><textarea cols="65" rows="15" name='itemContent' value="${item.itemContent}"/></textarea></td>
            							</tr>
            							<!-- <tr>
               								<td width="70">이미지</td><td align="left">
                							<input type="file" name='itemImg' maxlength="100" size="40"></td>
           						 		</tr> -->
                                        <tr><td><input type='submit' value='수정하기'></td></tr>
           						 		 </table>
                                        </form>
                                    </div>
                                </div>
                            </div>	<!-- 테이블 끝 -->
                        <!-- 본문 테이블 div class=row 끝 -->
                    </div> <!-- div app-main__inner 끝 -->
                    
                    <!-- footer 시작 -->
                    <!-- <div class="app-wrapper-footer">
                        <div class="app-footer">
                            <div class="app-footer__inner">
                                <div class="app-footer-left">
                                    <ul class="nav">
                                        <li class="nav-item">
                                            <a href="javascript:void(0);" class="nav-link">
                                                Footer Link 1
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="javascript:void(0);" class="nav-link">
                                                Footer Link 2
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="app-footer-right">
                                    <ul class="nav">
                                        <li class="nav-item">
                                            <a href="javascript:void(0);" class="nav-link">
                                                Footer Link 3
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a href="javascript:void(0);" class="nav-link">
                                                <div class="badge badge-success mr-1 ml-0">
                                                    <small>NEW</small>
                                                </div>
                                                Footer Link 4
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div> -->	 <!-- app-wrapper-footer 끝 -->   
             	</div> 
             </div>	<!-- 본문 app-main 끝 -->
        </div>
    </div>
<script type="text/javascript" src="../../resources/assets/scripts/main.js"></script></body>
</html>
