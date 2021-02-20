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
<link rel="stylesheet" href="../assets/css/admin_order.css">

<!-- javascript -->
<script src="http://code.jquery.com/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<!-- ajax-helper -->
<link rel="stylesheet" href="../assets/plugins/ajax/ajax_helper.css" />
<script src="../plugins/ajax/ajax_helper.js"></script>
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
									<li class="active"><a href="admin_order.html">
										<i class="glyphicon glyphicon-shopping-cart"></i> 주문내역 관리</a></li>
									<li><a href="admin_delivery.html">
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
								<h2 class="m-0">주문 관리</h2>
							</div>
							<!-- /.col -->
							<div class="col-sm-6 clearfix">
								<ol class="breadcrumb pull-right">
									<li class="breadcrumb-item"><a href="#">홈</a></li>
									<li class="breadcrumb-item active">주문 관리</li>
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
                            <!-- 검색 -->
                            <div class="col-md-12">
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
                                                    <td class="search_title">배송상태</td>
                                                    <td class="search_data">
                                                        <input type="checkbox" class="order_allcheck"><span> 전체</span>
                                                        <input type="checkbox" class="order_check"><span> 배송준비중</span>
                                                        <input type="checkbox" class="order_check"><span> 배송대기</span>
                                                        <input type="checkbox" class="order_check"><span> 배송중</span>
                                                        <input type="checkbox" class="order_check"><span> 배송완료</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="search_title">주문상태</td>
                                                    <td class="search_data">
                                                        <input type="checkbox" class="csorder_allcheck"><span> 전체</span>
                                                        <input type="checkbox" class="csorder_check"><span> 주문</span>
                                                        <input type="checkbox" class="csorder_check"><span> 취소</span>
                                                        <input type="checkbox" class="csorder_check"><span> 교환</span>
                                                        <input type="checkbox" class="csorder_check"><span> 반품</span>
                                                        <input type="checkbox" class="csorder_check"><span> 환불</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="search_title">결제상태</td>
                                                    <td class="search_data">
                                                        <input type="radio" name="select_pay"><span> 전체</span>
                                                        <input type="radio" name="select_pay"><span> 결제전</span>
                                                        <input type="radio" name="select_pay"><span> 결제완료</span>
                                                    </td>
                                                </tr>
                                            </table>
                                            <a href="#" id="search_submit">검색</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        
                            <!-- 주문내역 -->
                            <div class="col-md-12 content_nopay">
                                <div class="card">
                                    <div class="card-header border-0">
                                        <h3 class="card-title">주문 내역</h3><br/>
                                        <table class="table table-bordered">
                                            <thead>
                                                <tr class="table_color">
                                                    <th style="width: 10px"><input type='checkbox' id="all_check"></th>
                                                    <th>주문번호</th>
                                                    <th>주문일</th>
                                                    <th>주문자</th>
                                                    <th>연락처</th>
                                                    <th>상품정보</th>
                                                    <th>총 금액</th>
                                                    <th>결제수단</th>
                                                    <th>결제상태</th>
                                                    <th>배송상태</th>
                                                    <th>주문상태</th>
                                                    <th>메모</th>
                                                </tr>
                                            </thead>
                                            <tbody id="order_list">
                                                <tr>
                                                    <td><input type='checkbox' class="check"></td>
                                                    <td>1234567</td>
                                                    <td>2020-12-30</td>
                                                    <td>홍 길동</td>
                                                    <td>010-1234-5678</td>
                                                    <td>STUVA 스투바 / FRITIDS 프리티스</td>
                                                    <td>90,000</td>
                                                    <td>카드결제</td>
                                                    <td>입금전</td>
                                                    <td>배송준비</td>
                                                    <td>주문</td>
                                                    <td class="clear">
                                                        <button type="button" class="btn btn-secondary btn-xs memo user_selected">user</button>
                                                        <p class="user_memo">출발전 미리 연락주세요</p>
                                                        <button type="button" class="btn btn-danger btn-xs memo admin_selected">admin</button>
                                                        <p class="admin_memo">화물운송</p>
                                                    </td>
                                                </tr>
                                            </tbody>
                                            <tbody id="order_list">
                                                <tr>
                                                    <td><input type='checkbox' class="check"></td>
                                                    <td>1234567</td>
                                                    <td>2020-12-30</td>
                                                    <td>홍 길동</td>
                                                    <td>010-1234-5678</td>
                                                    <td>STUVA 스투바 / FRITIDS 프리티스</td>
                                                    <td>90,000</td>
                                                    <td>카드결제</td>
                                                    <td>입금전</td>
                                                    <td>배송준비</td>
                                                    <td>주문</td>
                                                    <td class="clear">
                                                        <button type="button" class="btn btn-secondary btn-xs memo user_selected">user</button>
                                                        <p class="user_memo">출발전 미리 연락주세요</p>
                                                        <button type="button" class="btn btn-danger btn-xs memo admin_selected">admin</button>
                                                        <p class="admin_memo">화물운송</p>
                                                    </td>
                                                </tr>
                                            </tbody>
                                            <tbody id="order_list">
                                                <tr>
                                                    <td><input type='checkbox' class="check"></td>
                                                    <td>1234567</td>
                                                    <td>2020-12-30</td>
                                                    <td>홍 길동</td>
                                                    <td>010-1234-5678</td>
                                                    <td>STUVA 스투바 / FRITIDS 프리티스</td>
                                                    <td>90,000</td>
                                                    <td>카드결제</td>
                                                    <td>입금전</td>
                                                    <td>배송준비</td>
                                                    <td>주문</td>
                                                    <td class="clear">
                                                        <button type="button" class="btn btn-secondary btn-xs memo user_selected">user</button>
                                                        <p class="user_memo">출발전 미리 연락주세요</p>
                                                        <button type="button" class="btn btn-danger btn-xs memo admin_selected">admin</button>
                                                        <p class="admin_memo">화물운송</p>
                                                    </td>
                                                </tr>
                                            </tbody>
                                            <tbody id="order_list">
                                                <tr>
                                                    <td><input type='checkbox' class="check"></td>
                                                    <td>1234567</td>
                                                    <td>2020-12-30</td>
                                                    <td>홍 길동</td>
                                                    <td>010-1234-5678</td>
                                                    <td>STUVA 스투바 / FRITIDS 프리티스</td>
                                                    <td>90,000</td>
                                                    <td>카드결제</td>
                                                    <td>입금전</td>
                                                    <td>배송준비</td>
                                                    <td>주문</td>
                                                    <td class="clear">
                                                        <button type="button" class="btn btn-secondary btn-xs memo">user</button>
                                                        <p class="user_memo"></p>
                                                        <button type="button" class="btn btn-danger btn-xs memo">admin</button>
                                                        <p class="admin_memo"></p>
                                                    </td>
                                                </tr>
                                            </tbody>
                                            <tbody id="order_list">
                                                <tr>
                                                    <td><input type='checkbox' class="check"></td>
                                                    <td>1234567</td>
                                                    <td>2020-12-30</td>
                                                    <td>홍 길동</td>
                                                    <td>010-1234-5678</td>
                                                    <td>STUVA 스투바 / FRITIDS 프리티스</td>
                                                    <td>90,000</td>
                                                    <td>카드결제</td>
                                                    <td>입금전</td>
                                                    <td>배송준비</td>
                                                    <td>주문</td>
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
        
        // 전체 체크
        $(".order_allcheck").change(function() {
            $(".order_check").prop('checked', $(this).prop('checked'));
        });

        $(".csorder_allcheck").change(function() {
            $(".csorder_check").prop('checked', $(this).prop('checked'));
        });

        $("#all_check").change(function() {
            $(".check").prop('checked', $(this).prop('checked'));
        });
	</script>
</body>
</html>