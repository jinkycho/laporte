<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>la porte</title>

  	<!-- font stylesheet -->
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
	
	<!-- stylesheet -->
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
	<link rel="stylesheet" href="../assets/css/admin_common.css">
	<link rel="stylesheet" href="../assets/css/admin_point.css">


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
								<li><a href="${pageContext.request.contextPath}/11_admin/admin_resvappv.do"><i class="glyphicon glyphicon-ok"></i>
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
								<li><a href="review_management.html"><i
										class="glyphicon glyphicon-star-empty"></i> 리뷰 관리</a></li>
								<li><a href="admin_sales.html"><i class="glyphicon glyphicon-usd"></i>
										매출 관리</a></li>
							</ul></li>
							<li class="dropdown open">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
									<i class="glyphicon glyphicon-user"></i>
									고객 관리 <b class="caret"></b>
								</a>
								<ul class="dropdown-menu">
									<li><a href="${pageContext.request.contextPath}/11_admin/admin_userlist.do">
										<i class="glyphicon glyphicon-user"></i> 회원정보 관리</a></li>
									<li><a href="admin_order.html">
										<i class="glyphicon glyphicon-shopping-cart"></i> 주문내역 관리</a></li>
									<li><a href="admin_delivery.html">
										<i class="glyphicon glyphicon-transfer"></i> 배송정보 관리</a></li>
									<li><a href="admin_cancel.html">
										<i class="glyphicon glyphicon-retweet"></i> 취소/교환/반품/환불</a></li>
									<li><a href="${pageContext.request.contextPath}/11_admin/admin_coupon.do">
										<i class="glyphicon glyphicon-credit-card"></i> 쿠폰 </a></li>
									<li class="active"><a href="${pageContext.request.contextPath}/11_admin/admin_point.do" >
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
								<h3 class="m-0">적립금 관리</h3>
							</div>
							<!-- /.col -->
							<div class="col-sm-6 clearfix">
								<ol class="breadcrumb pull-right">
									<li class="breadcrumb-item"><a href="#">홈</a></li>
									<li class="breadcrumb-item active">적립금 관리</li>
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
				    <!-- Main content -->
            <div class="content">
              <div class="container-fluid">
                <div class="row">
                  <div class="col-md-12 table-responsive">
                    <div class="card">
                      <div class="card-header border-0">
                          <h3 class="card-title">적립금목록
                          </h3>
                          <br>
        
                            <table class="point_li_card">
        
                              <tr class="point_li_sort">
                                  <td class="point_li_date">기간</td>
                                  <td class="point_li_date_input">
									<form class="form-inline">
										<div class="form-group">
                                  			<input type="date" class="point_date form-control"> ~
											  <input type="date" class="point_date form-control">
											  <a href="#" class="btn-secondary btn-xs">오늘</a>
											  <a href="#" class="btn-secondary btn-xs">어제</a>
											  <a href="#" class="btn-secondary btn-xs">1주일</a>
											  <a href="#" class="btn-secondary btn-xs">1개월</a>
										</div>
									</form>
                                </td>
                              </tr>
        
                              <tr class="point_li_sort">
                                <td class="point_li_con">조건검색</td>
                                <td class="point_li_con_input">
									<form class="form-inline">
										<div class="form-group">
                                    		<select class="form-control">
                                       			<option>이름</option>
                                        		<option>아이디</option>
											</select>
											<input id="con_name" class="form-control" type="text">
											<a href="#" id="con_search" class="btn-info btn-xs">검색</a>
										</div>
									</form>
                                </td>
                               
        
                            </tr>
                            </table>
        
                            <div class="point_li_block">
                              <li class="point_li_head">
                                <input type='checkbox'>
                                <span>적립일자</span>
                                <span>적립내역</span>
                                <span>금액</span>
                                <span>아이디</span>
                                <span>이름</span>
                                <span>변경</span>
                              </li>
        
        
        
                             <li class="point_li">
                                <input type='checkbox'>
                                <span>2021-01-02</span>
                                <span>상품 구입 적립금</span>
                                <span>5,000원</span>
                                <span>jinky</span>
                                <span>조진경</span>
                                <a href="#" class="revise btn-default btn-xs ">수정</a>
								<a href="#" class="delete btn-danger btn-xs">삭제</a>
                            </li>
        
                            <li class="point_li">
                                <input type='checkbox'>
                                <span>2021-01-02</span>
                                <span>회원가입 적립금</span>
                                <span>5,000원</span>
                                <span>jinky</span>
                                <span>조진경</span>
                                <a href="#" class="revise btn-secondary btn-xs">수정</a>
                                <a href="#" class="delete btn-danger btn-xs">삭제</a>
                            </li>
                            </div>
                         
        
                      </div>
                    </div>
        
        
                      </div>
                    </div>
                  </div>
                  <!-- /.col-md-6 -->
                </div>
                <!-- /.row -->
           
				</div>
			</div>
		</div>
		<!-- /wrapper  끝--><!-- Content Wrapper. Contains page content -->




 

<!-- REQUIRED SCRIPTS -->
<script type="text/javascript">
  $(function(){
    $(".appv").click(function(e){
      e.preventDefault();
      alert("예약이 승인됐습니다.");
    });

  });

  $("#menu-toggle").click(function(e) {
			e.preventDefault();
			$("#wrapper").toggleClass("toggled");
		});
</script>
<
</body>
</html>
