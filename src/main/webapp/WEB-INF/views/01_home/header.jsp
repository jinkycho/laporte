<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<header class="nav-down">
        <div class="hd_container">
            <div class="hd_iconbox">
                <div class="hd_icon">
                    <a href="../01_home/home.html" id="hd_logo"><span id="hd_logo_icon"></span></a>
                    <ul class="hd_list">
                        <li><a href="../02_mypage/mypage.html"><span id="hd_mypage_icon"></span></a></li>
                        <li><a href="../05_wishlist/wishlist.html"><span id="hd_wishlist_icon"></span></a></li>
                        <li><a href="../06_cart/cart.html"><span id="hd_cart_icon"></span></a></li>
                        <li><a href="#"><span id="hd_menu_icon"></span></a></li>
                    </ul>
                </div>
            </div>
        </div>
        
		<!-- 메뉴 모달창 -->
        <!-- 화면에 표시될 원본 보기 영역 - 기본적으로 숨겨진 상태. -->
        <div class="hd_gray_layer" id="hd_menu_background"></div>
        <div class="hd_over_layer" id="hd_menu_front">
            <!-- 메뉴 로고 및 아이콘 -->
            <div id="hd_menu_header">
                <div id="hd_menu_logo">
                    <a href="../01_home/home.html"><span id="hd_menu_logoicon"></span></a>
                </div>
                <div id="hd_menu_close">
                    <a href="#"><span><b>&times;</b></span></a>
                </div>
            </div>
            <!-- 메뉴목록 -->
            <div>
                <ul id="hd_menu_ul1" class="hd_menu_ul">
                    <li id="hd_menu_product"><a href="#"><h2>모든제품</h2></a></li>
                    <li><a href="../03_detail/allproduct1.html">가구</a></li>
                    <li><a href="../03_detail/allproduct2.html">소파 / 암체어</a></li>
                    <li><a href="../03_detail/allproduct3.html">침대</a></li>
                    <li><a href="../03_detail/allproduct4.html">수납 / 정리</a></li>
                    <li><a href="../03_detail/allproduct5.html">주방가구 / 용품</a></li>
                    <li><a href="../03_detail/allproduct6.html">조명</a></li>
                </ul>
                <ul id="hd_menu_ul2" class="hd_menu_ul">
                    <li><a href="../10_event/event.html">이달의 혜택</a></li>
                </ul>
                <ul id="hd_menu_ul3" class="hd_menu_ul">
                    <li><a href="../08_reserve/showroom_info.html">컨설팅 쇼룸 정보</a></li>
                    <li><a href="../09_cs/cs.html">고객지원</a></li>
                    <li><a href="../02_mypage/order.html">배송조회</a></li>
                    <li><a href="../02_mypage/mypage.html">내 프로필</a></li>
                </ul>
            </div>
        </div>
    </header>