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
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/admin_fanda.css">

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
                                <li><a href="${pageContext.request.contextPath}/admin_resvappv.do"><i
                                        class="glyphicon glyphicon-ok"></i> 예약 승인</a></li>
                            </ul></li>
                        <li class="dropdown"><a href="#" class="dropdown-toggle"
                            data-toggle="dropdown"><i class="glyphicon glyphicon-tags"></i>
                                제품 관리 <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="stock_management.html"><i
                                        class="glyphicon glyphicon-briefcase"></i> 상품 관리</a></li>
                                <li><a href="${pageContext.request.contextPath}/product_add.do"><i
                                        class="glyphicon glyphicon-plus"></i> 상품 등록</a></li>
                                <li><a href="${pageContext.request.contextPath}/review_management.do"><i
                                        class="glyphicon glyphicon-star-empty"></i> 리뷰 관리</a></li>
                                <li><a href="${pageContext.request.contextPath}/admin_sales.do"><i class="glyphicon glyphicon-usd"></i>
                                        매출 관리</a></li>
                            </ul></li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
									<i class="glyphicon glyphicon-user"></i>
									고객 관리 <b class="caret"></b>
								</a>
								<ul class="dropdown-menu">
									<li><a href="${pageContext.request.contextPath}/admin_userlist.do">
										<i class="glyphicon glyphicon-user"></i> 회원정보 관리</a></li>
									<li><a href="${pageContext.request.contextPath}/admin_order.do">
										<i class="glyphicon glyphicon-shopping-cart"></i> 주문내역 관리</a></li>
									<li><a href="${pageContext.request.contextPath}/admin_delivery.do">
										<i class="glyphicon glyphicon-transfer"></i> 배송정보 관리</a></li>
									<li><a href="${pageContext.request.contextPath}/admin_cancel.do">
										<i class="glyphicon glyphicon-retweet"></i> 취소/교환/반품/환불</a></li>
									<li><a href="${pageContext.request.contextPath}/admin_coupon.do">
										<i class="glyphicon glyphicon-credit-card"></i> 쿠폰 </a></li>
									<li><a href="${pageContext.request.contextPath}/admin_point.do" >
										<i class="glyphicon glyphicon-usd"></i> 적립금</a></li>
									<li><a href="${pageContext.request.contextPath}/admin_visitors.do">
										<i class="glyphicon glyphicon-stats"></i> 방문자 수 관리</a></li>
								</ul>
							</li>
							<li class="dropdown open">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
									<i class="glyphicon glyphicon-pencil"></i>
									문의 관리 <b class="caret"></b>
								</a>
								<ul class="dropdown-menu">
									<li class="active"><a href="${pageContext.request.contextPath}/admin_qanda.do">
										<i class="glyphicon glyphicon-envelope"></i> 이메일 문의 관리</a></li>
									<li><a href="${pageContext.request.contextPath}/admin_fanda.do">
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
                                <h2 class="m-0">이메일문의 관리</h2>
                            </div>
                            <!-- /.col -->
                            <div class="col-sm-6 clearfix">
                                <ol class="breadcrumb pull-right">
                                    <li class="breadcrumb-item"><a href="admin_home.html">홈</a></li>
                                    <li class="breadcrumb-item active">이메일문의 관리</li>
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
                                        <h4 class="card-title">이메일문의 목록</h4>
                                    </div>
                                    <!-- /.card-header 끝 -->
                                    <!-- card-body  -->
                                    <div class="card-body">
                                        <!---------- 조건 검색 목록 ---------->
                                    <table class="table table-bordered search_table">
                                       <!--  <tr>
                                            <td class="search_title">기간</td>
                                            <td class="point_li_date_input">
                                                <input type="date" class="point_date form-control"> ~
                                                <input type="date" class="point_date form-control">
                                                <a href="#">오늘</a>
                                                <a href="#">어제</a>
                                                <a href="#">1주일</a>
                                                <a href="#">1개월</a>
                                            </td>
                                          </tr> -->

                                        <tr>
                                            <td class="search_title">카테고리 분류
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
                                                </form>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="search_title">답변 상태</td>
                                            <td>
                                                <form class="form-inline">
                                                    <div class="form-group">
                                                        <select id="search_condition" name="search_answer"
                                                            class="form-control">
                                                            <option value="">---선택---</option>
                                                            <option value="anwer_com" selected>답변완료</option>
                                                            <option value="anwer_wait">답변대기</option>
                                                        </select>
                                                    </div>
                                                </form>
                                            </td>
                                        </tr>



                                    </table>
                                    <button type="button" class="btn btn-block btn-info search_btn">검색</button>
                                    <!-- // 조건 검색 목록 끝 -->
                                  

										<table class="table table-bordered qanda_table">
											<thead>
												<tr class="qanda_table_color">
													<th style="width: 10px"><input type='checkbox'
														id="all_check"></th>
													<th>카테고리</th>
													<th>작성일</th>
													<th>작성자이름</th>
													<th>이메일 주소</th>
													<th>파일</th>
													<th>문의내용</th>
													<th>답변상태</th>
													<td>기능</td>
												</tr>
											</thead>
											
									
											<c:forEach var="item" items="${output}" varStatus="status">
												<tbody id="qanda_list">
													<tr>
														<td><input type='checkbox' class="delete_check"></td>
														<td>이메일문의</td>
														<td>${item.regdate}</td>
														<td>${item.name}</td>
														<td>${item.email}</td>
														<c:choose>

															<c:when test="${item.file} == null">
																<td>첨부파일없음</td>
															</c:when>
															<c:otherwise>
																<td><a href="#" class="file_large" data-toggle="modal" data-target="#myModal">첨부파일보기</a>
																<img class="file_size" src="${item.file}" /></td>
															</c:otherwise>

														</c:choose>
														<td>${item.content}</td>
													
														<c:choose>

															<c:when test="${item.status == 'W'}">
																<td class="answer_status">답변대기</td>
															</c:when>
															<c:otherwise>
																<td class="answer_status">답변완료</td>
															</c:otherwise>

														</c:choose>
													
														<td class="clear">
															<a type="button" data-emailno="${item.emailno}"
																class="btn btn-warning btn-xs review_list_answer">답변</a>
															<button type="button"
																class="btn btn-danger btn-xs review_list_delete">삭제</button>
														</td>
													</tr>
												</tbody>						
											</c:forEach>
										</table>
														<form id="email-answer"
															action="${pageContext.request.contextPath}/09_cs">

																<table class="answer_box table table-bordered qanda_info_table">
																	<tr>
 																	<td class="info_table_color">문의번호</td>
																	<td>
																		<div class="form-inline">
																		<input type="text" id="this_emailno" name="emailno" class="form-control" readonly/>
																		</div>
																	</td>
																	</tr>
																	
																	<tr>
																	<td class="info_table_color">답변 내용</td>
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
																	class="btn btn-block btn-primary btn-md">등록</button>
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
                                <!-- /.card 끝 -->
                        </div>
                        
                            <!-- modal -->
                            
                            
		<div class="modal fade" id="myModal">
		    <div class="post_modify_display">
		        <div class="post_modify_content">
		            <div class="post_modify_header">
		                <button type="button" class="close" data-dismiss="modal"
		                    aria-label="Close">
		                    <span aria-hidden="true">&times;</span></button>
		                    
		                    <!-- Handlebar 탬플릿 코드 -->
    			<script id="prof-list-tmpl" type="text/x-handlebars-template">
					
			                <h4 class="modal-title">첨부파일</h4>
		            </div>
		            <div class="post_modify_body">
		                <table class="table2 table-bordered post_modify_table">


										<tbody id="post_list">
											<tr>
											<td></td>
											</tr>
										</tbody>
						</table>
		            </div>
		           </script>
		        </div>
		    </div>
		</div>
                        
    </section>
    <footer></footer>

		  <!--Google CDN 서버로부터 jQuery 참조 -->
    <!-- jQuery Ajax Form plugin CDN -->
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery.form/4.2.2/jquery.form.min.js"></script>
    <!-- jQuery Ajax Setup -->
    <script src="${pageContext.request.contextPath}/assets/plugins/ajax/ajax_helper.js"></script>
    
    
    <script type="text/javascript">
					$(document).ready(function() {
						$('.answer_box').hide()
					});

					$("#menu-toggle").click(function(e) {
						e.preventDefault();
						$("#wrapper").toggleClass("toggled");
					});

					$(function() {
				
						$(document).on("click",".review_list_answer", function(e) {
							e.preventDefault();
							
							let click = $(this);
							let emailno= click.data('emailno');
							let insert_emailno = $('#this_emailno').val(emailno);
							
							$('.answer_box').show()
						});
						
							//put 메서드로 ajax 요청
							$('#email-answer').ajaxForm({
								   // 전송 메서드 지정
					            method: "PUT",
					            // 서버에서 200 응답을 전달한 경우 실행됨
					            success: function(json) {
					                console.log(json);
					                
					                // json 결과가 OK일 시 로그인 페이지로 이동한다.
					                if (json.rt == "OK") {
					        			alert("이메일 문의 답변이 완료 되었습니다.");
					                    location.reload();
					                }
					            }
						 });
							
							//첨부파일보기 클릭 시
							$('.file_large').click(function(e){
								e.preventDefault();
								
							});
					});

	
			
				</script>
</body>
</html>