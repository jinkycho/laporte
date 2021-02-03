<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

admi<!DOCTYPE html>
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
	<link rel="stylesheet" href="../assets/css/admin_userlist.css">


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
								홈 퍼블리싱 예약관리 <b class="caret"></b></a></li>
							<ul class="dropdown-menu">
								<li><a href="${pageContext.request.contextPath}/11_adminadmin_resvappv.do"><i class="glyphicon glyphicon-ok"></i>
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
									<li class="active"><a href="${pageContext.request.contextPath}/11_admin/admin_userlist.do">
										<i class="glyphicon glyphicon-user"></i> 회원정보 관리</a></li>
									<li><a href="admin_order.html">
										<i class="glyphicon glyphicon-shopping-cart"></i> 주문내역 관리</a></li>
									<li><a href="admin_delivery.html">
										<i class="glyphicon glyphicon-transfer"></i> 배송정보 관리</a></li>
									<li><a href="admin_cancel.html">
										<i class="glyphicon glyphicon-retweet"></i> 취소/교환/반품/환불</a></li>
									<li><a href="${pageContext.request.contextPath}/11_admin/admin_coupon.do">
										<i class="glyphicon glyphicon-credit-card"></i> 쿠폰 </a></li>
									<li><a href="${pageContext.request.contextPath}/11_admin/admin_point.do" >
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
            <h3 class="m-0">고객관리</h3>
          </div>
          <!-- /.col -->
          <div class="col-sm-6 clearfix">
            <ol class="breadcrumb pull-right">
              <li class="breadcrumb-item"><a href="#">고객관리</a></li>
              <li class="breadcrumb-item active">회원정보 관리</li>
            </ol>
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

  <div class="content_wrapper">
    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header border-0">
                  <h3 class="card-title">회원목록
                  </h3>
                  <br>
              
                      <li class="join_users_head">
                        <span>고객번호</span>
                        <span>이름</span>
                        <span>아이디</span>
                        <span>가입일</span>
                        <span>변경</span>
                      </li>
                

                     
                     <li class="join_user_li">
                        <span>1</span>
                        <span>조진경</span>
                        <span>jinky</span>
                        <span>2021.01.01</span>
                        <a href="#" class="delete btn-danger btn-xs">회원삭제</a>   
                    </li>

                    <li class="join_user_li">
                        <span>2</span>
                        <span>김연우</span>
                        <span>yanu</span>
                        <span>2021.01.01</span>
                        <a href="#" class="delete btn-danger btn-xs">회원삭제</a>   
                    </li>
                    

                    <li class="join_user_li">
                        <span>3</span>
                        <span>곽현지</span>
                        <span>hyeonji</span>
                        <span>2021.01.01</span>
                        <a href="#" class="delete btn-danger btn-xs">회원삭제</a>   
                    </li>
                    

                    <li class="join_user_li">
                        <span>4</span>
                        <span>김혜지</span>
                        <span>hyeji</span>
                        <span>2021.01.01</span>
                        <a href="#" class="delete btn-danger btn-xs">회원삭제</a>   
                    </li>
                    

                    <li class="join_user_li">
                        <span>5</span>
                        <span>장명승</span>
                        <span>meong9</span>
                        <span>2021.01.01</span>
                        <a href="#" class="delete btn-danger btn-xs">회원삭제</a>   
                    </li>
                    

                    <li class="join_user_li">
                        <span>6</span>
                        <span>박민규</span>
                        <span>minkyu</span>
                        <span>2021.01.01</span>
                        <a href="#" class="delete btn-danger btn-xs">회원삭제</a>   
                    </li>
                    
                    
                       
              </div>
            </div>
          </div>

            <div class="col-md-12">
                <div class="card">
                  <div class="card-header border-0">
                      <h3 class="card-title">탈퇴회원목록
                      </h3>
                      <br>

                      <li class="out_users_head">
                        <span>고객번호</span>
                        <span>이름</span>
                        <span>아이디</span>
                        <span>가입일</span>
                        <span>탈퇴사유</span>
                      </li>
                      
                      <li class="new_out_user_li"></li>
                        <li class="out_user_li">
                            <span>7</span>
                            <span>나탈퇴</span>
                            <span>user1</span>
                            <span>2021.01.01</span>
                            <span>원하는 제품이 다양하지 않음</span>
                        </li>

                        <li class="out_user_li">
                            <span>8</span>
                            <span>유탈퇴</span>
                            <span>user2</span>
                            <span>2021.01.01</span>
                            <span>원하는 제품이 다양하지 않음</span>
                        </li>              
                  </div>
                </div>
              </div>
            <!-- /.card -->
            </div>
          </div>
          </div>
       </div>
          <!-- /.col-md-6 -->
     </div>
        <!-- /.row -->
    </div>
    <!-- /.content -->
</section>
<!-- REQUIRED SCRIPTS -->

<script type="text/javascript">
  $(function(){
    
    $('.delete').click(function(e){
      e.preventDefault();
      
      $(this).parents('.join_user_li').insertAfter('.new_out_user_li').append('<span>관리자 삭제</span>');
      $(this).parents('.join_user_li').find('a').remove();
    
    });

  });

</script>

</body>
</html>
