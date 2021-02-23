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
                                                    <strong class="tab_title">결제확인</strong><br/>
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

                            <!-- 결제확인 -->
                            <div class="col-md-12 content_nopay">
                                <div class="card">
                                    <div class="card-header border-0">
                                        <h3 class="card-title">결제확인</h3>
                                        <button type="button" class="btn btn-block btn-danger btn-sm pull-right select_delete">주문취소</button><br>
                                        <table class="table table-bordered delivery_table">
                                            <thead>
                                                <tr class="table_color">
                                                    <th style="width: 10px"><input type='checkbox' id="all_check"></th>
                                                    <th>주문번호</th>
                                                    <th>주문일</th>
                                                    <th>주문자</th>
                                                    <th>연락처</th>
                                                    <th>주소</th>
                                                    <th>상품정보</th>
                                                    <th>총 금액</th>
                                                    <th>배송희망날짜</th>
                                                    <th>결제수단</th>
                                                    <th>결제상태</th>
                                                    <th>메모</th>
                                                </tr>
                                            </thead>
                                            <tbody id="delivery_list">
                                            	<c:choose>
                                            		<c:when test="${orderlistOutput == null || fn:length(orderlistOutput) == 0}">
									                    <tr>
									                        <td colspan="12" align="center">조회결과가 없습니다.</td>
									                    </tr>
								                    </c:when>
								                    <c:otherwise>
								                    	<c:forEach var="orderitem" items="${orderlistOutput }" varStatus="status">
								                    		<c:if test="${orderitem.paystatus=='N' || orderitem.paytype=='C' || orderitem.paytype=='M' || orderitem.paytype=='D2' }">
				                                                <tr>
				                                                    <td><input type='checkbox' class="check" name='chkn[]' value="${orderitem.orderno }" data-orderno="${orderitem.orderno }"></td>
				                                                    <td>${orderitem.orderno }</td>
				                                                    <td>
				                                                    	<fmt:parseDate value="${orderitem.regdate}" var="regdate" pattern="yyyy-MM-dd" />
				                                                    	<fmt:formatDate value="${regdate }" pattern="yyyy-MM-dd" />
			                                                    	</td>
				                                                    <td>${orderitem.name }</td>
				                                                    <td>
				                                                    	0<fmt:formatNumber var="phoneno" value="${orderitem.phoneno }" pattern="###,####,####" />
				                                                    	<c:out value="${fn:replace(phoneno, ',', '-') }" />
			                                                    	</td>
				                                                    <td>${orderitem.addr1 }, ${orderitem.addr2 }</td>
				                                                    <td>상품 이름----------</td>
				                                                    <td>
				                                                    	&#8361; <fmt:formatNumber pattern="###,###,###" value='${orderitem.totalprice }'/>
				                                                    </td>
				                                                    <td>
				                                                    	<fmt:parseDate value="${orderitem.deldate}" var="deldate" pattern="yyyy-MM-dd" />
				                                                    	<fmt:formatDate value="${deldate }" pattern="yyyy-MM-dd" />
				                                                    </td>
				                                                    <td>
				                                                    	<c:if test="${orderitem.paytype=='C' }">
				                                                    		신용카드
				                                                    	</c:if>
				                                                    	<c:if test="${orderitem.paytype=='D' }">
				                                                    		무통장입금
				                                                    	</c:if>
				                                                    	<c:if test="${orderitem.paytype=='M' }">
				                                                    		휴대폰결제
				                                                    	</c:if>
				                                                    	<c:if test="${orderitem.paytype=='D2' }">
				                                                    		실시간계좌이체
				                                                    	</c:if>
				                                                    </td>
				                                                    <td>
				                                                    	<c:if test="${orderitem.paystatus=='N' }">
				                                                    		결제전
				                                                    	</c:if>
				                                                    	<c:if test="${orderitem.paystatus=='Y' }">
				                                                    		결제완료
				                                                    	</c:if>
				                                                    </td>
				                                                    <td width='54' align='center' class="clear">
				                                                    	<c:choose>
				                                                    	<c:when test="${orderitem.request != null }">
					                                                        <button type="button" class="btn btn-secondary btn-xs memo user_selected">user</button>
					                                                        <p class="user_memo">
					                                                        	${orderitem.request }
				                                                        	</p>
			                                                        	</c:when>
			                                                        	<c:otherwise>
					                                                        <button type="button" class="btn btn-secondary btn-xs memo">user</button>
			                                                        	</c:otherwise>
			                                                        	</c:choose>
				                                                    </td>
				                                                </tr>
			                                                </c:if>
		                                                </c:forEach>
	                                                </c:otherwise>
                                                </c:choose>
                                            </tbody>
                                        </table>
                                        <button type="button" class="btn btn-block btn-primary btn-sm select_complete" id="paytypechange">결제완료</button>
                                        <button type="button" class="btn btn-block btn-primary btn-sm select_complete" id="delivery_ready">배송준비</button>
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
                                                    <th>총 금액</th>
                                                    <th>메모</th>
                                                </tr>
                                            </thead>
                                            <tbody id="delivery_list">
	                                            <c:choose>
                                            		<c:when test="${output == null || fn:length(output) == 0}">
									                    <tr>
									                        <td colspan="10" align="center">조회결과가 없습니다.</td>
									                    </tr>
								                    </c:when>
								                    <c:otherwise>
								                    	<c:forEach var="item" items="${output }" varStatus="status">
								                    		<c:if test="${item.paystatus=='Y' && item.deliverystatus=='R' }">
				                                                <tr>
				                                                    <td><input type='checkbox' class="check" name="chk[]" data-orderno='${item.orderno }'></td>
				                                                    <td>${item.orderno }</td>
				                                                    <td>
				                                                    	<fmt:parseDate value="${item.regdate}" var="regdate" pattern="yyyy-MM-dd" />
				                                                    	<fmt:formatDate value="${regdate }" pattern="yyyy-MM-dd" />
			                                                    	</td>
				                                                    <td>${item.oname }</td>
				                                                    <td>
				                                                    	0<fmt:formatNumber var="phoneno" value="${item.phoneno }" pattern="###,####,####" />
				                                                    	<c:out value="${fn:replace(phoneno, ',', '-') }" />
			                                                    	</td>
				                                                    <td>${item.addr1 }, ${item.addr2 }</td>
				                                                    <td>
				                                                    	<fmt:parseDate value="${item.deldate}" var="deldate" pattern="yyyy-MM-dd" />
				                                                    	<fmt:formatDate value="${deldate }" pattern="yyyy-MM-dd" />
			                                                    	</td>
				                                                    <td>${item.trackingnum }</td>
				                                                    <td>상품이름 자리 ------</td>
				                                                    <td>
				                                                    	&#8361; <fmt:formatNumber pattern="###,###,###" value='${item.totalprice }'/>
				                                                    </td>
				                                                    <td width='54' align='center' class="clear">
				                                                    	<c:choose>
				                                                    	<c:when test="${item.request != null }">
					                                                        <button type="button" class="btn btn-secondary btn-xs memo user_selected">user</button>
					                                                        <p class="user_memo">
					                                                        	${item.request }
				                                                        	</p>
			                                                        	</c:when>
			                                                        	<c:otherwise>
					                                                        <button type="button" class="btn btn-secondary btn-xs memo">user</button>
			                                                        	</c:otherwise>
			                                                        	</c:choose>
				                                                    </td>
				                                                </tr>
                                                			</c:if>
                                                		</c:forEach>
                                                	</c:otherwise>
                                                </c:choose>
                                            </tbody>
                                        </table>
                                        <button type="button" class="btn btn-block btn-primary btn-sm select_complete">발송준비</button>
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
                            
                            <!-- 배송 대기 -->
                            <div class="col-md-12 content_stanby">
                                <div class="card">
                                    <div class="card-header border-0">
                                        <h3 class="card-title">배송 대기</h3>
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
                                                    <th>총 금액</th>
                                                    <th>메모</th>
                                                </tr>
                                            </thead>
                                            <tbody id="delivery_list">
                                            	<c:choose>
                                            		<c:when test="${output == null || fn:length(output) == 0}">
									                    <tr>
									                        <td colspan="10" align="center">조회결과가 없습니다.</td>
									                    </tr>
								                    </c:when>
								                    <c:otherwise>
								                    	<c:forEach var="item" items="${output }" varStatus="status">
								                    		<c:if test="${item.paystatus=='Y' && item.deliverystatus=='S' }">
				                                                <tr>
				                                                    <td><input type='checkbox' class="check"></td>
				                                                    <td>${item.orderno }</td>
				                                                    <td>
				                                                    	<fmt:parseDate value="${item.regdate}" var="regdate" pattern="yyyy-MM-dd" />
				                                                    	<fmt:formatDate value="${regdate }" pattern="yyyy-MM-dd" />
			                                                    	</td>
				                                                    <td>${item.oname }</td>
				                                                    <td>
				                                                    	0<fmt:formatNumber var="phoneno" value="${item.phoneno }" pattern="###,####,####" />
				                                                    	<c:out value="${fn:replace(phoneno, ',', '-') }" />
			                                                    	</td>
				                                                    <td>${item.addr1 }, ${item.addr2 }</td>
				                                                    <td>
				                                                    	<fmt:parseDate value="${item.deldate}" var="deldate" pattern="yyyy-MM-dd" />
				                                                    	<fmt:formatDate value="${deldate }" pattern="yyyy-MM-dd" />
			                                                    	</td>
				                                                    <td>${item.trackingnum }</td>
				                                                    <td>상품이름 자리 ------</td>
				                                                    <td>
				                                                    	&#8361; <fmt:formatNumber pattern="###,###,###" value='${item.totalprice }'/>
				                                                    </td>
				                                                    <td width='54' align='center' class="clear">
				                                                    	<c:choose>
				                                                    	<c:when test="${item.request != null }">
					                                                        <button type="button" class="btn btn-secondary btn-xs memo user_selected">user</button>
					                                                        <p class="user_memo">
					                                                        	${item.request }
				                                                        	</p>
			                                                        	</c:when>
			                                                        	<c:otherwise>
					                                                        <button type="button" class="btn btn-secondary btn-xs memo">user</button>
			                                                        	</c:otherwise>
			                                                        	</c:choose>
				                                                    </td>
				                                                </tr>
                                                			</c:if>
                                                		</c:forEach>
                                                	</c:otherwise>
                                                </c:choose>
                                            </tbody>
                                        </table>
                                        <button type="button" class="btn btn-block btn-primary btn-sm select_complete">출고</button>
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

                            <!-- 배송 중 -->
                            <div class="col-md-12 content_delivery">
                                <div class="card">
                                    <div class="card-header border-0">
                                        <h3 class="card-title">배송 중</h3>
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
                                                    <th>총 금액</th>
                                                    <th>메모</th>
                                                </tr>
                                            </thead>
                                            <tbody id="delivery_list">
                                                <c:choose>
                                            		<c:when test="${output == null || fn:length(output) == 0}">
									                    <tr>
									                        <td colspan="10" align="center">조회결과가 없습니다.</td>
									                    </tr>
								                    </c:when>
								                    <c:otherwise>
								                    	<c:forEach var="item" items="${output }" varStatus="status">
								                    		<c:if test="${item.paystatus=='Y' && item.deliverystatus=='D' }">
				                                                <tr>
				                                                    <td><input type='checkbox' class="check"></td>
				                                                    <td>${item.orderno }</td>
				                                                    <td>
				                                                    	<fmt:parseDate value="${item.regdate}" var="regdate" pattern="yyyy-MM-dd" />
				                                                    	<fmt:formatDate value="${regdate }" pattern="yyyy-MM-dd" />
			                                                    	</td>
				                                                    <td>${item.oname }</td>
				                                                    <td>
				                                                    	0<fmt:formatNumber var="phoneno" value="${item.phoneno }" pattern="###,####,####" />
				                                                    	<c:out value="${fn:replace(phoneno, ',', '-') }" />
			                                                    	</td>
				                                                    <td>${item.addr1 }, ${item.addr2 }</td>
				                                                    <td>
				                                                    	<fmt:parseDate value="${item.deldate}" var="deldate" pattern="yyyy-MM-dd" />
				                                                    	<fmt:formatDate value="${deldate }" pattern="yyyy-MM-dd" />
			                                                    	</td>
				                                                    <td>${item.trackingnum }</td>
				                                                    <td>상품이름 자리 ------</td>
				                                                    <td>
				                                                    	&#8361; <fmt:formatNumber pattern="###,###,###" value='${item.totalprice }'/>
				                                                    </td>
				                                                    <td width='54' align='center' class="clear">
				                                                    	<c:choose>
				                                                    	<c:when test="${item.request != null }">
					                                                        <button type="button" class="btn btn-secondary btn-xs memo user_selected">user</button>
					                                                        <p class="user_memo">
					                                                        	${item.request }
				                                                        	</p>
			                                                        	</c:when>
			                                                        	<c:otherwise>
					                                                        <button type="button" class="btn btn-secondary btn-xs memo">user</button>
			                                                        	</c:otherwise>
			                                                        	</c:choose>
				                                                    </td>
				                                                </tr>
                                                			</c:if>
                                                		</c:forEach>
                                                	</c:otherwise>
                                                </c:choose>
                                            </tbody>
                                        </table>
                                        <button type="button" class="btn btn-block btn-primary btn-sm select_complete">배송완료</button>
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

                            <!-- 배송 완료 -->
                            <div class="col-md-12 content_complete">
                                <div class="card">
                                    <div class="card-header border-0">
                                        <h3 class="card-title">배송 완료</h3>
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
                                                    <th>총 금액</th>
                                                    <th>메모</th>
                                                </tr>
                                            </thead>
                                            <tbody id="delivery_list">
                                                <c:choose>
                                            		<c:when test="${output == null || fn:length(output) == 0}">
									                    <tr>
									                        <td colspan="10" align="center">조회결과가 없습니다.</td>
									                    </tr>
								                    </c:when>
								                    <c:otherwise>
								                    	<c:forEach var="item" items="${output }" varStatus="status">
								                    		<c:if test="${item.paystatus=='Y' && item.deliverystatus=='C' }">
				                                                <tr>
				                                                    <td><input type='checkbox' class="check"></td>
				                                                    <td>${item.orderno }</td>
				                                                    <td>
				                                                    	<fmt:parseDate value="${item.regdate}" var="regdate" pattern="yyyy-MM-dd" />
				                                                    	<fmt:formatDate value="${regdate }" pattern="yyyy-MM-dd" />
			                                                    	</td>
				                                                    <td>${item.oname }</td>
				                                                    <td>
				                                                    	0<fmt:formatNumber var="phoneno" value="${item.phoneno }" pattern="###,####,####" />
				                                                    	<c:out value="${fn:replace(phoneno, ',', '-') }" />
			                                                    	</td>
				                                                    <td>${item.addr1 }, ${item.addr2 }</td>
				                                                    <td>
				                                                    	<fmt:parseDate value="${item.deldate}" var="deldate" pattern="yyyy-MM-dd" />
				                                                    	<fmt:formatDate value="${deldate }" pattern="yyyy-MM-dd" />
			                                                    	</td>
				                                                    <td>${item.trackingnum }</td>
				                                                    <td>상품이름 자리 ------</td>
				                                                    <td>
				                                                    	&#8361; <fmt:formatNumber pattern="###,###,###" value='${item.totalprice }'/>
				                                                    </td>
				                                                    <td width='54' align='center' class="clear">
				                                                    	<c:choose>
				                                                    	<c:when test="${item.request != null }">
					                                                        <button type="button" class="btn btn-secondary btn-xs memo user_selected">user</button>
					                                                        <p class="user_memo">
					                                                        	${item.request }
				                                                        	</p>
			                                                        	</c:when>
			                                                        	<c:otherwise>
					                                                        <button type="button" class="btn btn-secondary btn-xs memo">user</button>
			                                                        	</c:otherwise>
			                                                        	</c:choose>
				                                                    </td>
				                                                </tr>
                                                			</c:if>
                                                		</c:forEach>
                                                	</c:otherwise>
                                                </c:choose>
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
        
        /* 상단 메뉴 탭 관리 */
        $(function() {
            $(document).ready(function() {
	            $(".content_ready").hide();
	            $(".content_stanby").hide();
	            $(".content_delivery").hide();
	            $(".content_complete").hide();
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
            });

            $(document).on("click", "#tab_ready", function(e) {
            e.preventDefault();

	            $(".content_nopay").hide();
	            $(".content_ready").show();
	            $(".content_stanby").hide();
	            $(".content_delivery").hide();
	            $(".content_complete").hide();
            });

            $(document).on("click", "#tab_stanby", function(e) {
            e.preventDefault();

	            $(".content_nopay").hide();
	            $(".content_ready").hide();
	            $(".content_stanby").show();
	            $(".content_delivery").hide();
	            $(".content_complete").hide();
            });

            $(document).on("click", "#tab_delivery", function(e) {
            e.preventDefault();

	            $(".content_nopay").hide();
	            $(".content_ready").hide();
	            $(".content_stanby").hide();
	            $(".content_delivery").show();
	            $(".content_complete").hide();
            });

            $(document).on("click", "#tab_complete", function(e) {
            e.preventDefault();

	            $(".content_nopay").hide();
	            $(".content_ready").hide();
	            $(".content_stanby").hide();
	            $(".content_delivery").hide();
	            $(".content_complete").show();
            });
        });

        /* 체크박스 일괄 선택 */
        $("#all_check").change(function() {
            $(".check").prop('checked', $(this).prop('checked'));
        });
        
        /* 결제완료 버튼 */
		$(document).on("click","#paytypechange", function() {
			
			var current = null;										// 체크된 요소 담을 객체
			var count = $("input:checkbox[name='chkn[]']").length;	// 총 갯수
			var ckcount = $("input:checkbox[name='chkn[]']:checked").length
				
			console.log(count);
			for (var i=1; i<count; i++) {
				if(ckcount != 1) {
					alert("주문정보 한가지씩 선택해 주세요.");
				} else {
					current = $("input:checkbox[name='chkn[]']:checked").val();				// 체크된 주문정보
				}
			}
			
			var orderno = current;
			var paytype = "Y";
			if (!confirm("정말 주문번호 : " + orderno + "을 결제완료처리 하시겠습니까?")) {
				return false;
			}
			
			// put 메서드로 ajax 요청
			$.put("${pageContext.request.contextPath}/11_admin/admin_delivery", {
				"orderno":orderno,
				"paytype":paytype
			}, function(json) {
				if(json.rt == "OK") {
					alert("변경되었습니다");
					// 변경 완료 후 목록 페이지 이동
					window.location = "${pageContext.request.contextPath}/11_admin/admin_delivery.do";
				}
			});
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