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
<link rel="stylesheet" href="../assets/css/review_management.css">

<!-- handlebar plugin -->
<script src="../assets/plugins/handlebars/handlebars-v4.0.11.js"></script>

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
								??? ???????????? ???????????? <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="${pageContext.request.contextPath}/11_admin/admin_resvappv.do"><i
										class="glyphicon glyphicon-ok"></i> ?????? ??????</a></li>
							</ul></li>
						<li class="dropdown open"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"><i class="glyphicon glyphicon-tags"></i>
								?????? ?????? <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="${pageContext.request.contextPath}/11_admin/stock_management.do"><i
										class="glyphicon glyphicon-briefcase"></i> ?????? ??????</a></li>
								<li><a href="${pageContext.request.contextPath}/11_admin/product_add.do"><i
										class="glyphicon glyphicon-plus"></i> ?????? ??????</a></li>
								<li class="active"><a href="${pageContext.request.contextPath}/11_admin/admin_review.do"><i
										class="glyphicon glyphicon-star-empty"></i> ?????? ??????</a></li>
								
							</ul></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<i class="glyphicon glyphicon-user"></i>
								?????? ?????? <b class="caret"></b>
							</a>
							<ul class="dropdown-menu">
								<li><a href="${pageContext.request.contextPath}/11_admin/admin_userlist.do">
									<i class="glyphicon glyphicon-user"></i> ???????????? ??????</a></li>
								<li><a href="${pageContext.request.contextPath}/11_admin/admin_order.do">
									<i class="glyphicon glyphicon-shopping-cart"></i> ???????????? ??????</a></li>
								<li><a href="${pageContext.request.contextPath}/11_admin/admin_delivery.do">
									<i class="glyphicon glyphicon-transfer"></i> ???????????? ??????</a></li>
								<li><a href="${pageContext.request.contextPath}/11_admin/admin_cancel.do">
									<i class="glyphicon glyphicon-retweet"></i> ??????/??????/??????/??????</a></li>
								<li><a href="${pageContext.request.contextPath}/11_admin/admin_coupon.do">
									<i class="glyphicon glyphicon-credit-card"></i> ?????? </a></li>
								
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<i class="glyphicon glyphicon-pencil"></i>
									?????? ?????? <b class="caret"></b>
							</a>
							<ul class="dropdown-menu">
								<li>
									<a href="${pageContext.request.contextPath}/11_admin/admin_qanda.do"><i class="glyphicon glyphicon-envelope"></i> ????????? ?????? ??????</a>
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
								<h2 class="m-0">?????? ??????</h2>
							</div>
							<!-- /.col -->
							<div class="col-sm-6 clearfix">
								<ol class="breadcrumb pull-right">
									<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/11_admin/admin_home.do">???</a></li>
									<li class="breadcrumb-item active">?????? ??????</li>
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
						<!--?????? ?????? ??????-->
						<div class="row">
							<div class="col-md-12">
								<div class="card">
									<div class="card-header">
										<h4 class="card-title">?????? ??????</h4>
									</div>
									<!-- /.card-header ??? -->
									<!-- card-body  -->
									<div class="card-body">
                                        <!---------- ?????? ?????? ?????? ---------->
									<table class="table table-bordered search_table">
										<tr>
                                  			<td class="search_title">??????</td>
                                  			<td class="point_li_date_input">
                                  				<input type="date" class="point_date form-control"> ~
                                  				<input type="date" class="point_date form-control">
                                  				<a href="#">??????</a>
                                  				<a href="#">??????</a>
                                  				<a href="#">1??????</a>
                                  				<a href="#">1??????</a>
                                			</td>
                              			</tr>
										<tr>
											<td class="search_title">?????? ??????</td>
											<td>
												<form class="form-inline">
													<!-- 1??? ???????????? -->
													<div class="form-group">
														<select id="parent" class="form-control">
															<option value="">--1??? ??????--</option>
															<option value="sofa">??????/?????????</option>
															<option value="bed">??????</option>
															<option value="acceptance">??????/??????</option>
															<option value="kitchen">????????????/??????</option>
															<option value="light">??????</option>
														</select>
													</div>
													<!-- 1??? ???????????? ??? -->
													<!-- 2??? ???????????? -->
													<div class="form-group">
														<select id="child" class="form-control">
															<option value="">--2??? ??????--</option>
														</select>
													</div>
													<!-- 2??? ???????????? ??? -->
												</form>
											</td>
										</tr>

										<tr>
											<td class="search_title">?????? ??????</td>
											<td>
												<form class="form-inline">
													<div class="form-group">
														<select id="search_condition" name="search_condition"
															class="form-control">
															<option value="product_name">?????????</option>
															<option value="product_num">????????????</option>
															<option value="review_title">??? ??????</option>
															<option value="review_writer">??? ?????????</option>
														</select> <input type="text" class="form-control">
													</div>
												</form>
											</td>
										</tr>
										<tr>
											<td class="search_title">?????? ??????</td>
											<td>
												<form class="form-inline">
													<div class="form-group">
														<select id="search_condition" name="search_answer"
															class="form-control">
															<option value="">---??????---</option>
															<option value="anwer_com">????????????</option>
															<option value="anwer_wait">????????????</option>
														</select>
													</div>
												</form>
											</td>
										</tr>

									</table>
									<button type="button" class="btn btn-block btn-info search_btn">??????</button>
									<!-- // ?????? ?????? ?????? ??? -->
									<div class="clearfix product_additional_box">
										<div class="product_number_box pull-left">
											<span>??? ?????? ??? : <b class="total_number">6</b> ,
											</span> <span>?????? ?????? ??? : <b class="search_number">6</b></span>
										</div>
									</div>
									
									<table class="table table-bordered product_table">
										<thead>
											<tr class="product_table_color">
												<th style="width: 10px"><input type='checkbox' id="all_check"></th>
												<th>????????????</th>
												<th>??????</th>
												<th class="review_text">?????????</th>
												<th>?????????</th>
												<th>?????????</th>
												<th>?????????</th>
												<td>????????????</td>
												<th>??????</th>
											</tr>
										</thead>
										<tbody id="product_list">
											<c:if test="${item.size() != 0 }">
												<c:forEach var="review" items="${item }">
													<tr>
														<td><input type='checkbox' class="delete_check"></td>
														<td><a href="#">${review.prodno }</a></td>
														<td>
															<a href="${pageContext.request.contextPath}/03_detail/detail.do?prodno=${review.prodno}">
																<img src="${review.thumbnailUrl }" alt="?????? ?????????" class="product_img">
															</a>		
														</td>
														<td>
															<a href="#" class="review_link">
																<b class="word_wrap">${review.title }</b>
																<span class="review_content word_wrap">${review.content }</span>
															</a>
														</td>
														<td>
															<c:choose>
																<c:when test="${review.avgscore==0 }">
																	???????????????
																</c:when>
																<c:when test="${review.avgscore==1 }">
																	???????????????
																</c:when>
																<c:when test="${review.avgscore==2 }">
																	???????????????
																</c:when>
																<c:when test="${review.avgscore==3 }">
																	???????????????
																</c:when>
																<c:when test="${review.avgscore==4 }">
																	???????????????
																</c:when>
																<c:when test="${review.avgscore==5 }">
																	???????????????
																</c:when>
															</c:choose>
														</td>
														<td class="word_wrap">${review.name}</td>
														<td class="word_wrap">${review.editdate}</td>
														<td>
															<c:if test="${revcom.size() != 0}" >
															<c:set var ="result" value="0" />
																<c:forEach var="revcom" items="${revcom }">
																<fmt:formatNumber value="${revcom.reviewno}" type="number" var="revanswer" />
																<fmt:formatNumber value="${review.reviewno}" type="number" var="revno" />
																	<c:choose>
																		<%-- <c:when test="${fn:contains(revno, revanswer)}">????????????</c:when> --%>
																		<c:when test="${revno==revanswer }">
																			????????????
																			<c:set var ="result" value="${result+1 }" />
																		</c:when>
																		
																	</c:choose>
																</c:forEach>
															</c:if>
															<c:if test="${revcom.size() == 0 || result<1}" >
																????????????
															</c:if>
														</td>
														<td class="clear">
															<c:if test="${revcom.size() == 0 || result<1}" >
																<a href="${pageContext.request.contextPath }/11_admin/admin_review_answer.do?reviewno=${review.reviewno}"
															class="btn btn-warning btn-xs review_list_answer">??????</a>
															</c:if>
															<c:if test="${result==1}" >
																<a href="${pageContext.request.contextPath }/11_admin/admin_review_view.do?reviewno=${review.reviewno}"
															class="btn btn-warning btn-xs review_list_answer">??????</a>
															</c:if>
															<%-- <a href="${pageContext.request.contextPath }/11_admin/admin_review_answer.do?reviewno=${review.reviewno}"
															class="btn btn-warning btn-xs review_list_answer">??????</a> --%>
															<button type="button" class="btn btn-danger btn-xs review_list_delete" data-reviewno="${review.reviewno }">??????</button>
														</td>
													</tr>
												</c:forEach>
											</c:if>
											
										</tbody>
									</table>
								<!--????????? ?????????-->
								<div class="product_footer">
									<button type="button" class="btn btn-block btn-danger btn-sm select_delete">????????????</button>
									<div class="pagination_box">
										<ul class="pagination pagination-sm m-0">
											<li class="page-item"><a class="page-link" href="#">&laquo;</a></li>
											<c:forEach var="i" begin="${pageData.startPage}"
												end="${pageData.endPage}" varStatus="status">
												<%-- ????????? URL ?????? --%>
													<c:url
													value="/11_admin/admin_review.do"
													var="pageUrl">
													<c:param name="page" value="${i}" />
													</c:url>
						
												<%-- ????????? ?????? ?????? --%>
													<c:choose>
													<%-- ?????? ????????? ?????? ????????? ????????? ????????? ?????? ?????? ?????? ?????? --%>
													<c:when test="${pageData.nowPage == i}">
													<li class="page-item"><span class="page-link"><strong>${i}</strong></span></li>
													</c:when>
													<%-- ????????? ???????????? ?????? ?????? ????????? --%>
													<c:otherwise>
													<li class="page-item"><a class="page-link" href="${pageUrl}">${i}</a></li>															</c:otherwise>
													</c:choose>
												</c:forEach>
											<li class="page-item"><a class="page-link" href="#">&raquo;</a></li>
										</ul>
									</div>
								</div>
								<!--?????????????????? ???-->
							</div>
								<!-- /.card-body -->
								</div>
								<!-- /.card ??? -->
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /wrapper  ???-->
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
			/** ??????????????? ?????? ?????? ????????? */
			$("#parent").change(
					function() {
						// ????????? ????????? #child??? ?????? ?????????
						$("#child").empty();
						// ????????? ????????? ????????????
						var choice = $(this).find("option:selected").val();
						// ???????????? ????????? ?????? ??????
						if (!choice) {
							$("#child").html(
									"<option value=''>--2?????????--</option>")
						}

						$.get('../api/category.do', {
							type : choice
						}, function(req) {
							// ?????? ????????? HTML?????? ????????????.
							var template = Handlebars.compile($(
									"#category_item_tmpl").html());
							// Ajax??? ????????? ????????? JSON??? ???????????? ????????????.
							var html = template(req);
							// #child ????????? ????????? ????????????.
							$("#child").append(html);
						}); // end $.get
					}); // end change
			/**???????????? 1??? > 2??? ???????????? ????????? ??? */ 
			/* `#all_check`??? ?????? ????????? ??????????????? ?????? ????????? */
			$("#all_check").change(function() {
            	// ?????? `.delete_check`??? ?????? ????????? `#all_check`??? ???????????? ?????????.
				$(".delete_check").prop('checked', $(this).prop('checked'));
			});
			/** ?????? ?????? ?????? ????????? */
			$(".select_delete").click(function () {
				var delete_check_list = $(".delete_check:checked");
				if(delete_check_list.length == 0){
					alert("????????? ????????? ????????????.");
					return false;
				}

				//????????? ???????????? ????????????.
				for (var i=0; i<delete_check_list.length; i++) {
                    // i?????? HTML????????? jQuery????????? ???????????? ???????????? ?????????.
                    var ckeck_product = $(delete_check_list[i]);
                    // ????????? ?????? ??????
					$(ckeck_product).parents('tr').remove();
                };
				
				var product_list_num = $('.product_table tbody tr').length;
				$('.search_number').html(product_list_num);
				$('.total_number').html(product_list_num);
				
				//?????? ????????? ????????? ????????? 
				if(product_list_num == 0){
					console.log(product_list_num);
					$('#product_list').html('<tr id="product_none_msg"><td colspan="9">????????? ??????????????????.</td></tr>');
				}
			});
			$(".review_list_delete").click(function () {
				var delete_confirm = confirm("?????? ?????? ???????????????????")

				if(delete_confirm){
					$(this).parents('tr').remove();
				}else{
					return false;
				}
				
				var product_list_num = $('.product_table tbody tr').length;
				$('.search_number').html(product_list_num);
				$('.total_number').html(product_list_num);

				//?????? ????????? ????????? ????????? 
				if(product_list_num == 0){
					console.log(product_list_num);
					$('#product_list').html('<tr id="product_none_msg"><td colspan="8">????????? ??????????????????.</td></tr>');
				}
			});
			$(".review_list_answer").click(function () {
				window.location.href = "${pageContext.request.contextPath}/11_admin/admin_review_answer.do";
			});
		});
		
	</script>
</body>
</html>