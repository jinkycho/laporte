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
<link rel="stylesheet" href="../assets/css/admin_cancel.css">

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
								<li><a href="/"><i
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
                                    <li><a href="admin_delivery.html">
                                        <i class="glyphicon glyphicon-transfer"></i> 배송정보 관리</a></li>
                                    <li class="active"><a href="admin_cancel.html">
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
								<h2 class="m-0">취소/교환/반품/환불</h2>
							</div>
							<!-- /.col -->
							<div class="col-sm-6 clearfix">
								<ol class="breadcrumb pull-right">
									<li class="breadcrumb-item"><a href="#">주문 관리</a></li>
									<li class="breadcrumb-item active">취소/교환/반품/환불</li>
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
                            <!-- 탭 -->
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="cart-header border-0" id="tab_container">
                                        <ol class="tab_box">
                                            <li id="tab_cancel" class="tab selected">
                                                <a href="#" class="tab_button">
                                                    <span class="tab_thum thum_cancel"></span>
                                                    <strong class="tab_title">취소</strong>
                                                    <span class="count">0</span>
                                                </a>
                                            </li>
                                            <li id="tab_change" class="tab">
                                                <a href="#" class="tab_button">
                                                    <span class="tab_thum thum_change"></span>
                                                    <strong class="tab_title">교환</strong>
                                                    <span class="count">0</span>
                                                </a>
                                            </li>
                                            <li id="tab_return" class="tab">
                                                <a href="#" class="tab_button">
                                                    <span class="tab_thum thum_return"></span>
                                                    <strong class="tab_title">반품</strong>
                                                    <span class="count">0</span>
                                                </a>
                                            </li>
                                            <li id="tab_refund" class="tab">
                                                <a href="#" class="tab_button">
                                                    <span class="tab_thum thum_refund"></span>
                                                    <strong class="tab_title">환불</strong>
                                                    <span class="count">0</span>
                                                </a>
                                            </li>
                                        </ol>
                                    </div>
                                </div>
                            </div>

                            <!-- 취소 검색 -->
                            <div class="col-md-12 search_cancel">
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
                                                    <td class="search_title">주문상태</td>
                                                    <td class="search_data">
                                                        <input type="checkbox" class="order_allcheck"><span> 전체</span>
                                                        <input type="checkbox" class="order_check"><span> 취소신청</span>
                                                        <input type="checkbox" class="order_check"><span> 취소처리중</span>
                                                        <input type="checkbox" class="order_check"><span> 취소완료</span>
                                                    </td>
                                                </tr>
                                            </table>
                                            <a href="#" id="search_submit" class="submit_cancel">검색</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- 교환 검색 -->
                            <div class="col-md-12 search_change">
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
                                                    <td class="search_title">주문상태</td>
                                                    <td class="search_data">
                                                        <input type="checkbox" class="order_allcheck"><span> 전체</span>
                                                        <input type="checkbox" class="order_check"><span> 교환신청</span>
                                                        <input type="checkbox" class="order_check"><span> 교환처리중</span>
                                                        <input type="checkbox" class="order_check"><span> 교환완료</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="search_title">수거신청상태</td>
                                                    <td class="search_data">
                                                    <input type="text" value="자사운송서비스" disabled>
                                                    <select>
                                                        <optgroup label="-수거신청상태-"></optgroup>
                                                            <option>수거미신청</option>
                                                            <option>수거접수 전</option>
                                                            <option>수거접수실패</option>
                                                            <option>수거접수 완료</option>
                                                    </select>
                                                    </td>
                                                </tr>
                                            </table>
                                            <a href="#" id="search_submit" class="submit_change">검색</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- 반품 검색 -->
                            <div class="col-md-12 search_return">
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
                                                    <td class="search_title">주문상태</td>
                                                    <td class="search_data">
                                                        <input type="checkbox" class="order_allcheck"><span> 전체</span>
                                                        <input type="checkbox" class="order_check"><span> 반품신청</span>
                                                        <input type="checkbox" class="order_check"><span> 반품처리중</span>
                                                        <input type="checkbox" class="order_check"><span> 반품완료</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="search_title">수거신청상태</td>
                                                    <td class="search_data">
                                                    <input type="text" value="자사배송서비스" disabled>
                                                    <select>
                                                        <optgroup label="-수거신청상태-"></optgroup>
                                                            <option>수거미신청</option>
                                                            <option>수거접수 전</option>
                                                            <option>수거접수실패</option>
                                                            <option>수거접수 완료</option>
                                                    </select>
                                                    </td>
                                                </tr>
                                            </table>
                                            <a href="#" id="search_submit" class="submit_return">검색</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- 환불 검색 -->
                            <div class="col-md-12 search_refund">
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
                                                    <td class="search_title">주문상태</td>
                                                    <td class="search_data">
                                                        <input type="checkbox" class="order_allcheck"><span> 전체</span>
                                                        <input type="checkbox" class="order_check"><span> 환불신청</span>
                                                        <input type="checkbox" class="order_check"><span> 환불완료</span>
                                                        <input type="checkbox" class="order_check"><span> 환불보류</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="search_title">환불수단</td>
                                                    <td class="search_data">
                                                        <select>
                                                            <option>전체</option>
                                                            <option>카드</option>
                                                            <option>무통장입금</option>
                                                            <option>실시간계좌이체</option>
                                                            <option>휴대폰결제</option>
                                                        </select>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="search_title">취소상태</td>
                                                    <td class="search_data">
                                                        <select>
                                                            <option>전체</option>
                                                            <option>취소전</option>
                                                            <option>취소완료</option>
                                                        </select>
                                                    </td>
                                                </tr>
                                            </table>
                                            <a href="#" id="search_submit" class="submit_refund">검색</a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- 취소 -->
                            <div class="col-md-12 content_cancel">
                                <div class="card">
                                    <div class="card-header border-0">
                                        <h3 class="card-title">취소</h3><br/>
                                        <table class="table table-bordered">
                                            <thead>
                                                <tr class="table_color">
                                                    <th style="width: 10px"><input type='checkbox' id="all_check"></th>
                                                    <th>취소신청일</th>
                                                    <th>주문번호</th>
                                                    <th>주문자</th>
                                                    <th>상품정보</th>
                                                    <th>수량</th>
                                                    <th>취소 금액</th>
                                                    <th>결제수단</th>
                                                    <th>주문상태</th>
                                                    <th>취소처리</th>
                                                    <th>메모</th>
                                                </tr>
                                            </thead>
                                            <tbody id="cancel_list">
                                                <tr>
                                                    <td><input type='checkbox' class="check"></td>
                                                    <td>2012-01-02</td>
                                                    <td>1234567</td>
                                                    <td>홍 길동</td>
                                                    <td>STUVA 스투바 / FRITIDS 프리티스</td>
                                                    <td>1</td>
                                                    <td>90,000</td>
                                                    <td>카드</td>
                                                    <td>입금전</td>
                                                    <td>처리중</td>
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
                            
                            <!-- 교환 -->
                            <div class="col-md-12 content_change">
                                <div class="card">
                                    <div class="card-header border-0">
                                        <h3 class="card-title">교환</h3><br/>
                                        <table class="table table-bordered">
                                            <thead>
                                                <tr class="table_color">
                                                    <th style="width: 10px"><input type='checkbox' id="all_check"></th>
                                                    <th>교환신청일</th>
                                                    <th>주문번호</th>
                                                    <th>주문자</th>
                                                    <th>상품정보</th>
                                                    <th>수량</th>
                                                    <th>주문상태</th>
                                                    <th>교환처리</th>
                                                    <th>메모</th>
                                                </tr>
                                            </thead>
                                            <tbody id="cancel_list">
                                                <tr>
                                                    <td><input type='checkbox' class="check"></td>
                                                    <td>2012-01-02</td>
                                                    <td>1234567</td>
                                                    <td>홍 길동</td>
                                                    <td>STUVA 스투바 / FRITIDS 프리티스</td>
                                                    <td>1</td>
                                                    <td>입금전</td>
                                                    <td>처리중</td>
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

                            <!-- 반품 -->
                            <div class="col-md-12 content_return">
                                <div class="card">
                                    <div class="card-header border-0">
                                        <h3 class="card-title">반품</h3><br/>
                                        <table class="table table-bordered">
                                            <thead>
                                                <tr class="table_color">
                                                    <th style="width: 10px"><input type='checkbox' id="all_check"></th>
                                                    <th>반품신청일</th>
                                                    <th>주문번호</th>
                                                    <th>주문자</th>
                                                    <th>상품정보</th>
                                                    <th>수량</th>
                                                    <th>운송장번호</th>
                                                    <th>주문상태</th>
                                                    <th>반품처리</th>
                                                    <th>메모</th>
                                                </tr>
                                            </thead>
                                            <tbody id="cancel_list">
                                                <tr>
                                                    <td><input type='checkbox' class="check"></td>
                                                    <td>2012-01-02</td>
                                                    <td>1234567</td>
                                                    <td>홍 길동</td>
                                                    <td>STUVA 스투바 / FRITIDS 프리티스</td>
                                                    <td>1</td>
                                                    <td>12345678</td>
                                                    <td>입금전</td>
                                                    <td>처리중</td>
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

                            <!-- 환불 -->
                            <div class="col-md-12 content_refund">
                                <div class="card">
                                    <div class="card-header border-0">
                                        <h3 class="card-title">환불</h3><br/>
                                        <table class="table table-bordered">
                                            <thead>
                                                <tr class="table_color">
                                                    <th style="width: 10px"><input type='checkbox' id="all_check"></th>
                                                    <th>주문일</th>
                                                    <th>환불신청일</th>
                                                    <th>주문번호</th>
                                                    <th>주문자</th>
                                                    <th>총 수량</th>
                                                    <th>총 환불액</th>
                                                    <th>실 환불액</th>
                                                    <th>쿠폰</th>
                                                    <th>적립금</th>
                                                    <th>환불수단</th>
                                                    <th>처리상태</th>
                                                    <th>취소처리</th>
                                                    <th>메모</th>
                                                </tr>
                                            </thead>
                                            <tbody id="cancel_list">
                                                <tr>
                                                    <td><input type='checkbox' class="check"></td>
                                                    <td>2020-12-31</td>
                                                    <td>2021-01-02</td>
                                                    <td>1234567</td>
                                                    <td>홍 길동</td>
                                                    <td>1</td>
                                                    <td>90,000</td>
                                                    <td>80,000</td>
                                                    <td>0</td>
                                                    <td>10,000</td>
                                                    <td>카드</td>
                                                    <td>처리중</td>
                                                    <td>처리중</td>
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

	<script type="text/javascript">
		$("#menu-toggle").click(function(e) {
			e.preventDefault();
			$("#wrapper").toggleClass("toggled");
        });
        
        $(function() {
            $(document).ready(function() {
            $(".content_change").hide();
            $(".content_return").hide();
            $(".content_refund").hide();
            $(".search_change").hide();
            $(".search_return").hide();
            $(".search_refund").hide();
            });

            // 탭 아이콘 클릭시 색 변화
            $(document).on("click", ".tab", function(e) {
            e.preventDefault();

            $(this).addClass("selected");
            $(".tab").not(this).removeClass("selected");
            });

            // 탭 아이콘 클릭시 내용 전환
            $(document).on("click", "#tab_cancel", function(e) {
            e.preventDefault();

            $(".content_cancel").show();
            $(".content_change").hide();
            $(".content_return").hide();
            $(".content_refund").hide();
            $(".search_cancel").show();
            $(".search_change").hide();
            $(".search_return").hide();
            $(".search_refund").hide();
            });

            $(document).on("click", "#tab_change", function(e) {
            e.preventDefault();

            $(".content_cancel").hide();
            $(".content_change").show();
            $(".content_return").hide();
            $(".content_refund").hide();
            $(".search_cancel").hide();
            $(".search_change").show();
            $(".search_return").hide();
            $(".search_refund").hide();
            });

            $(document).on("click", "#tab_return", function(e) {
            e.preventDefault();

            $(".content_cancel").hide();
            $(".content_change").hide();
            $(".content_return").show();
            $(".content_refund").hide();
            $(".search_cancel").hide();
            $(".search_change").hide();
            $(".search_return").show();
            $(".search_refund").hide();
            });

            $(document).on("click", "#tab_refund", function(e) {
            e.preventDefault();

            $(".content_cancel").hide();
            $(".content_change").hide();
            $(".content_return").hide();
            $(".content_refund").show();
            $(".search_cancel").hide();
            $(".search_change").hide();
            $(".search_return").hide();
            $(".search_refund").show();
            });
        });

        // 전체 체크
        $(".order_allcheck").change(function() {
            $(".order_check").prop('checked', $(this).prop('checked'));
        });

        $("#all_check").change(function() {
            $(".check").prop('checked', $(this).prop('checked'));
        });
	</script>
</body>
</html>