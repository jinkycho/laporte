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
<link rel="stylesheet" href="../assets/css/admin_fanda.css">

<!-- handlebar plugin -->
<script src="../plugins/handlebars/handlebars-v4.0.11.js"></script>

<!-- javascript -->
<script src="http://code.jquery.com/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<!-- ajax-helper -->
<link rel="stylesheet" href="../plugins/ajax/ajax_helper.css" />
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
				<span><a class="navbar-brand" href="admin_home.html">HOME</a></span>
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
						<li class="brand_logo_box"><a href="#" class="brand_logo">
								<span></span> <span id="logo_img">la porte</span>
						</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"><i class="glyphicon glyphicon-edit"></i>
								홈 퍼블리싱 예약관리 <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="admin_resvappv.html"><i
										class="glyphicon glyphicon-ok"></i> 예약 승인</a></li>
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
								<li><a href="admin_sales.html"><i class="glyphicon glyphicon-usd"></i>
										매출 관리</a></li>
							</ul></li>
							<li class="dropdown">
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
                            <li class="dropdown open">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="glyphicon glyphicon-pencil"></i>
                                    문의 관리 <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="admin_qanda.html">
                                        <i class="glyphicon glyphicon-envelope"></i> 이메일 문의 관리</a></li>
                                    <li class="active"><!-- <a href="admin_fanda.html"> --><a href="${pageContext.request.contextPath}/11_admin/admin_fanda.do">
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
								<h2 class="m-0">F&A 관리</h2>
							</div>
							<!-- /.col -->
							<div class="col-sm-6 clearfix">
								<ol class="breadcrumb pull-right">
									<li class="breadcrumb-item"><a href="admin_home.html">홈</a></li>
									<li class="breadcrumb-item active">F&A 관리</li>
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
						<!--본문 작성 영역-->
						<div class="row">
							<div class="col-md-12">
								<div class="card">
									<div class="card-header">
										<h4 class="card-title">F&A 관리 목록</h4>
									</div>
									<!-- /.card-header 끝 -->
									<!-- card-body  -->
									<div class="card-body">
                                        <!---------- 조건 검색 목록 ---------->
									<table class="table table-bordered search_table">
										<tr>
                                  			<td class="search_title">기간</td>
                                  			<td class="point_li_date_input">
                                  				<input type="date" class="point_date form-control"> ~
                                  				<input type="date" class="point_date form-control">
                                  				<a href="#">오늘</a>
                                  				<a href="#">어제</a>
                                  				<a href="#">1주일</a>
                                  				<a href="#">1개월</a>
                                			</td>
                              			</tr>
										<tr>
											<td class="search_title">카테고리 분류</td>
											<td>
												<form class="form-inline">
													<!-- 1차 카테고리 -->
													<div class="form-group">
                                                        <select id="parent" class="form-control">
                                                            <option value="">--전체보기--</option>
                                                            <option value="online" selected>온라인 주문</option>
                                                            <option value="exchange">교환환불</option>
                                                            <option value="service">laporte 서비스</option>
                                                            <option value="productinfo">제품정보</option>
                                                            <option value="agreement">laporte 웹사이트 이용 약관</option>
                                                        </select>
                                                    </div>
													<!-- 1차 카테고리 끝 -->
													<!-- 2차 카테고리 -->
													<div class="form-group">
														<select id="child" class="form-control">
															<option value="">--2차 분류--</option>
														</select>
													</div>
													<!-- 2차 카테고리 끝 -->
												</form>
											</td>
										</tr>

									</table>
									<button type="button" class="btn btn-block btn-info search_btn">검색</button>


									<table class="table table-bordered post_table">
										<thead>
											<tr class="post_table_color">
												<th style="width: 10px"><input type='checkbox' id="all_check"></th>
												<th>카테고리</th>
												<th>분류</th>
												<th>질문</th>
												<th>작성일시</th>
											</tr>
										</thead>
										<tbody id="post_list">
											<tr>
												<td><input type='checkbox' class="delete_check"></td>
												<td>온라인주문</td>
												<td>쇼핑방법</td>
												<td><a href="#" data-toggle="modal" data-target="#myModal">위시리스트와 장바구니가 어떻게 다른가요?</a></td>
												<td>2021-01-11</td>
											</tr>

											<tr>
												<td><input type='checkbox' class="delete_check"></td>
												<td>온라인주문</td>
												<td>결제</td>
												<td><a href="#" data-toggle="modal" data-target="#myModal">비회원으로도 온라인 구매를 할 수 있나요?</a></td>
												<td>2021-01-11</td>
											</tr>

											<tr>
												<td><input type='checkbox' class="delete_check"></td>
												<td>온라인주문</td>
												<td>배송</td>
												<td><a href="#" data-toggle="modal" data-target="#myModal">온라인 구매 시 배송이 가능한 지역과 배송비를 알고 싶어요.</a></td>
												<td>2021-01-11</td>
											</tr>




										</tbody>
									</table>

								<!--페이지 네이션-->
								<div class="product_footer">
									<button type="button" class="btn btn-block btn-danger btn-sm select_delete">선택삭제</button>
									<div class="pagination_box">
										<ul class="pagination pagination-sm m-0">
											<li class="page-item"><a class="page-link" href="#">&laquo;</a></li>
											<li class="page-item"><a class="page-link" href="#">1</a></li>
											<li class="page-item"><a class="page-link" href="#">2</a></li>
											<li class="page-item"><a class="page-link" href="#">3</a></li>
											<li class="page-item"><a class="page-link" href="#">&raquo;</a></li>
										</ul>
									</div>
								</div>
								<!--페이지네이션 끝-->
							</div>
								<!-- /.card-body -->
								</div>
								<!-- /.card 끝 -->
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /wrapper  끝-->
		</div>
	</section>
	<footer></footer>

    <!-- modal -->
		<div class="modal fade" id="myModal">
		    <div class="post_modify_display">
		        <div class="post_modify_content">
		            <div class="post_modify_header">
		                <button type="button" class="close" data-dismiss="modal"
		                    aria-label="Close">
		                    <span aria-hidden="true">&times;</span></button>
			                <h4 class="modal-title">게시물 관리</h4>
		            </div>
		            <div class="post_modify_body">
		                <table class="table2 table-bordered post_modify_table">


										<tbody id="post_list">

											 <tr>
												<td style="color:white" bgcolor="#717b86" height=39 width=150 align=center>작성자</td>
												<td style="padding-left:10px">관리자</td>
												<td style="color:white" bgcolor="#717b86" align=center>등록일시</td>
												<td style="padding-left:10px">2020-01-11</td>
											</tr>
											<tr>
												<td style="color:white" bgcolor="#717b86" height=39 align=center>카테고리</td>
												<td style="padding-left:10px" colspan="4" height=39 align=left>온라인주문</td>
											</tr>
											<tr>
												<td style="color:white" bgcolor="#717b86" height=39 align=center>분류</td>
												<td style="padding-left:10px" colspan="4" height=39 align=left>쇼핑방법</td>
											</tr>
											<tr>
												<td style="color:white" bgcolor="#717b86" height=39 align=center>질문</td>
												<td style="padding-left:10px" colspan="4" height=39 align=left>
													위시리스트와 장바구니는 어떻게 다른가요?
													</td>
											</tr>
											<tr>
												<td style="color:white" bgcolor="#717b86" height=39 align=center>답변</td>
												<td style="padding-left:10px" colspan="4" height=39 align=left>

													위시리스트'는 매장에서 쇼핑하실 때 편리하도록 도움을 드리는 도구입니다. 위시리스트에는 구매를 원하시는 제품의 위치가. 표시되어 있고,
													총 금액을 미리 예상해 보실 수 있어요. '장바구니'는 온라인 구매 시에 사용되며, 카트에 담긴 제품을 주문 및 결제하실 수 있어요.
													다만, 제품을 위시리스트에만. 담아놓으시면 결제하실 수 없는 점 유의해 주세요.</td>
											</tr>

										</tbody>
						</table>
		            </div>
		            <div class="modal-footer">
			                <button type="button" class="btn btn-secondary"
			                    data-dismiss="modal">글수정</button>
		                    <button type="button" class="btn btn-danger"
			                    data-dismiss="modal btn-success">삭제</button>
		                    <button type="button" class="btn btn-success"
			                    data-dismiss="modal">리스트</button>
		            </div>
		        </div>
		    </div>
		</div>

	</section>
	<footer></footer>

    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script id="category_item_tmpl" type="text/x-handlebars-template">
        {{#each item}}
        <option value="{{value}}">{{text}}</option>
        {{/each}}
    </script>
	<script type="text/javascript">
		$("#menu-toggle").click(function(e) {
			e.preventDefault();
			$("#wrapper").toggleClass("toggled");
        });
        $(function() {
			var product_list_num = $('.product_table tbody tr').length;
			$('.search_number').html(product_list_num);
		});
		$(function() {
			/** 드롭다운의 선택 변경 이벤트 */
			$("#parent").change(
					function() {
						// 결과가 표시될 #child에 내용 지우기
						$("#child").empty();
						// 사용자 선택값 가져오기
						var choice = $(this).find("option:selected").val();
						// 선택값이 없다면 처리 중단
						if (!choice) {
							$("#child").html(
									"<option value=''>--2차분류--</option>")
						}

						$.get('../api/category.do', {
							type : choice
						}, function(req) {
							// 미리 준비한 HTML틀을 읽어온다.
							var template = Handlebars.compile($(
									"#category_item_tmpl").html());
							// Ajax를 통해서 읽어온 JSON을 템플릿에 병합한다.
							var html = template(req);
							// #child 읽어온 내용을 추가한다.
							$("#child").append(html);
						}); // end $.get
					}); // end change
			/**드롭다운 1차 > 2차 선택변경 이벤트 끝 */
			/* `#all_check`의 선택 상태가 변경되었을 때의 이벤트 */
			$("#all_check").change(function() {
            	// 모든 `.delete_check`의 선택 상태를 `#all_check`와 동일하게 맞춘다.
				$(".delete_check").prop('checked', $(this).prop('checked'));
			});
			/** 선택 삭제 버튼 클릭시 */
			$(".select_delete").click(function () {
				var delete_check_list = $(".delete_check:checked");
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

				var product_list_num = $('.product_table tbody tr').length;
				$('.search_number').html(product_list_num);
				$('.total_number').html(product_list_num);

				//상품 목록이 하나도 없을시
				if(product_list_num == 0){
					console.log(product_list_num);
					$('#product_list').html('<tr id="product_none_msg"><td colspan="8">상품을 등록해주세요.</td></tr>');
				}
			});
			$(".product_list_delete").click(function () {
				var delete_confirm = confirm("정말 삭제 하시겠습니까?")

				if(delete_confirm){
					$(this).parents('tr').remove();
				}else{
					return false;
				}

				var product_list_num = $('.product_table tbody tr').length;
				$('.search_number').html(product_list_num);
				$('.total_number').html(product_list_num);

				//상품 목록이 하나도 없을시
				if(product_list_num == 0){
					console.log(product_list_num);
					$('#product_list').html('<tr id="product_none_msg"><td colspan="8">상품을 등록해주세요.</td></tr>');
				}
			});
		});



	</script>
</body>
</html>