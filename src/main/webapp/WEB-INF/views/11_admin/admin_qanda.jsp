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
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin_common.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin_qanda.css">

<!-- handlebar plugin -->
<script src="${pageContext.request.contextPath}/assets/plugins/handlebars/handlebars-v4.0.11.js"></script>

<!-- javascript -->
<script src="http://code.jquery.com/jquery.min.js"></script>
<script
    src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<!-- ajax-helper -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/ajax/ajax_helper.css" />
<script src="${pageContext.request.contextPath}/assets/plugins/ajax/ajax_helper.js"></script>
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
                        <li class="dropdown open">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="glyphicon glyphicon-pencil"></i>
                                ?????? ?????? <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="active"><a href="${pageContext.request.contextPath}/11_admin/admin_qanda.do">
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
                                <h2 class="m-0">??????????????? ??????</h2>
                            </div>
                            <!-- /.col -->
                            <div class="col-sm-6 clearfix">
                                <ol class="breadcrumb pull-right">
                                    <li class="breadcrumb-item"><a href="admin_home.html">???</a></li>
                                    <li class="breadcrumb-item active">??????????????? ??????</li>
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
                                        <h4 class="card-title">??????????????? ??????</h4>
                                    </div>
                                    <!-- /.card-header ??? -->
                                    <!-- card-body  -->
                                    <div class="card-body">
                                        <!---------- ?????? ?????? ?????? ---------->
                                    <table class="table table-bordered search_table">
                                       <!--  <tr>
                                            <td class="search_title">??????</td>
                                            <td class="point_li_date_input">
                                                <input type="date" class="point_date form-control"> ~
                                                <input type="date" class="point_date form-control">
                                                <a href="#">??????</a>
                                                <a href="#">??????</a>
                                                <a href="#">1??????</a>
                                                <a href="#">1??????</a>
                                            </td>
                                          </tr> -->

                                       <!--  <tr>
                                            <td class="search_title">???????????? ??????
                                            <td>
                                                <form class="form-inline">
                                                    1??? ????????????
                                                    <div class="form-group">
                                                        <select id="parent" name="category" class="form-control">
                                                            <option value="">--????????????--</option>
                                                            <option value="O">????????? ??????</option>
                                                            <option value="C">????????????</option>
                                                            <option value="S">laporte ?????????</option>
                                                            <option value="P">????????????</option>
                                                            <option value="A">laporte ???????????? ?????? ??????</option>
                                                        </select>
                                                    </div>
                                                    1??? ???????????? ???
                                                </form>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="search_title">?????? ??????</td>
                                            <td>
                                                <form class="form-inline">
                                                    <div class="form-group">
                                                        <select id="search_condition" name="status"
                                                            class="form-control">
                                                            <option value="">---??????---</option>
                                                            <option value="W">????????????</option>
                                                            <option value="A">????????????</option>
                                                        </select>
                                                    </div>
                                                </form>
                                            </td>
                                        </tr>



                                    </table>
                                    <button type="button" class="btn btn-block btn-info search_btn">??????</button> -->
                                    <!-- // ?????? ?????? ?????? ??? -->
                                  

										<table class="table table-bordered qanda_table">
											<thead>
												<tr class="qanda_table_color">
													<th>????????????</th>
													<th>?????????</th>
													<th>???????????????</th>
													<th>????????? ??????</th>
													<th>??????</th>
													<th>????????????</th>
													<th>????????????</th>
													<td>??????</td>
												</tr>
											</thead>
											
									
											<c:forEach var="item" items="${output}" varStatus="status">
												<tbody id="qanda_list">
													<tr>
														
														<td>
														<c:if test="${item.category == 'O'}" >
														????????? ??????
														</c:if>
														
														<c:if test="${item.category == 'C'}" >
														????????????
														</c:if>
														
														<c:if test="${item.category == 'S'}" >
														laporte ?????????
														</c:if>
														
														<c:if test="${item.category == 'P'}" >
														????????????
														</c:if>
														
														<c:if test="${item.category == 'A'}" >
														laporte ????????? ????????????
														</c:if>
														</td>
														
														<td>${item.regdate}</td>
														<td>${item.name}</td>
														<td>${item.email}</td>
														<c:choose>

															<c:when test="${item.file == null}">
																<td>??????????????????</td>
															</c:when>
															<c:otherwise>
																<td><a href="#" class="file_large" data-emailno = "${item.emailno}" data-toggle="modal" data-target="#myModal">??????????????????</a>
															</td>
															</c:otherwise>

														</c:choose>
														<td>${item.content}</td>
													
														<c:choose>

															<c:when test="${item.status == 'W'}">
																<td class="answer_status">????????????</td>
															</c:when>
															<c:otherwise>
																<td class="answer_status">????????????</td>
															</c:otherwise>

														</c:choose>
													
														<td class="clear">
															<a type="button" data-emailno="${item.emailno}"
																class="btn btn-warning btn-xs review_list_answer">??????</a>
														</td>
													</tr>
												</tbody>						
											</c:forEach>
										</table>
														<form id="email-answer"
															action="${pageContext.request.contextPath}/09_cs">

																<table class="answer_box table table-bordered qanda_info_table">
																	<tr>
 																	<td class="info_table_color">????????????</td>
																	<td>
																		<div class="form-inline">
																		<input type="text" id="this_emailno" name="emailno" class="form-control" readonly/>
																		</div>
																	</td>
																	</tr>
																	
																	<tr>
																	<td class="info_table_color">?????? ??????</td>
																	<td>
																		<div class="form-inline">
																			<input type="text" name="answer" id="qanda_notes"
																				class="form-control"></input>
																		</div>
																	</td>
																	</tr>
																
															</table>
															<div class="btn_box">
																<button type="submit" id="answer_save"
																	class="btn btn-block btn-primary btn-md">??????</button>
															</div>
														</form>
														</div>
														</div>
														</div>
											</div>
											</div>
											

									
									</div>
                                <!-- /.card-body -->
                                </div>
                                <!-- /.card ??? -->
                        </div>
                        
                            <!-- modal -->
                            
   
                            
		<div class="modal fade" id="myModal">
		    <div class="post_modify_display">
		        <div class="post_modify_content">
		            <div class="post_modify_header">
		                <button type="button" class="close" data-dismiss="modal"
		                    aria-label="Close">
		                    <span aria-hidden="true">&times;</span></button>
		                    
			                <h4 class="modal-title">????????????</h4>
		                    <!-- Handlebar ????????? ?????? -->
		            </div>
		            <div class="post_modify_body">
		            </div>
		        </div>
		    </div>
		</div>
		
		    <!-- Handlebar CDN ?????? -->
    <script src="//cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.4.2/handlebars.min.js"></script>
    			<script id="email-list-tmpl" type="text/x-handlebars-template">
					
		          
					{{#each email_list}}
												
													<tr>
														<td>
														{{email_list.category}}
														</td>
														
														<td>{{email_list.regdate}}</td>
														<td>{{email_list.name}}</td>
														<td>{{email_list.email}}</td>

													
															<td><a href="#" class="file_large" data-emailno = "${item.emailno}" data-toggle="modal" data-target="#myModal">??????????????????</a>
															{{email_list.file}}</td>
												

														<td>${email_list.content}</td>
													
															<td>{{email_list.status}}</td>
												
	
														<td class="clear">
															<a type="button" data-emailno="{{email_list.emailno}}"
																class="btn btn-warning btn-xs review_list_answer">??????</a>
														</td>
													</tr>
																
											{{/each}}
						
		           </script>
    			<script id="email-item-tmpl" type="text/x-handlebars-template">
					
		          

										<tbody id="post_list">
											<tr>
											<td><img class="file_size" src="{{email_item.file}}" /></td>
											</tr>
										</tbody>
						
		           </script>
                        
    </section>
    <footer></footer>


    <!-- jQuery Ajax Setup -->
    			
		  <!--Google CDN ??????????????? jQuery ?????? -->
    <!-- jQuery Ajax Form plugin CDN -->
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery.form/4.2.2/jquery.form.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/plugins/ajax/ajax_helper.js"></script>
    
    
    <script type="text/javascript">
    Handlebars.registerHelper('isVowel', function(options) {
    	  var answer_W = "W";
    	  if (answer_W.test(this.status)) {
    	    return "????????????";
    	  } else {
    	    return "????????????";
    	  }
    	});
    
					$(document).ready(function() {
						$('.answer_box').hide()
						$('.btn_box').hide()
					});

					$("#menu-toggle").click(function(e) {
						e.preventDefault();
						$("#wrapper").toggleClass("toggled");
					});

					$(function() {
						
						//?????? ?????? ???
						$('.search_btn').click(function(e){
							e.preventDefault();
							
							var category = $('#parent > option:selected').val();
							var status = $('#search_condition > option:selected').val();
							
							//Restful API??? GET ?????? ??????
							$.get("${pageContext.request.contextPath}/09_cs",{
								"category": category,
								"status" : status
							}, function(json){
								var list_source = $("#email-list-tmpl").html();
								var list_template = Handlebars.compile(list_source);
								var list_result = list_template(json);
								$("#qanda_list").empty();
								$("#qanda_list").html(list_result);
						
							}) 	
					});
						
				
						$(document).on("click",".review_list_answer", function(e) {
							e.preventDefault();
							
							let click = $(this);
							let emailno= click.data('emailno');
							let insert_emailno = $('#this_emailno').val(emailno);
							
							$('.answer_box').show()
							$('.btn_box').show()
						});
						
							//put ???????????? ajax ??????
							$('#email-answer').ajaxForm({
								   // ?????? ????????? ??????
					            method: "PUT",
					            // ???????????? 200 ????????? ????????? ?????? ?????????
					            success: function(json) {
					                console.log(json);
					                
					                // json ????????? OK??? ??? ????????? ???????????? ????????????.
					                if (json.rt == "OK") {
					        			alert("????????? ?????? ????????? ?????? ???????????????.");
					                    location.reload();
					                }
					            }
						 });
							
							//?????????????????? ?????? ???
							$('.file_large').click(function(e){
								e.preventDefault();
								
								var current = $(this);
								var emailno = current.data('emailno');
								
								//Restful API??? GET ?????? ??????
								$.get("${pageContext.request.contextPath}/09_cs",{
									"emailno": emailno
								}, function(json){
									var source = $("#email-item-tmpl").html();
									var template = Handlebars.compile(source);
									var result = template(json);
									$(".post_modify_body").html(result);
							
								}) 	
						});
					});
	
			
				</script>
</body>
</html>