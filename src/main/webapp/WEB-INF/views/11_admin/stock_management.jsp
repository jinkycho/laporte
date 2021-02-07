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
<link rel="stylesheet" href="../assets/css/stock_management.css">

<!-- handlebar plugin -->
<script src="../plugins/handlebars/handlebars-v4.0.11.js"></script>

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
				<span><a class="navbar-brand" href="${pageContext.request.contextPath}/11_admin/admin_home.do">HOME</a></span>
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
								<li><a href="${pageContext.request.contextPath}/11_admin/admin_resvappv.do"><i
										class="glyphicon glyphicon-ok"></i> 예약 승인</a></li>
							</ul></li>
						<li class="dropdown open"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"><i class="glyphicon glyphicon-tags"></i>
								제품 관리 <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li class="active"><a href="${pageContext.request.contextPath}/11_admin/stock_management.do"><i
										class="glyphicon glyphicon-briefcase"></i> 상품 관리</a></li>
								<li><a href="${pageContext.request.contextPath}/11_admin/product_add.do"><i
										class="glyphicon glyphicon-plus"></i> 상품 등록</a></li>
								<li><a href="${pageContext.request.contextPath}/11_admin/admin_review.do"><i
										class="glyphicon glyphicon-star-empty"></i> 리뷰 관리</a></li>
								<li><a href="${pageContext.request.contextPath}/11_admin/admin_sales.do"><i class="glyphicon glyphicon-usd"></i>
										매출 관리</a></li>
							</ul></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<i class="glyphicon glyphicon-user"></i>
								고객 관리 <b class="caret"></b>
							</a>
							<ul class="dropdown-menu">
								<li><a href="${pageContext.request.contextPath}/11_admin/admin_userlist.do">
									<i class="glyphicon glyphicon-user"></i> 회원정보 관리</a></li>
								<li><a href="${pageContext.request.contextPath}/11_admin/admin_order.do">
									<i class="glyphicon glyphicon-shopping-cart"></i> 주문내역 관리</a></li>
								<li><a href="${pageContext.request.contextPath}/11_admin/admin_delivery.do">
									<i class="glyphicon glyphicon-transfer"></i> 배송정보 관리</a></li>
								<li><a href="${pageContext.request.contextPath}/11_admin/admin_cancel.do">
									<i class="glyphicon glyphicon-retweet"></i> 취소/교환/반품/환불</a></li>
								<li><a href="${pageContext.request.contextPath}/11_admin/admin_coupon.do">
									<i class="glyphicon glyphicon-credit-card"></i> 쿠폰 </a></li>
								<li><a href="${pageContext.request.contextPath}/11_admin/admin_point.do" >
									<i class="glyphicon glyphicon-usd"></i> 적립금</a></li>
								<li><a href="${pageContext.request.contextPath}/11_admin/admin_visitors.do">
									<i class="glyphicon glyphicon-stats"></i> 방문자 수 관리</a></li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<i class="glyphicon glyphicon-pencil"></i>
									문의 관리 <b class="caret"></b>
							</a>
							<ul class="dropdown-menu">
								<li>
									<a href="${pageContext.request.contextPath}/11_admin/admin_qanda.do"><i class="glyphicon glyphicon-envelope"></i> 이메일 문의 관리</a>
								</li>
								<li>
									<a href="${pageContext.request.contextPath}/11_admin/admin_fanda.do"><i class="glyphicon glyphicon-list-alt"></i> F&A 관리</a>
								</li>
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
								<h2 class="m-0">상품 관리</h2>
							</div>
							<!-- /.col -->
							<div class="col-sm-6 clearfix">
								<ol class="breadcrumb pull-right">
									<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/11_admin/admin_home.do">홈</a></li>
									<li class="breadcrumb-item active">상품 관리</li>
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
										<h4 class="card-title">제품 목록</h4>
									</div>
									<!-- /.card-header 끝 -->
									<!-- card-body  -->
									<div class="card-body">
										<!---------- 조건 검색 목록 ---------->
										<table class="table table-bordered search_table">
											<tr>
												<td class="search_title">상품 분류</td>
												<td>
													<form class="form-inline">
														<!-- 1차 카테고리 -->
														<div class="form-group">
															<select id="parent" class="form-control">
																<option value="">--1차 분류--</option>
																<option value="sofa">소파/암체어</option>
																<option value="bed">침대</option>
																<option value="acceptance">수납/정리</option>
																<option value="kitchen">주방가구/용품</option>
																<option value="light">조명</option>
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

											<tr>
												<td class="search_title">검색 조건</td>
												<td>
													<form class="form-inline">
														<div class="form-group">
															<select id="search_condition" name="search_condition"
																class="form-control">
																<option value="product_name">제품명</option>
																<option value="product_num">제품번호</option>
															</select> <input type="text" class="form-control">
														</div>
													</form>
												</td>
											</tr>

											<tr>
												<td class="search_title">재고 여부</td>
												<td>
													<form class="form-inline">
														<div class="form-group">
															<select id="search_quantity" name="search_count"
																class="form-control">
																<option value="">재고 여부</option>
																<option value="product_quantity_exist">재고 존재</option>
																<option value="product_quantity_none">재고 없음</option>
															</select> <input type="text" class="form-control quantity_input"><span>개
																이하</span>
														</div>
													</form>
												</td>
											</tr>

											<tr>
												<td class="search_title">그룹</td>
												<td>
													<form class="form-inline">
														<div class="form-group">
															<select id="search_group" name="search_group"
																class="form-control">
																<option value="">그룹선택</option>
																<option value="group_sale">세일</option>
																<option value="group_new">신제품</option>
																<option value="group_best">인기</option>
																<option value="group_best_month">이달의 제품</option>
															</select>
														</div>
													</form>
												</td>
											</tr>

											<tr>
												<td class="search_title">진열 여부</td>
												<td>
													<form class="form-inline">
														<div class="form-group">
															<select id="search_display" name="search_display"
																class="form-control">
																<option value="">선택</option>
																<option value="display_y">O</option>
																<option value="display_n">X</option>
															</select>
														</div>
													</form>
												</td>
											</tr>
										</table>
										<button type="button"
											class="btn btn-block btn-info search_btn">검색</button>
										<!-- // 조건 검색 목록 끝 -->
										<div class="clearfix product_additional_box">
											<div class="product_number_box pull-left">
												<span>총 상품수 : <b class="total_number">6</b> ,
												</span> <span>검색 상품 수 : <b class="search_number">6</b></span>
											</div>
											<div class="product_add_box pull-right">
												<a href="${pageContext.request.contextPath}/11_admin/product_add.do" class="btn btn-success btn-sm">상품
													등록</a>
											</div>
										</div>

										<table class="table table-bordered product_table">
											<thead>
												<tr class="product_table_color">
													<th style="width: 10px"><input type='checkbox'
														id="all_check"></th>
													<th>제품번호</th>
													<th>이미지</th>
													<th>상품명</th>
													<th>상품가격</th>
													<th>재고</th>
													<th>진열여부</th>
													<th>기능</th>
												</tr>
											</thead>
											<tbody id="product_list">
												<tr>
													<td><input type='checkbox' class="delete_check"></td>
													<td>49279604</td>
													<td><img
														src="https://www.ikea.com/kr/ko/images/products/stuva-fritids-toy-storage-with-wheels-white-green__0629926_PE694540_S5.JPG?f=g"
														class="product_img"></td>
													<td>STUVA 스투바 / FRITIDS 프리티스</td>
													<td>90,000</td>
													<td>90</td>
													<td>O</td>
													<td class="clear">
														<button type="button"
															class="btn btn-secondary btn-xs product_list_edit">수정</button>
														<button type="button"
															class="btn btn-danger btn-xs product_list_delete">삭제</button>
													</td>
												</tr>
												<tr>
													<td><input type='checkbox' class="delete_check"></td>
													<td>39198397</td>
													<td><img
														src="https://www.ikea.com/kr/ko/images/products/hemnes-bed-frame-white-stain-loenset__0637516_PE698353_S5.JPG?f=s"
														class="product_img"></td>
													<td>HEMNES 헴네스</td>
													<td>389,000</td>
													<td>100</td>
													<td>O</td>
													<td class="clear">
														<button type="button"
															class="btn btn-secondary btn-xs product_list_edit">수정</button>
														<button type="button"
															class="btn btn-danger btn-xs product_list_delete">삭제</button>
													</td>
												</tr>
												<tr>
													<td><input type='checkbox' class="delete_check"></td>
													<td>50491595</td>
													<td><img
														src="https://www.ikea.com/kr/ko/images/products/strala-led-table-decoration-cabin-in-the-forest-red-white__0675789_PE719481_S5.JPG?f=s"
														class="product_img"></td>
													<td>STRÅLA 스트롤라</td>
													<td>21,900</td>
													<td>120</td>
													<td>O</td>
													<td class="clear">
														<button type="button"
															class="btn btn-secondary btn-xs product_list_edit">수정</button>
														<button type="button"
															class="btn btn-danger btn-xs product_list_delete">삭제</button>
													</td>
												</tr>
												<tr>
													<td><input type='checkbox' class="delete_check"></td>
													<td>10407928</td>
													<td><img
														src="https://www.ikea.com/kr/ko/images/products/brimnes-wardrobe-with-3-doors-white__0176787_PE329567_S5.JPG?f=m"
														class="product_img"></td>
													<td>BRIMNES 브림네스</td>
													<td>249,000</td>
													<td>50</td>
													<td>O</td>
													<td class="clear">
														<button type="button"
															class="btn btn-secondary btn-xs product_list_edit">수정</button>
														<button type="button"
															class="btn btn-danger btn-xs product_list_delete">삭제</button>
													</td>
												</tr>
												<tr>
													<td><input type='checkbox' class="delete_check"></td>
													<td>49192639</td>
													<td><img
														src="https://www.ikea.com/kr/ko/images/products/faerloev-3-seat-sofa-flodafors-white__0479740_PE619080_S5.JPG?f=s"
														class="product_img"></td>
													<td>FÄRLÖV 펠뢰브</td>
													<td>899,000</td>
													<td>30</td>
													<td>O</td>
													<td class="clear">
														<button type="button"
															class="btn btn-secondary btn-xs product_list_edit">수정</button>
														<button type="button"
															class="btn btn-danger btn-xs product_list_delete">삭제</button>
													</td>
												</tr>
												<tr>
													<td><input type='checkbox' class="delete_check"></td>
													<td>70415893</td>
													<td><img
														src="https://www.ikea.com/kr/ko/images/products/vardagen-goblet-clear-glass__0681272_PE720081_S5.JPG?f=m"
														class="product_img"></td>
													<td>VARDAGEN 바르다겐</td>
													<td>9,900</td>
													<td>20</td>
													<td>O</td>
													<td class="clear">
														<button type="button"
															class="btn btn-secondary btn-xs product_list_edit">수정</button>
														<button type="button"
															class="btn btn-danger btn-xs product_list_delete">삭제</button>
													</td>
												</tr>


											</tbody>
										</table>
										<!--페이지 네이션-->
										<div class="product_footer">
											<button type="button"
												class="btn btn-block btn-danger btn-sm select_delete">선택삭제</button>
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
			$(".select_delete")
					.click(
							function() {
								var delete_check_list = $(".delete_check:checked");
								if (delete_check_list.length == 0) {
									alert("선택된 항목이 없습니다.");
									return false;
								}

								//배열의 길이만큼 반복한다.
								for (var i = 0; i < delete_check_list.length; i++) {
									// i번째 HTML요소를 jQuery객체로 변환하여 입력값을 취한다.
									var ckeck_product = $(delete_check_list[i]);
									// 체크된 항목 삭제
									$(ckeck_product).parents('tr').remove();
								}
								;

								var product_list_num = $('.product_table tbody tr').length;
								$('.search_number').html(product_list_num);
								$('.total_number').html(product_list_num);

								//상품 목록이 하나도 없을시 
								if (product_list_num == 0) {
									console.log(product_list_num);
									$('#product_list')
											.html(
													'<tr id="product_none_msg"><td colspan="8">상품을 등록해주세요.</td></tr>');
								}
							});
			$(".product_list_delete")
					.click(
							function() {
								var delete_confirm = confirm("정말 삭제 하시겠습니까?")

								if (delete_confirm) {
									$(this).parents('tr').remove();
								} else {
									return false;
								}

								var product_list_num = $('.product_table tbody tr').length;
								$('.search_number').html(product_list_num);
								$('.total_number').html(product_list_num);

								//상품 목록이 하나도 없을시 
								if (product_list_num == 0) {
									console.log(product_list_num);
									$('#product_list')
											.html(
													'<tr id="product_none_msg"><td colspan="8">상품을 등록해주세요.</td></tr>');
								}
							});
		});
	</script>
</body>
</html>