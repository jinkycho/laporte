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
	<link rel="stylesheet" href="../assets/css/admin_resvappv.css">


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
						<li class="dropdown open"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"><i class="glyphicon glyphicon-edit"></i>
								홈 퍼블리싱 예약관리 <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li class="active"><a href="${pageContext.request.contextPath}/11_admin/admin_resvappv.do"><i class="glyphicon glyphicon-ok"></i>
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
              <li class="dropdown">
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
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h3 class="m-0">홈퍼니싱 예약관리</h3>
          </div>
          <!-- /.col -->
          <div class="col-sm-6 clearfix">
            <ol class="breadcrumb pull-right">
              <li class="breadcrumb-item"><a href="#">홈퍼니싱 예약관리</a></li>
              <li class="breadcrumb-item active">예약승인</li>
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
                  <h3 class="card-title">예약 승인 대기
                  </h3>
                  <br>
              
                      <li class="appv_before_head">
                        <span>예약매장</span>
                        <span>예약자</span>
                        <span>예약자연락처</span>
                        <span>예약시간</span>
                        <span>컨설팅영역</span>
                        <span>요청사항</span>
                        <span>변경</span>
                      </li>
                      
                    
                    <div id="no_res_mssg">
                      <p>승인 대기 중인 예약이 없습니다.</p>
                    </div>

                    <div id="appv_before_top">
                     <li class="appv_before_li">
                        <span>강남점</span>
                        <span>홍길동</span>
                        <span>010-1234-5678</span>
                        <span>오전9시</span>
                        <span>침대</span>
                        <span>퀸베드구매</span>
                        <a href="#" class="appv btn-success btn-xs">예약승인</a>
                        <a href="#" class="cancel btn-danger btn-xs">예약취소</a>   
                      </li>
                      

                
                  </div>
                </div> 
              </div>
            </div>

            <div class="col-md-12">
                <div class="card">
                  <div class="card-header border-0">
                      <h3 class="card-title">승인 완료
                      </h3>
                      <br>

                      <li class="appv_done_head">
                        <span>예약매장</span>
                        <span>예약자</span>
                        <span>예약자연락처</span>
                        <span>예약시간</span>
                        <span>컨설팅영역</span>
                        <span>요청사항</span>
                      </li>

                      <li class="new_appv_done_li"></li>

                        <li class="appv_done_li">
                            <span>광명점</span>
                            <span>김연우</span>
                            <span>010-1234-5679</span>
                            <span>오전11시</span>
                            <span>침대</span>
                            <span>퀸베드구매</span>
                        </li>
    
                        <li class="appv_done_li">
                            <span>광명점</span>
                            <span>김혜지</span>
                            <span>010-1234-5671</span>
                            <span>오후5시</span>
                            <span>조명</span>
                            <span>거실 조명 구매</span>
                        </li>
                        
                           
                  </div>
                </div>
            </div>
            <!-- /.card -->
            
            <div class="col-md-12">
                <div class="card">
                  <div class="card-header border-0">
                      <h3 class="card-title">예약 취소
                      </h3>
                      <br>

                      <li class="appv_cancel_head">
                        <span>예약매장</span>
                        <span>예약자</span>
                        <span>예약자연락처</span>
                        <span>예약시간</span>
                        <span>컨설팅영역</span>
                        <span>요청사항</span>
                      </li>

                      <li class="new_appv_cancel_li"></li>

                        <li class="appv_cancel_li">
                            <span>광명점</span>
                            <span>장명승</span>
                            <span>010-1234-6789</span>
                            <span>오전11시</span>
                            <span>침대</span>
                            <span>퀸베드구매</span>
                        </li>
    
                        <li class="appv_cancel_li">
                            <span>대구점</span>
                            <span>곽현지</span>
                            <span>010-2345-5671</span>
                            <span>오후1시</span>
                            <span>수납/정리</span>
                            <span>거실 수납함 구매</span>
                        </li>

                        <li class="appv_before_li">
                            <span>강남점</span>
                            <span>박민규</span>
                            <span>010-4567-5671</span>
                            <span>오후3시</span>
                            <span>주방가구/용품</span>
                            <span>싱크대 구매</span>
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
      <!-- /.container-fluid -->
    </div>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->

<!-- jQuery -->
<script src="../plugins/jquery/jquery.min.js"></script>

<script type="text/javascript">
  $(function(){
    $(document).ready(function(){
      $('#no_res_mssg').hide()
    });

    $(document).on('click','.appv',function(e){
      e.preventDefault();
      $(this).parents('.appv_before_li').insertAfter('.new_appv_done_li');
      $(this).parents('.appv_before_li').find('a').remove();

      var appvBeforeCount = $('#appv_before_top').length;

      if(appvBeforeCount == 1){
        $('#no_res_mssg').show()
      }

    });

    $('.cancel').click(function(e){
      e.preventDefault();
      $(this).parents('.appv_before_li').insertBefore('.new_appv_cancel_li');
      $(this).parents('.appv_before_li').find('a').remove();

      var appvBeforeCount = $('#appv_before_top').length;

      if(appvBeforeCount == 1){
        $('#no_res_mssg').show()
      }
    });

  

  });

</script>

<!-- Bootstrap -->
<script src="../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE -->
<script src="../dist/js/adminlte.min.js"></script>

<!-- OPTIONAL SCRIPTS -->
<script src="../plugins/chart.js/Chart.min.js"></script>

<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="../dist/js/pages/dashboard3.js"></script>
</body>
</html>
