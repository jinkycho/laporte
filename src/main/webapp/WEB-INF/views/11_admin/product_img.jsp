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
<link rel="stylesheet" href="../assets/css/product_add.css">

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
						<li class="brand_logo_box"><a href="${pageContext.request.contextPath}/11_admin/admin_home.do" class="brand_logo">
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
								<li class="active"><a href="${pageContext.request.contextPath}/11_admin/product_add.do"><i
										class="glyphicon glyphicon-plus"></i> ?????? ??????</a></li>
								<li><a href="${pageContext.request.contextPath}/11_admin/admin_review.do"><i
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
								<h2 class="m-0">?????? ????????? ??????</h2>
							</div>
							<!-- /.col -->
							<div class="col-sm-6 clearfix">
								<ol class="breadcrumb pull-right">
                                    <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/11_admin/admin_home.do">???</a></li>
                                    <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/11_admin/stock_management.do">????????????</a></li>
									<li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/11_admin/product_view.do?prodno=${img.prodno}">????????????</a></li>
									<li class="breadcrumb-item active">?????? ????????? ??????</li>
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
									
                                    <!-- ?????? ????????? ??????-->
                                    <div class="card-header">
                                        <h3 class="card-title">????????? ??????</h3>
                                    </div>
                                    <div class="card-body">
                                    
										<form method="post"
												action="${pageContext.request.contextPath}/11_admin/product_img"
												enctype="multipart/form-data" class="form-inline">
                                        	<table class="table table-bordered product_info_table">
                                            	<tr>
                                                <td class="info_table_color">?????? ?????????</td>
                                                <td>
                                                  	<div class="filebox_thumb">
														<input type="file" name="product_detail_img" id="product_detail_img" class="form-control"/>
														<input class="upload-name form-control" placeholder="????????????">
														<label for="product_detail_img">????????????</label>
														<button type="submit" class="form-control btn btn-success" data-prodno="${img.prodno}">?????????</button>
														<input type="hidden" id="prodno" name="prodno" value="${img.prodno}">
													</div>
													* ?????? ?????? ??? ????????? ????????? ???????????? ????????? ???????????????.
                                                </td>
                                            	</tr>
                                        	</table>
                                        </form>
                                    </div>
                                    <!-- ?????? ????????? ?????? -->
                                   
                                    <!--?????? ?????????-->
                                    <div class="card-header">
                                        <h3 class="card-title">?????? ?????????</h3>
                                    </div>
                                    <div class="card-body">
                                        <table class="table table-bordered product_info_table">
                                            <tr>
                                                <td class="info_table_color">?????? ????????? </td>
                                                <td>
                                                	<div id="detail_img_box">
                                                	<c:choose>
                                                	<%--?????? ???????????? ?????????? --%>
                                                	<c:when test="${imgList == null || fn:length(imgList) == 0}">
                                                		?????? ???????????? ????????????. ??????????????????.
                                                	</c:when>
                                                	<%--?????? ???????????? ?????????? --%>
                                                	<c:otherwise>
                                                		<c:forEach var="item" items="${imgList}" varStatus="status">
                                                			<div class="detailimg_wrap">
                                                				 <img src="${item.fileUrl}" width="240"  height="240"/>
        														 <a href="#" class="btn btn-block btn-danger detail_delete" data-detailimgno="${item.detailimgno}">??????</a>
                                                			</div>
                                                		</c:forEach>
                                                	</c:otherwise>
                                                	</c:choose>
                                                	
                                                	
                                                	</div>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <!--?????? ????????? ???-->

								</div>
								<!-- /.card ??? -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /wrapper  ???-->
	</section>
	<footer></footer>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <!-- jQuery Ajax Form plugin CDN -->
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery.form/4.2.2/jquery.form.min.js"></script>
    <!-- jQuery Ajax Setup -->
    <script src="${pageContext.request.contextPath}/assets/plugins/ajax/ajax_helper.js"></script>
	<script type="text/javascript">
		$("#menu-toggle").click(function(e) {
			e.preventDefault();
			$("#wrapper").toggleClass("toggled");
        });
		
		$(function() {
			$(".form-inline").ajaxForm({
	            // ?????? ????????? ??????
	            method: "POST",
	            // ???????????? 200 ????????? ????????? ?????? ?????????
	            success: function(json) {
	                console.log(json);
	                
	                // json??? ????????? ???????????? ???????????? ?????????????????? ????????????.
	                if (json.rt == "OK") {
	                    location.reload();
	                }
	            }
	        });
			
			 /* $(".btn-success").click(function() {
				
				let current = $(this); //???????????? ????????? ?????? ?????? 
				let prodno = current.data('prodno');
				
				$.get("${pageContext.request.contextPath}/11_admin/product_img", {
                    "prodno": prodno     // ?????? ????????? GET ??????????????? ????????????.
                }, function(json) {
                    var source = $("#detail-list-tmpl").html();   // ????????? ?????? ????????????
                    var template = Handlebars.compile(source);  // ????????? ?????? ?????????
                    var result = template(json);    // ????????? ????????? ???????????? json ??????
                    $("#detail_img").append(result);      // ?????? ???????????? #detail_img ????????? ????????????.
                    
                });
			}); */ 
			
			$(document).ready(function(){ 
	            var fileTarget = $('#product_detail_img'); 
	            fileTarget.on('change', function(){ // ?????? ????????????
	            var cur=$(".filebox_thumb input[type='file']").val();
	                $(".upload-name").val(cur);
	            }); 
	        }); 
		
	    	$(".detail_delete").click(function(e) {
	    		e.preventDefault();
	    		
	    		let current = $(this); //???????????? ????????? ?????? ??????
	    		let detailimgno = current.data('detailimgno');    //data-detailimgno ?????? ?????????
	    		
	    		//????????????
	    		if(!confirm("?????? ?????????????????????????")){
	    			return false;
	    		}
	    		//delete ???????????? Ajax ?????? --> <form>????????? ???????????? ?????? ????????????.
	    		$.delete("${pageContext.request.contextPath}/11_admin/product_img", {
	    			"detailimgno": detailimgno
	    		}, function(json) {
	    			if(json.rt=="OK"){
	    				alert("?????????????????????.");
	    				location.reload();
	    			}
	    		})
	    	});
	    });
		
	</script>
</body>
</html>