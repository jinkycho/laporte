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
	<link rel="stylesheet" href="../assets/css/admin_coupon.css">

	<!-- javascript -->
	<script src="http://code.jquery.com/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

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
                    <li  class="active"><a href="${pageContext.request.contextPath}/11_admin/admin_coupon.do">
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
            <h3 class="m-0">쿠폰관리</h3>
          </div>
          <!-- /.col -->
          <div class="col-sm-6 clearfix">
            <ol class="breadcrumb pull-right">
              <li class="breadcrumb-item"><a href="#">고객관리</a></li>
              <li class="breadcrumb-item active">쿠폰관리</li>
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
                          <h4 class="card-title">쿠폰목록</h4>
                          <br>
                       </div>
        
                          <div class="coupon_li_head">
                            <span>쿠폰명</span>
                            <span>기간</span>
                            <span>할인</span>
                            <span>중복가능여부</span>
                            <span>쿠폰링크</span>
                            <span>변경</span>
                          </div>
        
                          <li class="coupon_li_btns">
                            <a href="#" class="revise">수정</a>
                            <a href="#" class="delete btn-danger">삭제</a>
                            </li>
        
                        
        
                          <div class="coupon_li">
                          <p>쿠폰이 없습니다. 새로운 쿠폰을 추가하세요.</p>
                        </div>
                          
                          <div id="coupon_create_li">
                              <div class="new_coupon_li">    
                              </div>
                          </div>
                        </div>
        
                         
                            
                            <div class="coupon_li_revise">
                            <div class="coupon_rev_border">
                              <table class="coupon_rev_card">
        
                                <tr class="coupon_rev_li">
                                    <td class="coupon_rev">쿠폰명</td>
                                    <td class="coupon_rev_input"><input id="coupon_rev_name" class="form-control" type="text"></td>
                                </tr>
        
                                <tr class="coupon_rev_li">
                                  <td class="coupon_rev">기간</td>
                                  <td class="coupon_rev_input">
                                  <input type="date" class="coupon_rev_date form-control" id="coupon_rev_date1"> ~
                                  <input type="date" class="coupon_rev_date form-control" id="coupon_rev_date2"></td>
        
                              </tr>
        
                              <tr class="coupon_rev_li">
                                  <td class="coupon_rev">쿠폰금액/할인률</td>
                                  <td class="coupon_rev_input">
                                  <input type="text" id="coupon_rev_discount">
                                  <input type="radio" name="discount_rev_type" class="discount_rev_type form-control" value="percent"><span>%퍼센트</span>
                                  <input type="radio" name="discount_rev_type" class="discount_rev_type form-control" value="won"><span>원</span>
                                  </td>
                              </tr>
        
                              <tr class="coupon_rev_li">
                                  <td class="coupon_rev">중복사용여부</td>
                                  <td class="coupon_rev_input">
                                  <input type="radio" name="dupli_rev_use" class="dupli_rev_use" value="dupli_ok"><span>중복사용가능</span>
                                  <input type="radio" name="dupli_rev_use" class="dupli_rev_use" value="dupli_no"><span>중복사용불가</span>
                                  </td>
                              </tr>
        
        
                              <tr class="coupon_rev_li">
                                  <td class="coupon_rev">쿠폰링크</td>
                                  <td class="coupon_rev_input">
                                  <input type="text" id="coupon_rev_link">
                                  </td>
                              </tr>
                          </table>
                          <li class="button_li">
                          <a href="#" id="coupon_rev_cancel">수정취소</a>
                          <a href="#" id="coupon_revise">수정완료</a>
                          </li>
        
                        </div>
                      </div>
                    </div>
                    </div>
              
        
                    <div class="col-md-12">
                        <div class="card">
                          <div class="card-header border-0">
                              <h3 class="card-title">만료된 쿠폰
                              </h3>
                              <br>
        
                              
                              <div class="coupon_li_end_head">
                                <span>쿠폰명</span>
                                <span>기간</span>
                                <span>할인</span>
                                <span>중복가능여부</span>
                                <span>쿠폰링크</span>
        
                              </div>
        
                              <div class="new_coupon_end_li"></div>
                              <div class="coupon_end_li">
                                <span>오픈 기념 10% 할인 쿠폰</span>
                                <span>2020-12-01 ~ 2020-12-31</span>
                                <span>5%</span>
                                <span>중복사용가능</span>
                                <span>미정</span>
        
                            </div>
        
        
        
                          </div>
                        </div>
                    </div>
                    <!-- /.card -->
        
                    <div class="col-md-12">
                        <div class="card">
                          <div class="card-header border-0">
                              <h3 class="card-title">쿠폰생성
                              </h3>
                              <br>
        
                              <table class="coupon_reg_card">
                                
                                <tr class="coupon_reg_li">
                                  <td class="coupon_reg">쿠폰명</td>
                                  <td class="coupon_reg_input">
                                    <form class="form-inline">
                                       <div class="form-group">
                                        <input id="coupon_name" type="text" class="form-control"></td>
                                      </div>
                                    </form>
                                    </tr>
        
                                  <tr class="coupon_reg_li">
                                    <td class="coupon_reg">기간</td>
                                    <td class="coupon_reg_input">
                                      
                                      <form class="form-inline">
                                        <div class="form-group">
                                          <input type="date" class="coupon_date form-control" id="coupon_date1"> ~
                                          <input type="date" class="coupon_date form-control" id="coupon_date2"></td>
                                        </div>
                                      </form>
                                </tr>
        
                                <tr class="coupon_reg_li">
                                    <td class="coupon_reg">쿠폰금액/할인률</td>
                                    <td class="coupon_reg_input">
                                        <form class="form-inline">
                                          <div class="form-group">
                                            <input type="text" id="coupon_discount" class="form-control">
                                            <input type="radio" name="discount_type" class="discount_type" value="percent"><span>%퍼센트</span>
                                            <input type="radio" name="discount_type" class="discount_type" value="won"><span>원</span>
                                          </div>
                                        </form>
                                    </td>
                                </tr>
        
                                <tr class="coupon_reg_li">
                                    <td class="coupon_reg">중복사용여부</td>
                                    <td class="coupon_reg_input">
                                      <input type="radio" name="dupli_use" class="dupli_use" value="dupli_ok"><span>중복사용가능</span>
                                      <input type="radio" name="dupli_use" class="dupli_use" value="dupli_no"><span>중복사용불가</span>
                                    </td>
                                </tr>
        
        
                                <tr class="coupon_reg_li">
                                  <div class="form-group">
                                    <td class="coupon_reg">쿠폰링크</td>
                                      <td class="coupon_reg_input">
                                        <form class="form-inline">
                                          <div class="form-group">
                                            <input type="text" id="coupon_link" class="form-control">
                                          </div>
                                        </form>
                                      </td>
                                  </div>
                                </tr>
                            </table>
                            <a href="#" id="coupon_submit" class="btn-success btn-lg">쿠폰생성</a>
        
                            </form>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <!-- /.col-md-6 -->
                </div>
                <!-- /.row -->
				</div>
  </section>
		<!-- /wrapper  끝--><!-- Content Wrapper. Contains page content -->
 
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->
<script type="text/javascript">
  $(document).ready(function(){
      $('.new_coupon_li').hide()
      $('.coupon_li_btns').hide()
      $('.coupon_li_revise').hide()

    });

  $(function(){
    //쿠폰 생성 버튼을 클릭 했을 때,
    $('#coupon_submit').click(function(e){
      e.preventDefault();
      $('.coupon_li').hide()
      $('.new_coupon_li').show()
      $('.coupon_li_btns').show()
     
        var couponName = $('#coupon_name').val();
        var couponDate = $('.coupon_date').val();
        var couponDate1 = $('#coupon_date1').val();
        var couponDate2 = $('#coupon_date2').val();
        var couponDiscount = $('#coupon_discount').val();
        var discountType = $("input[name='discount_type']:checked").val();
        var dupliUse = $("input[name='dupli_use']:checked").val();
        var couponLink = $('#coupon_link').val();
        var couponLiBtns = $('.coupon_li_btns');

      

      if(!couponName){
        alert("쿠폰 이름을 입력해주세요.");
        return false;
      }else{
        var couponNameSpan=$("<span>");
          couponNameSpan.html(couponName);
        $('.new_coupon_li').html(couponNameSpan);
      }

      if(!couponDate){
        alert("쿠폰 기간을 입력해주세요.");
        return false;
      }else{
        var couponDateSpan=$("<span>");
          couponDateSpan.html(couponDate1+ " ~ " + couponDate2);
        $('.new_coupon_li').append(couponDateSpan);
      }

      if(!couponDiscount){
        alert("쿠폰금액/할인률을 입력해주세요.");
        return false;
      }

      if(!discountType){
        alert("쿠폰금액/할인률의 유형을 입력해주세요.");
        return false;
      }else if(discountType == "percent"){
        var couponDiscountSpan=$("<span>");
          couponDiscountSpan.html(couponDiscount+"%");
        $('.new_coupon_li').append(couponDiscountSpan);
      }else if(discountType == "won"){
        var couponDiscountSpan=$("<span>");
          couponDiscountSpan.html(couponDiscount+"원");
        $('.new_coupon_li').append(couponDiscountSpan);
      }

      if(!dupliUse){
        alert("쿠폰 중복사용여부를 입력해주세요.");
        return false;
      }else if(dupliUse == "dupli_ok"){
        var dupliOkSpan=$("<span>");
          dupliOkSpan.html("중복사용가능");
        $('.new_coupon_li').append(dupliOkSpan);
      }else if(dupliUse == "dupli_no"){
        var dupliNoSpan=$("<span>");
          dupliNoSpan.html("중복사용불가");
          $('.new_coupon_li').append(dupliNoSpan);
      }

      if(!couponLink){
        alert("쿠폰의 링크를 입력해주세요.");
        return false;
      }else{
        var couponLinkSpan=$("<span>");
          couponLinkSpan.html(couponLink);
        $('.new_coupon_li').append(couponLinkSpan).append(couponLiBtns);
      }

      alert("쿠폰이 생성되었습니다.");

      $('form').each(function() {
        this.reset();
      });
      
      
      
    });

    $(document).on('click','.revise',function(e){
      $('.coupon_li_revise').show() 
    });

    $(document).on('click','.delete',function(e){
      $(this).parents('.new_coupon_li').insertBefore('.new_coupon_end_li');
      $(this).parents('.new_coupon_li').find('a').remove();
      
      var couponCount = $('#coupon_create_li').length;

      if(couponCount == 1){
      $('.coupon_li').show()
    }
    });

    $(document).on('click', '#coupon_rev_cancel',function(e){
      $('.coupon_li_revise').hide()
    });

    $(document).on('click','#coupon_revise',function(e){
      $('.coupon_li_revise').hide()
    });
  });

</script>
</body>
</html>
