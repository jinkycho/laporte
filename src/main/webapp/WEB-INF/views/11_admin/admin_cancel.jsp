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
								??? ???????????? ???????????? <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li>
									<a href="${pageContext.request.contextPath}/11_admin/admin_resvappv.do">
										<i class="glyphicon glyphicon-ok"></i>
										?????? ??????
									</a>
								</li>
							</ul>
						</li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"><i class="glyphicon glyphicon-tags"></i>
								?????? ?????? <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="${pageContext.request.contextPath}/11_admin/stock_management.do">
										<i class="glyphicon glyphicon-briefcase"></i> ?????? ??????</a></li>
               					<li><a href="${pageContext.request.contextPath}/11_admin/product_add.do">
               					 		<i class="glyphicon glyphicon-plus"></i> ?????? ??????</a></li>
								<li><a href="${pageContext.request.contextPath}/11_admin/admin_review.do">
										<i class="glyphicon glyphicon-star-empty"></i> ?????? ??????</a></li>
								
							</ul>
						</li>
                        <li class="dropdown open">
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
                                <li class="active"><a href="${pageContext.request.contextPath}/11_admin/admin_cancel.do">
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
                                <li><a href="${pageContext.request.contextPath}/11_admin/admin_qanda.do">
                                    <i class="glyphicon glyphicon-envelope"></i> ????????? ?????? ??????</a></li>
                                
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
								<h2 class="m-0">??????/??????/??????/??????</h2>
							</div>
							<!-- /.col -->
							<div class="col-sm-6 clearfix">
								<ol class="breadcrumb pull-right">
									<li class="breadcrumb-item"><a href="#">?????? ??????</a></li>
									<li class="breadcrumb-item active">??????/??????/??????/??????</li>
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
                            <!-- ??? -->
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="cart-header border-0" id="tab_container">
                                        <ol class="tab_box">
                                            <li id="tab_cancel" class="tab selected">
                                                <a href="#" class="tab_button">
                                                    <span class="tab_thum thum_cancel"></span>
                                                    <strong class="tab_title">??????</strong>
                                                    <span class="count" id="CC"></span>
                                                </a>
                                            </li>
                                            <li id="tab_change" class="tab">
                                                <a href="#" class="tab_button">
                                                    <span class="tab_thum thum_change"></span>
                                                    <strong class="tab_title">??????</strong>
                                                    <span class="count" id="CH"></span>
                                                </a>
                                            </li>
                                            <li id="tab_return" class="tab">
                                                <a href="#" class="tab_button">
                                                    <span class="tab_thum thum_return"></span>
                                                    <strong class="tab_title">??????</strong>
                                                    <span class="count" id="RT"></span>
                                                </a>
                                            </li>
                                            <li id="tab_refund" class="tab">
                                                <a href="#" class="tab_button">
                                                    <span class="tab_thum thum_refund"></span>
                                                    <strong class="tab_title">??????</strong>
                                                    <span class="count" id="RF"></span>
                                                </a>
                                            </li>
                                        </ol>
                                    </div>
                                </div>
                            </div>

                            <!-- ?????? -->
                            <div class="col-md-12 content_cancel">
                                <div class="card">
                                    <div class="card-header border-0">
                                        <h3 class="card-title">??????</h3><br/>
                                        <table class="table table-bordered">
                                            <thead>
                                                <tr class="table_color">
                                                	<th style="width: 30px"></th>
                                                    <th>????????????</th>
                                                    <th>???????????????</th>
                                                    <th>????????????</th>
                                                    <th>?????????</th>
                                                    <th>?????????</th>
                                                    <th>????????????</th>
                                                    <th>?????? ??????</th>
                                                    <th>????????????</th>
                                                    <th>????????????</th>
                                                    <th>????????????</th>
                                                    <th width='54px'>??????</th>
                                                </tr>
                                            </thead>
                                            <tbody id="cancel_list">
                                            	<c:choose>
                                            		<c:when test="${output == null || fn:length(output) == 0}">
									                    <tr>
									                        <td colspan="12" align="center">??????????????? ????????????.</td>
									                    </tr>
								                    </c:when>
								                    <c:otherwise>
								                    	<c:forEach var="item" items="${output }" varStatus="status">
								                    		<c:if test="${item.orderstatus=='CC'}">
				                                                <tr>
				                                                	<td>
				                                                		<input type='checkbox' class="check" name='chkcc[]' value="${item.orderno }">
				                                                		<input type='hidden' value="${item.orderstatus }" >
				                                                	</td>
				                                                    <td>${item.orderno }</td>
				                                                    <td>
				                                                    	<fmt:parseDate value="${item.ccdate}" var="ccdate" pattern="yyyy-MM-dd" />
				                                                    	<fmt:formatDate value="${ccdate }" pattern="yyyy-MM-dd" />
			                                                    	</td>
			                                                    	<td>
				                                                    	<fmt:parseDate value="${item.regdate}" var="regdate" pattern="yyyy-MM-dd" />
				                                                    	<fmt:formatDate value="${regdate }" pattern="yyyy-MM-dd" />
			                                                    	</td>
				                                                    <td>${item.name }</td>
				                                                    <td>
				                                                    	0<fmt:formatNumber var="phoneno" value="${item.phoneno }" pattern="###,####,####" />
				                                                    	<c:out value="${fn:replace(phoneno, ',', '-') }" />
			                                                    	</td>
				                                                    <td>${item.pname }</td>
				                                                    <td>
				                                                    	&#8361; <fmt:formatNumber pattern="###,###,###" value='${item.totalprice }'/>
				                                                    </td>
				                                                    <td>
				                                                    	<c:if test="${item.paytype=='C' }">
				                                                    		????????????
				                                                    	</c:if>
				                                                    	<c:if test="${item.paytype=='D' }">
				                                                    		???????????????
				                                                    	</c:if>
				                                                    	<c:if test="${item.paytype=='M' }">
				                                                    		???????????????
				                                                    	</c:if>
				                                                    	<c:if test="${item.paytype=='D2' }">
				                                                    		?????????????????????
				                                                    	</c:if>
				                                                    </td>
				                                                    <td>
				                                                    	<c:if test="${item.paystatus=='N' }">
				                                                    		?????????
				                                                    	</c:if>
				                                                    	<c:if test="${item.paystatus=='Y' }">
				                                                    		????????????
				                                                    	</c:if>
				                                                    </td>
				                                                    <td>
				                                                    	<c:if test="${item.ccstatus=='I' }">
				                                                    		?????????
				                                                    	</c:if>
				                                                    	<c:if test="${item.ccstatus=='C' }">
				                                                    		????????????
				                                                    	</c:if>
				                                                    </td>
				                                                    <td class="clear">
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
                                        <button type="button" class="btn btn-block btn-danger btn-sm select_complete" id="cc_complete">????????????</button>
                                    </div>
                                    <!--????????? ?????????-->
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
                                    <!--?????????????????? ???-->
                                </div>
                            </div>
                            
                            <!-- ?????? -->
                            <div class="col-md-12 content_change">
                                <div class="card">
                                    <div class="card-header border-0">
                                        <h3 class="card-title">??????</h3><br/>
                                        <table class="table table-bordered">
                                            <thead>
                                                <tr class="table_color">
                                                	<th style="width: 10px"></th>
                                                    <th>????????????</th>
                                                    <th>???????????????</th>
                                                    <th>????????????</th>
                                                    <th>?????????</th>
                                                    <th>????????????</th>
                                                    <th>??????</th>
                                                    <th>????????????</th>
                                                    <th>????????????</th>
                                                    <th width='54px'>??????</th>
                                                </tr>
                                            </thead>
                                            <tbody id="cancel_list">
                                            	<c:choose>
                                            		<c:when test="${output == null || fn:length(output) == 0}">
									                    <tr>
									                        <td colspan="10" align="center">??????????????? ????????????.</td>
									                    </tr>
								                    </c:when>
								                    <c:otherwise>
								                    	<c:forEach var="item" items="${output }" varStatus="status">
								                    		<c:if test="${item.orderstatus=='CH' && item.paystatus=='Y'}">
				                                                <tr>
				                                                	<td>
				                                                		<input type='checkbox' class="check" name='chkch[]' value="${item.orderno }">
				                                                		<input type='hidden' value="${item.orderstatus }" >
				                                                	</td>
				                                                    <td>${item.orderno }</td>
				                                                    <td>
				                                                    	<fmt:parseDate value="${item.ccdate}" var="ccdate" pattern="yyyy-MM-dd" />
				                                                    	<fmt:formatDate value="${ccdate }" pattern="yyyy-MM-dd" />
			                                                    	</td>
			                                                    	<td>
				                                                    	<fmt:parseDate value="${item.regdate}" var="regdate" pattern="yyyy-MM-dd" />
				                                                    	<fmt:formatDate value="${regdate }" pattern="yyyy-MM-dd" />
			                                                    	</td>
				                                                    <td>${item.name }</td>
				                                                    <td>${item.pname }</td>
				                                                    <td>${item.ea }</td>
				                                                    <td>
				                                                    	<c:if test="${item.paystatus=='N' }">
				                                                    		?????????
				                                                    	</c:if>
				                                                    	<c:if test="${item.paystatus=='Y' }">
				                                                    		????????????
				                                                    	</c:if>
				                                                    </td>
				                                                    <td>
				                                                    	<c:if test="${item.ccstatus=='I' }">
				                                                    		?????????
				                                                    	</c:if>
				                                                    	<c:if test="${item.ccstatus=='C' }">
				                                                    		????????????
				                                                    	</c:if>
				                                                    </td>
				                                                    <td class="clear">
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
                                        <button type="button" class="btn btn-block btn-danger btn-sm select_complete" id="ch_complete">????????????</button>
                                    </div>
                                    <!--????????? ?????????-->
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
                                    <!--?????????????????? ???-->
                                </div>
                            </div>

                            <!-- ?????? -->
                            <div class="col-md-12 content_return">
                                <div class="card">
                                    <div class="card-header border-0">
                                        <h3 class="card-title">??????</h3><br/>
                                        <table class="table table-bordered">
                                            <thead>
                                                <tr class="table_color">
                                                	<th style="width: 10px"></th>
                                                    <th>????????????</th>
                                                    <th>???????????????</th>
                                                    <th>????????????</th>
                                                    <th>?????????</th>
                                                    <th>????????????</th>
                                                    <th>??????</th>
                                                    <th>????????????</th>
                                                    <th>????????????</th>
                                                    <th width='54px'>??????</th>
                                                </tr>
                                            </thead>
                                            <tbody id="cancel_list">
                                            	<c:choose>
                                            		<c:when test="${output == null || fn:length(output) == 0}">
									                    <tr>
									                        <td colspan="10" align="center">??????????????? ????????????.</td>
									                    </tr>
								                    </c:when>
								                    <c:otherwise>
								                    	<c:forEach var="item" items="${output }" varStatus="status">
								                    		<c:if test="${item.orderstatus=='RT' && item.paystatus=='Y'}">
				                                                <tr>
				                                                	<td>
				                                                		<input type='checkbox' class="check" name='chkrt[]' value="${item.orderno }">
				                                                		<input type='hidden' value="${item.orderstatus }" >
		                                                			</td>
				                                                    <td>${item.orderno }</td>
				                                                    <td>
				                                                    	<fmt:parseDate value="${item.ccdate}" var="ccdate" pattern="yyyy-MM-dd" />
				                                                    	<fmt:formatDate value="${ccdate }" pattern="yyyy-MM-dd" />
			                                                    	</td>
			                                                    	<td>
				                                                    	<fmt:parseDate value="${item.regdate}" var="regdate" pattern="yyyy-MM-dd" />
				                                                    	<fmt:formatDate value="${regdate }" pattern="yyyy-MM-dd" />
			                                                    	</td>
				                                                    <td>${item.name }</td>
				                                                    <td>${item.pname }</td>
				                                                    <td>${item.ea }</td>
				                                                    <td>
				                                                    	<c:if test="${item.paystatus=='N' }">
				                                                    		?????????
				                                                    	</c:if>
				                                                    	<c:if test="${item.paystatus=='Y' }">
				                                                    		????????????
				                                                    	</c:if>
				                                                    </td>
				                                                    <td>
				                                                    	<c:if test="${item.ccstatus=='I' }">
				                                                    		?????????
				                                                    	</c:if>
				                                                    	<c:if test="${item.ccstatus=='C' }">
				                                                    		????????????
				                                                    	</c:if>
				                                                    </td>
				                                                    <td class="clear">
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
                                        <button type="button" class="btn btn-block btn-danger btn-sm select_complete" id="rt_complete">????????????</button>
                                    </div>
                                    <!--????????? ?????????-->
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
                                    <!--?????????????????? ???-->
                                </div>
                            </div>

                            <!-- ?????? -->
                            <div class="col-md-12 content_refund">
                                <div class="card">
                                    <div class="card-header border-0">
                                        <h3 class="card-title">??????</h3><br/>
                                        <table class="table table-bordered">
                                            <thead>
                                                <tr class="table_color">
                                                	<th style="width: 10px"></th>
                                                    <th>????????????</th>
                                                    <th>???????????????</th>
                                                    <th>????????????</th>
                                                    <th>?????????</th>
                                                    <th>??? ??????</th>
                                                    <th>??? ?????????</th>
                                                    <th>??????</th>
                                                    <th>?????????</th>
                                                    <th>????????????</th>
                                                    <th>????????????</th>
                                                    <th width='54px'>??????</th>
                                                </tr>
                                            </thead>
                                            <tbody id="cancel_list">
                                            	<c:choose>
                                            		<c:when test="${output == null || fn:length(output) == 0}">
									                    <tr>
									                        <td colspan="12" align="center">??????????????? ????????????.</td>
									                    </tr>
								                    </c:when>
								                    <c:otherwise>
								                    	<c:forEach var="item" items="${output }" varStatus="status">
								                    		<c:if test="${item.orderstatus=='RF' && item.paystatus=='Y'}">
				                                                <tr>
				                                                	<td>
				                                                		<input type='checkbox' class="check" name='chkrf[]' value="${item.orderno }">
				                                                		<input type='hidden' value="${item.orderstatus }" >
				                                                	</td>
				                                                    <td>${item.orderno }</td>
				                                                    <td>
				                                                    	<fmt:parseDate value="${item.ccdate}" var="ccdate" pattern="yyyy-MM-dd" />
				                                                    	<fmt:formatDate value="${ccdate }" pattern="yyyy-MM-dd" />
			                                                    	</td>
				                                                	<td>
				                                                    	<fmt:parseDate value="${item.regdate}" var="regdate" pattern="yyyy-MM-dd" />
				                                                    	<fmt:formatDate value="${regdate }" pattern="yyyy-MM-dd" />
			                                                    	</td>
				                                                    <td>${item.name }</td>
				                                                    <td>${item.ea }</td>
				                                                    <td>
				                                                    	&#8361; <fmt:formatNumber pattern="###,###,###" value='${item.totalprice }'/>
				                                                    </td>
				                                                    <td>
				                                                    	<c:choose>
				                                                    		<c:when test="${item.distype=='W' }">
				                                                    			&#8361; <fmt:formatNumber pattern="###,###,###" value='${item.discount }'/>
				                                                    		</c:when>
				                                                    		<c:when test="${item.distype=='P' }">
				                                                    			<fmt:formatNumber pattern="###,###,###" value='${item.discount }'/> %
				                                                    		</c:when>
				                                                    		<c:otherwise>
				                                                    			${item.couponno }??? ??????, ${item.c_name }
				                                                    		</c:otherwise>
				                                                    	</c:choose>
				                                                    </td>
				                                                    <td>
				                                                    	&#8361; <fmt:formatNumber pattern="###,###,###" value='${item.point }'/>
				                                                    </td>
				                                                    <td>
				                                                    	<c:if test="${item.paytype=='C' }">
				                                                    		????????????
				                                                    	</c:if>
				                                                    	<c:if test="${item.paytype=='D' }">
				                                                    		???????????????
				                                                    	</c:if>
				                                                    	<c:if test="${item.paytype=='M' }">
				                                                    		???????????????
				                                                    	</c:if>
				                                                    	<c:if test="${item.paytype=='D2' }">
				                                                    		?????????????????????
				                                                    	</c:if>
				                                                    </td>
				                                                    <td>
				                                                    	<c:if test="${item.ccstatus=='I' }">
				                                                    		?????????
				                                                    	</c:if>
				                                                    	<c:if test="${item.ccstatus=='C' }">
				                                                    		????????????
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
                                        <button type="button" class="btn btn-block btn-danger btn-sm select_complete" id="rf_complete">????????????</button>
                                    </div>
                                    <!--????????? ?????????-->
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
                                    <!--?????????????????? ???-->
                                </div>
                            </div>
                        </div>
					</div>
				</div>
			</div>
		</div>
		<!-- /wrapper  ???-->
	</section>
	<footer></footer>

	<script type="text/javascript">
		$("#menu-toggle").click(function(e) {
			e.preventDefault();
			$("#wrapper").toggleClass("toggled");
        });
        
		/* ?????? ?????? ??? ?????? */
        $(function() {
            $(document).ready(function() {
	            $(".content_change").hide();
	            $(".content_return").hide();
	            $(".content_refund").hide();
	            
	            // ?????? ??? ????????????
	            var countcc = $("input:checkbox[name='chkcc[]']").length;
	            $("#CC").html(countcc);
	            
	            var countch = $("input:checkbox[name='chkch[]']").length;
	            $("#CH").html(countch);
	            
	            var countrt = $("input:checkbox[name='chkrt[]']").length;
	            $("#RT").html(countrt);
	            
	            var countrf = $("input:checkbox[name='chkrf[]']").length;
	            $("#RF").html(countrf);
            });

            /** ??? ????????? ???????????? */
            $(document).on("click", ".tab", function(e) {
            	e.preventDefault();

            	// ??? ????????? ????????? ??? ??????
            	$(this).addClass("selected");
            	$(".tab").not(this).removeClass("selected");
            	
            	// ??? ????????? ????????? ?????? ???????????? ??????
            	if ($(".check").is(":checked")) {
	            	$(".check").prop("checked", false);
	            }
            });

            /** ??? ????????? ????????? ?????? ?????? */
            $(document).on("click", "#tab_cancel", function(e) {
            	e.preventDefault();

            	$(".content_cancel").show();
            	$(".content_change").hide();
            	$(".content_return").hide();
	            $(".content_refund").hide();
            });

            $(document).on("click", "#tab_change", function(e) {
    	        e.preventDefault();
	
    	        $(".content_cancel").hide();
        	    $(".content_change").show();
            	$(".content_return").hide();
            	$(".content_refund").hide();
            });

            $(document).on("click", "#tab_return", function(e) {
            	e.preventDefault();

	            $(".content_cancel").hide();
    	        $(".content_change").hide();
        	    $(".content_return").show();
            	$(".content_refund").hide();
            });

            $(document).on("click", "#tab_refund", function(e) {
	            e.preventDefault();
	
    	        $(".content_cancel").hide();
        	    $(".content_change").hide();
            	$(".content_return").hide();
            	$(".content_refund").show();
            });
        });

        /* ?????? ???????????? ?????? */
		$(document).on("click","#cc_complete", function() {
			
			var current = null;													// ????????? ?????? ?????? ??????
			var count = $("input:checkbox[name='chkcc[]']").length;				// ??? ??????
			var ckcount = $("input:checkbox[name='chkcc[]']:checked").length;	// ????????? ?????? ??????

			for (var i=0; i<count; i++) {
				if(ckcount != 1) {
					alert("???????????? ????????? ????????? ?????????.");
					break;
				} else {
					current = $("input:checkbox[name='chkcc[]']:checked");		// ????????? ????????????
				}
			}
			
			var orderno = $(current).val();
			var orderstatus = $(current).next().val();
			var ccstatus = "C";
			if (!confirm("?????? ????????? ???????????? ????????? ?????????.")) {
				return false;
			}
			
			// put ???????????? ajax ??????
			$.put("${pageContext.request.contextPath}/11_admin/admin_cancel", {
				"orderno":orderno,
				"orderstatus":orderstatus,
				"ccstatus":ccstatus
			}, function(json) {
				if(json.rt == "OK") {
					alert("?????????????????????");
					// ?????? ?????? ??? ?????? ????????? ??????
					window.location = "${pageContext.request.contextPath}/11_admin/admin_cancel.do";
				}
			});
		});
        
		/* ?????? ???????????? ?????? */
		$(document).on("click","#ch_complete", function() {
			
			var current = null;														// ????????? ?????? ?????? ??????
			var count = $("input:checkbox[name='chkch[]']").length;					// ??? ??????
			var ckcount = $("input:checkbox[name='chkch[]']:checked").length;		// ????????? ?????? ??????

			for (var i=0; i<count; i++) {
				if(ckcount != 1) {
					alert("???????????? ????????? ????????? ?????????.");
					break;
				} else {
					current = $("input:checkbox[name='chkch[]']:checked");	// ????????? ????????????
				}
			}
			
			var orderno = $(current).val();
			var orderstatus = $(current).next().val();
			var ccstatus = "C";
			if (!confirm("?????? ????????? ???????????? ????????? ?????????.")) {
				return false;
			}
			
			// put ???????????? ajax ??????
			$.put("${pageContext.request.contextPath}/11_admin/admin_cancel", {
				"orderno":orderno,
				"orderstatus":orderstatus,
				"ccstatus":ccstatus
			}, function(json) {
				if(json.rt == "OK") {
					alert("?????????????????????");
					// ?????? ?????? ??? ?????? ????????? ??????
					window.location = "${pageContext.request.contextPath}/11_admin/admin_cancel.do";
				}
			});
		});
		
		/* ?????? ???????????? ?????? */
		$(document).on("click","#rt_complete", function() {
			
			var current = null;														// ????????? ?????? ?????? ??????
			var count = $("input:checkbox[name='chkrt[]']").length;					// ??? ??????
			var ckcount = $("input:checkbox[name='chkrt[]']:checked").length;		// ????????? ?????? ??????

			for (var i=0; i<count; i++) {
				if(ckcount != 1) {
					alert("???????????? ????????? ????????? ?????????.");
					break;
				} else {
					current = $("input:checkbox[name='chkrt[]']:checked");	// ????????? ????????????
				}
			}
			
			var orderno = $(current).val();
			var orderstatus = $(current).next().val();
			var ccstatus = "C";
			if (!confirm("?????? ????????? ???????????? ????????? ?????????.")) {
				return false;
			}
			
			// put ???????????? ajax ??????
			$.put("${pageContext.request.contextPath}/11_admin/admin_cancel", {
				"orderno":orderno,
				"orderstatus":orderstatus,
				"ccstatus":ccstatus
			}, function(json) {
				if(json.rt == "OK") {
					alert("?????????????????????");
					// ?????? ?????? ??? ?????? ????????? ??????
					window.location = "${pageContext.request.contextPath}/11_admin/admin_cancel.do";
				}
			});
		});
		
		/* ?????? ???????????? ?????? */
		$(document).on("click","#rf_complete", function() {
			
			var current = null;														// ????????? ?????? ?????? ??????
			var count = $("input:checkbox[name='chkrf[]']").length;					// ??? ??????
			var ckcount = $("input:checkbox[name='chkrf[]']:checked").length;		// ????????? ?????? ??????

			for (var i=0; i<count; i++) {
				if(ckcount != 1) {
					alert("???????????? ????????? ????????? ?????????.");
					break;
				} else {
					current = $("input:checkbox[name='chkrf[]']:checked");	// ????????? ????????????
				}
			}
			
			var orderno = $(current).val();
			var orderstatus = $(current).next().val();
			var ccstatus = "C";
			if (!confirm("?????? ????????? ???????????? ????????? ?????????.")) {
				return false;
			}
			
			// put ???????????? ajax ??????
			$.put("${pageContext.request.contextPath}/11_admin/admin_cancel", {
				"orderno":orderno,
				"orderstatus":orderstatus,
				"ccstatus":ccstatus
			}, function(json) {
				if(json.rt == "OK") {
					alert("?????????????????????");
					// ?????? ?????? ??? ?????? ????????? ??????
					window.location = "${pageContext.request.contextPath}/11_admin/admin_cancel.do";
				}
			});
		});
        
	</script>
</body>
</html>