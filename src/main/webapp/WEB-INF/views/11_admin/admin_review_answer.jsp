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
<link rel="stylesheet" href="../assets/css/review_answer.css">

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
								<li><a href="${pageContext.request.contextPath}/11_admin/stock_management.do"><i
										class="glyphicon glyphicon-briefcase"></i> 상품 관리</a></li>
								<li><a href="${pageContext.request.contextPath}/11_admin/product_add.do"><i
										class="glyphicon glyphicon-plus"></i> 상품 등록</a></li>
								<li class="active"><a href="${pageContext.request.contextPath}/11_admin/admin_review.do"><i
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
								<h2 class="m-0">답변 등록</h2>
							</div>
							<!-- /.col -->
							<div class="col-sm-6 clearfix">
								<ol class="breadcrumb pull-right">
                                    <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin_home.do">홈</a></li>
                                    <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/admin_review.do">리뷰관리</a></li>
									<li class="breadcrumb-item active">답변등록</li>
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
                                        <h3 class="card-title">리뷰 내용</h3>
                                    </div>
                                    <!-- /.card-header -->
                                    <div class="card-body">
                                        <table class="table table-bordered product_info_table">
                                            <tr>
                                                <td class="info_table_color">리뷰 작성자</td>
                                                <td>
                                                    <p id="review_writer">김혜지</p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="info_table_color">리뷰 작성일</td>
                                                <td>
                                                    <p id="review_date">2021-01-09 02:57:25</p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="info_table_color">평균 별점</td>
                                                <td>
                                                    <p id="review_date">★★★★☆</p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="info_table_color">제품 점수</td>
                                                <td>
                                                    <p id="assemble">손쉬운 조립 : 4</p>
                                                    <p id="value">제품 가성비 : 4</p>
                                                    <p id="quality">제품 품질   : 4</p>
                                                    <p id="appearance">제품 외관   : 4</p>
                                                    <p id="function">제품 기능   : 4</p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="info_table_color">리뷰 제목</td>
                                                <td>
                                                    <p id='review_title'>너무 이뻐요.</p>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="info_table_color">리뷰 내용</td>
                                                <td>
                                                    <p id='review_content'>정말 너무 이쁘네요. 마음에 쏙 들어요.</p>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <!-- /.card-body -->
                                    <!--기본 정보 끝-->

                                    <!--가격 및 재고 시작-->
                                    <div class="card-header">
                                        <h3 class="card-title">답변 등록</h3>
                                    </div>
                                    <div class="card-body">
                                        <table class="table table-bordered product_info_table">
                                            <tr>
                                                <td class="info_table_color">답변 내용</td>
                                                <td>
                                                    <form class="form-inline">
                                                        <textarea name="QandA_notes" id="QandA_notes" class="form-control"></textarea>
                                                    </form>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div class="btn_box">
                                        <button type="submit" class="btn btn-block btn-primary review_answer_add_btn">등록</button>
                                    </div>
                                    
                                    <!--상품 이미지 끝-->

								</div>
								<!-- /.card 끝 -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /wrapper  끝-->
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
        });

	</script>
</body>
</html>