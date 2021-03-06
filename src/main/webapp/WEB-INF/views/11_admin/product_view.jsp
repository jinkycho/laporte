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
								<h2 class="m-0">?????? ??????</h2>
							</div>
							<!-- /.col -->
							<div class="col-sm-6 clearfix">
								<ol class="breadcrumb pull-right">
                                    <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/11_admin/admin_home.do">???</a></li>
                                    <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/11_admin/stock_management.do">????????????</a></li>
									<li class="breadcrumb-item active">????????????</li>
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
                                        <h3 class="card-title">?????? ??????</h3>
                                    </div>
                                    <!-- /.card-header -->
                                    <div class="card-body">
                                        <table class="table table-bordered product_info_table">
                                            <tr>
                                                <td class="info_table_color">?????? ?????? *</td>
                                                <td>
                                                   ${output.catname2}
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="info_table_color">?????? ??????</td>
                                                <td>
                                                    ${output.group}
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="info_table_color">????????? *</td>
                                                <td>
                                                    ${output.name}
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="info_table_color">?????? ?????? *</td>
                                                <td>
                                                    ${output.color}
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="info_table_color">?????? ??????</td>
                                                <td>
                                                    ${output.size}
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="info_table_color">?????? ?????? *</td>
                                                <td>
                                                	<c:if test="${output.display =='Y'}">
                                                	O
                                                	</c:if>
                                                    <c:if test="${output.display =='N'}">
                                                	X
                                                	</c:if>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <!-- /.card-body -->
                                    <!--?????? ?????? ???-->

                                    <!--?????? ??? ?????? ??????-->
                                    <div class="card-header">
                                        <h3 class="card-title">?????? ??? ??????</h3>
                                    </div>
                                    <div class="card-body">
                                        <table class="table table-bordered product_info_table">
                                            <tr>
                                                <td class="info_table_color">????????? *</td>
                                                <td>
                                                   <fmt:formatNumber value="${output.price}" pattern="#,###" />???
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="info_table_color">?????????</td>
                                                <td>
                                                <!-- ???????????? 0????????? ????????? ?????? ??????(?????????????????? ???????????? NULL??? ??????????????????) -->
                                                	<c:if test="${output.saleprice != 0}">
                                                	<fmt:formatNumber value="${output.saleprice}" pattern="#,###" />???
                                                	</c:if>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="info_table_color">?????? *</td>
                                                <td>
                                               		<fmt:formatNumber value="${output.stock}" pattern="#,###" />???
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <!--?????? ??? ?????? ???-->
    
                                    <!-- ?????? ?????? ??????-->
                                    <div class="card-header">
                                        <h3 class="card-title">?????? ??????</h3>
                                    </div>
                                    <div class="card-body">
                                        <table class="table table-bordered product_info_table">
                                            <tr>
                                                <td class="info_table_color" width="20%">????????? ??????</td>
                                                <td width="80%">
                                                   ${output.adminnote}
                                                </td>
                                            </tr>
                                            <tr id="product_detail_text">
                                                <td class="info_table_color">?????? ?????? *</td>
                                                <td>
                                                   ${output.detailnote}
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="info_table_color">?????? ???????????? *</td>
                                                <td>
                                                    ${output.detailsize}
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <!-- ?????? ?????? ???-->
                                    
                                    <!--?????? ?????????-->
                                    <div class="card-header">
                                        <h3 class="card-title">?????? ?????????</h3>
                                    </div>
                                    <div class="card-body">
                                        <table class="table table-bordered product_info_table">
                                            <tr>
                                                <td class="info_table_color">?????? ????????? *</td>
                                                <td>
                                                   <img src="${imgoutput.fileUrl}" width="240" />
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div class="btn_box">
                                    	<a href="${pageContext.request.contextPath}/11_admin/product_img.do?prodno=${output.prodno}"  class="btn btn-block btn-success prod_img_add">?????? ????????? ??????</a>
                                    	<a href="#" id="deleteProduct" data-prodno="${output.prodno}" data-name="${output.name}" class="btn btn-block btn-danger prod_delete">??????</a>
                                    	<a href="${pageContext.request.contextPath}/11_admin/product_edit.do?prodno=${output.prodno}"  class="btn btn-block btn-primary prod_edit">??????</a>
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
	 <!-- Handlebar ????????? ?????? -->
	<!-- Handlebar CDN ?????? -->
    <script src="//cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.4.2/handlebars.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <!-- jQuery Ajax Form plugin CDN -->
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery.form/4.2.2/jquery.form.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/plugins/ajax/ajax_helper.js"></script>
	<script type="text/javascript">
		$("#menu-toggle").click(function(e) {
			e.preventDefault();
			$("#wrapper").toggleClass("toggled");
        });
		
		$(function() {
	    	$("#deleteProduct").click(function(e) {
	    		e.preventDefault();
	    		
	    		let current = $(this); //???????????? ????????? ?????? ?????? ==> <a>??????
	    		let prodno = current.data('prodno');    //data-profno ?????? ?????????
	    		let name =current.data('name');         //data-name ?????? ?????????
	    		let target = name + " ??????" ;       //??????+??????+?????? ????????? ?????????
	    		
	    		//????????????
	    		if(!confirm("?????? " + target + "???(???) ?????????????????????????")){
	    			return false;
	    		}
	    		//delete ???????????? Ajax ?????? --> <form>????????? ???????????? ?????? ????????????.
	    		$.delete("${pageContext.request.contextPath}/11_admin/product_view", {
	    			"prodno": prodno
	    		}, function(json) {
	    			if(json.rt=="OK"){
	    				alert("?????????????????????.");
	    				//???????????? ??? ?????? ???????????? ??????
	    				window.location = "${pageContext.request.contextPath}/11_admin/stock_management.do";
	    			}
	    		})
	    	});
	    });
		
	</script>
</body>
</html>