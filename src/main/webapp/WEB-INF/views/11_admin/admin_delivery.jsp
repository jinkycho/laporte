<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>la porte</title>

<link rel="preconnect" href="https://fonts.gstatic.com">

<!-- stylesheet -->
<link
	href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
<link rel="stylesheet" href="../assets/css/admin_common.css">
<link rel="stylesheet" href="../assets/css/admin_delivery.css">

<!-- javascript -->
<script src="http://code.jquery.com/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<!-- ajax-helper -->
<link rel="stylesheet" href="../assets/plugins/ajax/ajax_helper.css" />
<script src="../assets/plugins/ajax/ajax_helper.js"></script>
</head>

<body>
	<section>
		<nav id="navbar-white"
			class="navbar navbar-default navbar-fixed-top clearfix"
			role="navigation">
			<div class="navbar-header pull-left">
				<button class="slidebar-toggle" id="menu-toggle">
					<span class="sr-only">Toggle sidebar</span> <span class="icon-bar"></span>
					<span class="icon-bar"></span> <span class="icon-bar"></span>
				</button>
				<span><a class="navbar-brand" href="#">HOME</a></span>
			</div>
			<div class="navbar-button pull-right">
				<button class="nav_logout_btn">LOGOUT</button>
				<button class="nav_admin_btn">ADMINISTRATOR</button>
			</div>
		</nav>

		<div id="wrapper">
			<!-- Sidebar -->
			<div id="slidebar-white" class="slidebar-nav">
				<nav id="navbar-white" class="navbar navbar-default"
					role="navigation">
					<ul class="nav navbar-nav">
						<li class="brand_logo_box">
                            <a href="#" class="brand_logo">
								<span id="logo_img">la porte</span>
                            </a>
                        </li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"><i class="glyphicon glyphicon-edit"></i>
								홈 퍼블리싱 예약관리 <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="admin_resvappv.html"><i class="glyphicon glyphicon-ok"></i>
										예약 승인</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"><i class="glyphicon glyphicon-tags"></i>
								제품 관리 <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="stock_management.html"><i
                    class="glyphicon glyphicon-briefcase"></i> 상품 관리</a></li>
                <li><a href="product_add.html"><i
                      class="glyphicon glyphicon-plus"></i> 상품 등록</a></li>
								<li><a href="review_management.html"><i
										class="glyphicon glyphicon-star-empty"></i> 리뷰 관리</a></li>
								<li><a href="/"><i class="glyphicon glyphicon-usd"></i>
										매출 관리</a></li>
							</ul></li>
                            <li class="dropdown open">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="glyphicon glyphicon-user"></i>
                                    고객 관리 <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="admin_userlist.html">
                                        <i class="glyphicon glyphicon-user"></i> 회원정보 관리</a></li>
                                    <li><a href="admin_order.html">
                                        <i class="glyphicon glyphicon-shopping-cart"></i> 주문내역 관리</a></li>
                                    <li class="active"><a href="admin_delivery.html">
                                        <i class="glyphicon glyphicon-transfer"></i> 배송정보 관리</a></li>
                                    <li><a href="admin_cancel.html">
                                        <i class="glyphicon glyphicon-retweet"></i> 취소/교환/반품/환불</a></li>
                                    <li><a href="admin_coupon.html">
                                        <i class="glyphicon glyphicon-credit-card"></i> 쿠폰 </a></li>
                                    <li><a href="admin_point.html" >
                                        <i class="glyphicon glyphicon-usd"></i> 적립금</a></li>
                                    <li><a href="admin_visitors.html">
                                        <i class="glyphicon glyphicon-stats"></i> 방문자 수 관리</a></li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="glyphicon glyphicon-pencil"></i>
                                    문의 관리 <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="admin_qanda.html">
                                        <i class="glyphicon glyphicon-envelope"></i> 이메일 문의 관리</a></li>
                                    <li><a href="admin_fanda.html">
                                        <i class="glyphicon glyphicon-list-alt"></i> F&A 관리</a></li>
                                </ul>
                            </li>
					</ul>
				</nav>
				<!--/.navbar -->
			</div>
			<!--/.sidebar-nav -->

			<div id="page-wrapper6">
				<!-- Content Header (Page header) -->
				<div class="content-header">
					<div class="container-fluid">
						<div class="row mb-2">
							<div class="col-sm-6">
								<h2 class="m-0">배송 관리</h2>
							</div>
							<!-- /.col -->
							<div class="col-sm-6 clearfix">
								<ol class="breadcrumb pull-right">
									<li class="breadcrumb-item"><a href="#">주문 관리</a></li>
									<li class="breadcrumb-item active">배송 관리</li>
								</ol>
							</div>
							<!-- /.col -->
						</div>
						<!-- /.row -->
					</div>
					<!-- /.container-fluid -->
				</div>
				<!-- Page Content -->
				<div class="content_wrapper">
					<div class="container-fluid">
                        <div class="row">
                            <!-- tab -->
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="cart-header border-0" id="tab_container">
                                        <ol class="tab_box">
                                            <li id="tab_nopay" class="tab selected">
                                                <a href="#" class="tab_button">
                                                    <span class="tab_thum thum_deposit"></span>
                                                    <strong class="tab_title">입금 전</strong><br/>
                                                    <span class="count" id="order_nopay">0</span>
                                                </a>
                                            </li>
                                            <li id="tab_ready" class="tab">
                                                <a href="#" class="tab_button">
                                                    <span class="tab_thum thum_ready"></span>
                                                    <strong class="tab_title">배송 준비 중</strong><br/>
                                                    <span class="count order_nopay">0</span>
                                                </a>
                                            </li>
                                            <li id="tab_stanby" class="tab">
                                                <a href="#" class="tab_button">
                                                    <span class="tab_thum thum_stanby"></span>
                                                    <strong class="tab_title">배송 대기</strong><br/>
                                                    <span class="count order_stanby">0</span>
                                                </a>
                                            </li>
                                            <li id="tab_delivery" class="tab">
                                                <a href="#" class="tab_button">
                                                    <span class="tab_thum thum_delivery"></span>
                                                    <strong class="tab_title">배송 중</strong><br/>
                                                    <span class="count order_delivery">0</span>
                                                </a>
                                            </li>
                                            <li id="tab_complete" class="tab">
                                                <a href="#" class="tab_button">
                                                    <span class="tab_thum thum_complete"></span>
                                                    <strong class="tab_title">배송 완료</strong><br/>
                                                    <span class="count order_complete">0</span>
                                                </a>
                                            </li>
                                        </ol>
                                    </div>
                                </div>
                            </div>

                            <!-- 입금 전 -->
                            <div class="col-md-12 search_nopay">
                                <div class="card">
                                    <div class="card-header border-0">
                                        <div class="search_box">
                                            <table class="search_table">
                                                <tr>
                                                    <td class="search_title">검색어</td>
                                                    <td class="search_data">
                                                        <select>
                                                            <optgroup label="-검색항목선택-"></optgroup>
                                                            <option>주문번호</option>
                                                            <option>운송장번호</option>
                                                            <option>주문자명</option>
                                                            <option>주문자연락처</option>
                                                            <option>배송지</option>
                                                        </select>
                                                        <input id="order_name" type="text">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="search_title">기간</td>
                                                    <td class="search_data">
                                                        <input type="date" class="order_date"> ~
                                                        <input type="date" class="order_date">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="search_title">제품</td>
                                                    <td class="search_data">
                                                    <select>
                                                        <option>제품명</option>
                                                        <option>제품번호</option>
                                                    </select>
                                                    <input type="text" id="order_product">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="search_title">입금상태</td>
                                                    <td class="search_data">
                                                        <input type="radio" name="select_pay"><span> 전체</span>
                                                        <input type="radio" name="select_pay"><span> 입금전</span>
                                                        <input type="radio" name="select_pay"><span> 추가입금대기</span>
                                                        <input type="radio" name="select_pay"><span> 입금완료</span>
                                                    </td>
                                                </tr>
                                            </table>
                                            <a href="#" id="search_submit" class="submit_nopay">검색</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- 배송 준비 중 -->
                            <div class="col-md-12 search_ready">
                                <div class="card">
                                    <div class="card-header border-0">
                                        <div class="search_box">
                                            <table class="search_table">
                                                <tr>
                                                    <td class="search_title">검색어</td>
                                                    <td class="search_data">
                                                        <select>
                                                            <optgroup label="-검색항목선택-"></optgroup>
                                                            <option>주문번호</option>
                                                            <option>운송장번호</option>
                                                            <option>주문자명</option>
                                                            <option>주문자연락처</option>
                                                            <option>배송지</option>
                                                        </select>
                                                        <input id="order_name" type="text">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="search_title">기간</td>
                                                    <td class="search_data">
                                                        <input type="date" class="order_date"> ~
                                                        <input type="date" class="order_date">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="search_title">제품</td>
                                                    <td class="search_data">
                                                    <select>
                                                        <option>제품명</option>
                                                        <option>제품번호</option>
                                                    </select>
                                                    <input type="text" id="order_product">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="search_title">금액조건</td>
                                                    <td class="search_data">
                                                        <input type="text" id="order_price01">&emsp;~ 
                                                        <input type="text" id="order_price02">
                                                    </td>
                                                </tr>
                                            </table>
                                            <a href="#" id="search_submit" class="submit_ready">검색</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- 배송 대기 -->
                            <div class="col-md-12 search_stanby">
                                <div class="card">
                                    <div class="card-header border-0">
                                        <div class="search_box">
                                            <table class="search_table">
                                                <tr>
                                                    <td class="search_title">검색어</td>
                                                    <td class="search_data">
                                                        <select>
                                                            <optgroup label="-검색항목선택-"></optgroup>
                                                            <option>주문번호</option>
                                                            <option>운송장번호</option>
                                                            <option>주문자명</option>
                                                            <option>주문자연락처</option>
                                                            <option>배송지</option>
                                                        </select>
                                                        <input id="order_name" type="text">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="search_title">기간</td>
                                                    <td class="search_data">
                                                        <input type="date" class="order_date"> ~
                                                        <input type="date" class="order_date">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="search_title">제품</td>
                                                    <td class="search_data">
                                                    <select>
                                                        <option>제품명</option>
                                                        <option>제품번호</option>
                                                    </select>
                                                    <input type="text" id="order_product">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="search_title">배송업체</td>
                                                    <td class="search_data">
                                                    <input type="text" value="자사배송서비스" disabled>
                                                    </td>
                                                </tr>
                                            </table>
                                            <a href="#" id="search_submit" class="submit_stanby">검색</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- 배송 중 -->
                            <div class="col-md-12 search_delivery">
                                <div class="card">
                                    <div class="card-header border-0">
                                        <div class="search_box">
                                            <table class="search_table">
                                                <tr>
                                                    <td class="search_title">검색어</td>
                                                    <td class="search_data">
                                                        <select>
                                                            <optgroup label="-검색항목선택-"></optgroup>
                                                            <option>주문번호</option>
                                                            <option>운송장번호</option>
                                                            <option>주문자명</option>
                                                            <option>주문자연락처</option>
                                                            <option>배송지</option>
                                                        </select>
                                                        <input id="order_name" type="text">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="search_title">기간</td>
                                                    <td class="search_data">
                                                        <input type="date" class="order_date"> ~
                                                        <input type="date" class="order_date">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="search_title">제품</td>
                                                    <td class="search_data">
                                                    <select>
                                                        <option>제품명</option>
                                                        <option>제품번호</option>
                                                    </select>
                                                    <input type="text" id="order_product">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="search_title">배송업체</td>
                                                    <td class="search_data">
                                                    <input type="text" value="자사배송서비스" disabled>
                                                    </td>
                                                </tr>
                                            </table>
                                            <a href="#" id="search_submit" class="submit_delivery">검색</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- 배송 완료 -->
                            <div class="col-md-12 search_complete">
                                <div class="card">
                                    <div class="card-header border-0">
                                        <div class="search_box">
                                            <table class="search_table">
                                                <tr>
                                                    <td class="search_title">검색어</td>
                                                    <td class="search_data">
                                                        <select>
                                                            <optgroup label="-검색항목선택-"></optgroup>
                                                            <option>주문번호</option>
                                                            <option>운송장번호</option>
                                                            <option>주문자명</option>
                                                            <option>주문자연락처</option>
                                                            <option>배송지</option>
                                                        </select>
                                                        <input id="order_name" type="text">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="search_title">기간</td>
                                                    <td class="search_data">
                                                        <input type="date" class="order_date"> ~
                                                        <input type="date" class="order_date">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="search_title">제품</td>
                                                    <td class="search_data">
                                                    <select>
                                                        <option>제품명</option>
                                                        <option>제품번호</option>
                                                    </select>
                                                    <input type="text" id="order_product">
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="search_title">배송업체</td>
                                                    <td class="search_data">
                                                    <input type="text" value="자사배송서비스" disabled>
                                                    </td>
                                                </tr>
                                            </table>
                                            <a href="#" id="search_submit" class="submit_complete">검색</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- 입금 전 -->
                            <div class="col-md-12 content_nopay">
                                <div class="card">
                                    <div class="card-header border-0">
                                        <h3 class="card-title">입금 전</h3>
                                        <button type="button" class="btn btn-block btn-danger btn-sm pull-right select_delete">주문취소</button><br>
                                        <table class="table table-bordered delivery_table">
                                            <thead>
                                                <tr class="table_color">
                                                    <th style="width: 10px"><input type='checkbox' id="all_check"></th>
                                                    <th>주문번호</th>
                                                    <th>주문일</th>
                                                    <th>주문자</th>
                                                    <th>연락처</th>
                                                    <th>주문자정보</th>
                                                    <th>상품정보</th>
                                                    <th>수량</th>
                                                    <th>총 금액</th>
                                                    <th>입금액</th>
                                                    <th>처리여부</th>
                                                    <th>메모</th>
                                                </tr>
                                            </thead>
                                            <tbody id="delivery_list">
                                                <tr>
                                                    <td><input type='checkbox' class="check"></td>
                                                    <td>1234567</td>
                                                    <td>2020-12-30</td>
                                                    <td>홍 길동</td>
                                                    <td>010-1234-5678</td>
                                                    <td>서울시 용산구 어딘가</td>
                                                    <td>STUVA 스투바 / FRITIDS 프리티스</td>
                                                    <td>1</td>
                                                    <td>90,000</td>
                                                    <td>0</td>
                                                    <td>입금전</td>
                                                    <td class="clear">
                                                        <button type="button" class="btn btn-secondary btn-xs memo user_selected">user</button>
                                                        <p class="user_memo">출발전 미리 연락주세요</p>
                                                        <button type="button" class="btn btn-danger btn-xs memo admin_selected">admin</button>
                                                        <p class="admin_memo">화물운송</p>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <!--페이지 네이션-->
                                    <div class="content_footer">
                                        <button type="button" class="btn btn-block btn-info btn-sm select_complete">입금완료</button>
                                        <div class="pagination_box">
                                            <ul class="pagination pagination-sm m-0">
                                                <li class="page-item"><a class="page-link" href="#">&laquo;</a></li>
                                                <li class="page-item"><a class="page-link seleted" href="#">1</a></li>
                                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                                <li class="page-item"><a class="page-link" href="#">&raquo;</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <!--페이지네이션 끝-->
                                </div>
                            </div>
        
                            <!-- 배송 준비 중 -->
                            <div class="col-md-12 content_ready">
                                <div class="card">
                                    <div class="card-header border-0">
                                        <h3 class="card-title">배송 준비 중</h3>
                                        <button type="button" class="btn btn-block btn-danger btn-sm pull-right select_delete">주문취소</button><br>
                                        <table class="table table-bordered delivery_table">
                                            <thead>
                                                <tr class="table_color">
                                                    <th style="width: 10px"><input type='checkbox' id="all_check"></th>
                                                    <th>주문번호</th>
                                                    <th>주문일</th>
                                                    <th>주문자</th>
                                                    <th>연락처</th>
                                                    <th>주문자정보</th>
                                                    <th>배송일</th>
                                                    <th>운송장번호</th>
                                                    <th>상품정보</th>
                                                    <th>수량</th>
                                                    <th>총 금액</th>
                                                    <th>메모</th>
                                                </tr>
                                            </thead>
                                            <tbody id="delivery_list">
                                                <tr>
                                                    <td><input type='checkbox' class="check"></td>
                                                    <td>1234567</td>
                                                    <td>2020-12-30</td>
                                                    <td>홍 길동</td>
                                                    <td>010-1234-5678</td>
                                                    <td>서울시 용산구 어딘가</td>
                                                    <td>2020-12-31</td>
                                                    <td>12345678</td>
                                                    <td>STUVA 스투바 / FRITIDS 프리티스</td>
                                                    <td>1</td>
                                                    <td>90,000</td>
                                                    <td class="clear">
                                                        <button type="button" class="btn btn-secondary btn-xs memo user_selected">user</button>
                                                        <p class="user_memo">출발전 미리 연락주세요</p>
                                                        <button type="button" class="btn btn-danger btn-xs memo">admin</button>
                                                        <p class="admin_memo"></p>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <!--페이지 네이션-->
                                    <div class="content_footer">
                                        <button type="button" class="btn btn-block btn-info btn-sm select_complete">입금완료</button>
                                        <div class="pagination_box">
                                            <ul class="pagination pagination-sm m-0">
                                                <li class="page-item"><a class="page-link" href="#">&laquo;</a></li>
                                                <li class="page-item"><a class="page-link seleted" href="#">1</a></li>
                                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                                <li class="page-item"><a class="page-link" href="#">&raquo;</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <!--페이지네이션 끝-->
                                </div>
                            </div>
                            
                            <!-- 배송 대기 -->
                            <div class="col-md-12 content_stanby">
                                <div class="card">
                                    <div class="card-header border-0">
                                        <h3 class="card-title">배송 준비 중</h3>
                                        <button type="button" class="btn btn-block btn-danger btn-sm pull-right select_delete">주문취소</button><br>
                                        <table class="table table-bordered delivery_table">
                                            <thead>
                                                <tr class="table_color">
                                                    <th style="width: 10px"><input type='checkbox' id="all_check"></th>
                                                    <th>주문번호</th>
                                                    <th>주문일</th>
                                                    <th>주문자</th>
                                                    <th>연락처</th>
                                                    <th>주문자정보</th>
                                                    <th>배송일</th>
                                                    <th>운송장번호</th>
                                                    <th>상품정보</th>
                                                    <th>수량</th>
                                                    <th>총 금액</th>
                                                    <th>메모</th>
                                                </tr>
                                            </thead>
                                            <tbody id="delivery_list">
                                                <tr>
                                                    <td><input type='checkbox' class="check"></td>
                                                    <td>1234567</td>
                                                    <td>2020-12-30</td>
                                                    <td>홍 길동</td>
                                                    <td>010-1234-5678</td>
                                                    <td>서울시 용산구 어딘가</td>
                                                    <td>2020-12-31</td>
                                                    <td>12345678</td>
                                                    <td>STUVA 스투바 / FRITIDS 프리티스</td>
                                                    <td>1</td>
                                                    <td>90,000</td>
                                                    <td class="clear">
                                                        <button type="button" class="btn btn-secondary btn-xs memo user_selected">user</button>
                                                        <p class="user_memo">출발전 미리 연락주세요</p>
                                                        <button type="button" class="btn btn-danger btn-xs memo admin_selected">admin</button>
                                                        <p class="admin_memo">화물운송</p>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <!--페이지 네이션-->
                                    <div class="content_footer">
                                        <button type="button" class="btn btn-block btn-info btn-sm select_complete">입금완료</button>
                                        <div class="pagination_box">
                                            <ul class="pagination pagination-sm m-0">
                                                <li class="page-item"><a class="page-link" href="#">&laquo;</a></li>
                                                <li class="page-item"><a class="page-link seleted" href="#">1</a></li>
                                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                                <li class="page-item"><a class="page-link" href="#">&raquo;</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <!--페이지네이션 끝-->
                                </div>
                            </div>

                            <!-- 배송 중 -->
                            <div class="col-md-12 content_delivery">
                                <div class="card">
                                    <div class="card-header border-0">
                                        <h3 class="card-title">배송 준비 중</h3>
                                        <button type="button" class="btn btn-block btn-danger btn-sm pull-right select_delete">주문취소</button><br>
                                        <table class="table table-bordered">
                                            <thead>
                                                <tr class="table_color">
                                                    <th style="width: 10px"><input type='checkbox' id="all_check"></th>
                                                    <th>주문번호</th>
                                                    <th>주문일</th>
                                                    <th>주문자</th>
                                                    <th>연락처</th>
                                                    <th>주문자정보</th>
                                                    <th>배송일</th>
                                                    <th>운송장번호</th>
                                                    <th>상품정보</th>
                                                    <th>수량</th>
                                                    <th>총 금액</th>
                                                    <th>메모</th>
                                                </tr>
                                            </thead>
                                            <tbody id="delivery_list">
                                                <tr>
                                                    <td><input type='checkbox' class="check"></td>
                                                    <td>1234567</td>
                                                    <td>2020-12-30</td>
                                                    <td>홍 길동</td>
                                                    <td>010-1234-5678</td>
                                                    <td>서울시 용산구 어딘가</td>
                                                    <td>2020-12-31</td>
                                                    <td>12345678</td>
                                                    <td>STUVA 스투바 / FRITIDS 프리티스</td>
                                                    <td>1</td>
                                                    <td>90,000</td>
                                                    <td class="clear">
                                                        <button type="button" class="btn btn-secondary btn-xs memo user_selected">user</button>
                                                        <p class="user_memo">출발전 미리 연락주세요</p>
                                                        <button type="button" class="btn btn-danger btn-xs memo admin_selected">admin</button>
                                                        <p class="admin_memo">화물운송</p>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <!--페이지 네이션-->
                                    <div class="content_footer">
                                        <button type="button" class="btn btn-block btn-info btn-sm select_complete">입금완료</button>
                                        <div class="pagination_box">
                                            <ul class="pagination pagination-sm m-0">
                                                <li class="page-item"><a class="page-link" href="#">&laquo;</a></li>
                                                <li class="page-item"><a class="page-link seleted" href="#">1</a></li>
                                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                                <li class="page-item"><a class="page-link" href="#">&raquo;</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <!--페이지네이션 끝-->
                                </div>
                            </div>

                            <!-- 배송 완료 -->
                            <div class="col-md-12 content_complete">
                                <div class="card">
                                    <div class="card-header border-0">
                                        <h3 class="card-title">배송 준비 중</h3>
                                        <button type="button" class="btn btn-block btn-danger btn-sm pull-right select_delete">주문취소</button><br>
                                        <table class="table table-bordered delivery_table">
                                            <thead>
                                                <tr class="table_color">
                                                    <th style="width: 10px"><input type='checkbox' id="all_check"></th>
                                                    <th>주문번호</th>
                                                    <th>주문일</th>
                                                    <th>주문자</th>
                                                    <th>연락처</th>
                                                    <th>주문자정보</th>
                                                    <th>배송일</th>
                                                    <th>운송장번호</th>
                                                    <th>상품정보</th>
                                                    <th>수량</th>
                                                    <th>총 금액</th>
                                                    <th>메모</th>
                                                </tr>
                                            </thead>
                                            <tbody id="delivery_list">
                                                <tr>
                                                    <td><input type='checkbox' class="check"></td>
                                                    <td>1234567</td>
                                                    <td>2020-12-30</td>
                                                    <td>홍 길동</td>
                                                    <td>010-1234-5678</td>
                                                    <td>서울시 용산구 어딘가</td>
                                                    <td>2020-12-31</td>
                                                    <td>12345678</td>
                                                    <td>STUVA 스투바 / FRITIDS 프리티스</td>
                                                    <td>1</td>
                                                    <td>90,000</td>
                                                    <td class="clear">
                                                        <button type="button" class="btn btn-secondary btn-xs memo user_selected">user</button>
                                                        <p class="user_memo">출발전 미리 연락주세요</p>
                                                        <button type="button" class="btn btn-danger btn-xs memo admin_selected">admin</button>
                                                        <p class="admin_memo">화물운송</p>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <!--페이지 네이션-->
                                    <div class="content_footer">
                                        <button type="button" class="btn btn-block btn-info btn-sm select_complete">입금완료</button>
                                        <div class="pagination_box">
                                            <ul class="pagination pagination-sm m-0">
                                                <li class="page-item"><a class="page-link" href="#">&laquo;</a></li>
                                                <li class="page-item"><a class="page-link seleted" href="#">1</a></li>
                                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                                <li class="page-item"><a class="page-link" href="#">&raquo;</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <!--페이지네이션 끝-->
                                </div>
                            </div>
                        </div>
                    </div>
				</div>
			</div>
		</div>
		<!-- /wrapper  끝-->
	</section>
	<footer></footer>

    <script src="../plugins/sweetalert/sweetalert2.all.min.js"></script>
    <script type="text/javascript">
        $("#menu-toggle").click(function(e) {
            e.preventDefault();
            $("#wrapper").toggleClass("toggled");
        });
        
        $(function() {
            $(document).ready(function() {
            $(".content_ready").hide();
            $(".content_stanby").hide();
            $(".content_delivery").hide();
            $(".content_complete").hide();
            $(".search_ready").hide();
            $(".search_stanby").hide();
            $(".search_delivery").hide();
            $(".search_complete").hide();
            });

            // 탭 아이콘 클릭시 색 변화
            $(document).on("click", ".tab", function(e) {
            e.preventDefault();

            $(this).addClass("selected");
            $(".tab").not(this).removeClass("selected");
            });

            // 탭 아이콘 클릭시 내용 전환
            $(document).on("click", "#tab_nopay", function(e) {
            e.preventDefault();

            $(".content_nopay").show();
            $(".content_ready").hide();
            $(".content_stanby").hide();
            $(".content_delivery").hide();
            $(".content_complete").hide();
            $(".search_nopay").show();
            $(".search_ready").hide();
            $(".search_stanby").hide();
            $(".search_delivery").hide();
            $(".search_complete").hide();
            });

            $(document).on("click", "#tab_ready", function(e) {
            e.preventDefault();

            $(".content_nopay").hide();
            $(".content_ready").show();
            $(".content_stanby").hide();
            $(".content_delivery").hide();
            $(".content_complete").hide();
            $(".search_nopay").hide();
            $(".search_ready").show();
            $(".search_stanby").hide();
            $(".search_delivery").hide();
            $(".search_complete").hide();
            });

            $(document).on("click", "#tab_stanby", function(e) {
            e.preventDefault();

            $(".content_nopay").hide();
            $(".content_ready").hide();
            $(".content_stanby").show();
            $(".content_delivery").hide();
            $(".content_complete").hide();
            $(".search_nopay").hide();
            $(".search_ready").hide();
            $(".search_stanby").show();
            $(".search_delivery").hide();
            $(".search_complete").hide();
            });

            $(document).on("click", "#tab_delivery", function(e) {
            e.preventDefault();

            $(".content_nopay").hide();
            $(".content_ready").hide();
            $(".content_stanby").hide();
            $(".content_delivery").show();
            $(".content_complete").hide();
            $(".search_nopay").hide();
            $(".search_ready").hide();
            $(".search_stanby").hide();
            $(".search_delivery").show();
            $(".search_complete").hide();
            });

            $(document).on("click", "#tab_complete", function(e) {
            e.preventDefault();

            $(".content_nopay").hide();
            $(".content_ready").hide();
            $(".content_stanby").hide();
            $(".content_delivery").hide();
            $(".content_complete").show();
            $(".search_nopay").hide();
            $(".search_ready").hide();
            $(".search_stanby").hide();
            $(".search_delivery").hide();
            $(".search_complete").show();
            });
        });

        // 전체 체크
        $("#all_check").change(function() {
            $(".check").prop('checked', $(this).prop('checked'));
        });

        // 주문취소 버튼
        $(".select_delete").click(function () {
            var delete_check_list = $(".check:checked");
            if(delete_check_list.length == 0){
                alert("선택된 항목이 없습니다.");
                return false;
            }
            //배열의 길이만큼 반복한다.
            for (var i=0; i<delete_check_list.length; i++) {
                // i번째 HTML요소를 jQuery객체로 변환하여 입력값을 취한다.
                var ckeck_product = $(delete_check_list[i]);
                // 체크된 항목 삭제
                $(ckeck_product).parents('tr').remove();
            };
            
            //상품 목록이 하나도 없을시 
            if(product_list_num == 0) {
                console.log(product_list_num);
                $('#product_list').html('<tr><td colspan="12">주문 내역이 없습니다.</td></tr>');
            }
        });
    </script>
</body>
</html>