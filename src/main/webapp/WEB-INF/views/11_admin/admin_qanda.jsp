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
<link rel="stylesheet" href="../assets/css/admin_qanda.css">

<!-- handlebar plugin -->
<script src="../plugins/handlebars/handlebars-v4.0.11.js"></script>

<!-- javascript -->
<script src="http://code.jquery.com/jquery.min.js"></script>
<script
    src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<!-- ajax-helper -->
<link rel="stylesheet" href="../plugins/ajax/ajax_helper.css" />
<script src="../plugins/ajax/ajax_helper.js"></script>
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
                                <li><a href="admin_resvappv.html"><i
                                        class="glyphicon glyphicon-ok"></i> 예약 승인</a></li>
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
									<li><a href="admin_userlist.html">
										<i class="glyphicon glyphicon-user"></i> 회원정보 관리</a></li>
									<li><a href="admin_order.html">
										<i class="glyphicon glyphicon-shopping-cart"></i> 주문내역 관리</a></li>
									<li><a href="admin_delivery.html">
										<i class="glyphicon glyphicon-transfer"></i> 배송정보 관리</a></li>
									<li><a href="admin_cancel.html">
										<i class="glyphicon glyphicon-retweet"></i> 취소/교환/반품/환불</a></li>
									<li><a href="admin_coupon.html">
										<i class="glyphicon glyphicon-credit-card"></i> 쿠폰 </a></li>
									<li><a href="admin_point.html" >
										<i class="glyphicon glyphicon-usd"></i> 적립금</a></li>
									<li><a href="admin_visitors.html">
										<i class="glyphicon glyphicon-stats"></i> 방문자 수 관리</a></li>
								</ul>
							</li>
							<li class="dropdown open">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
									<i class="glyphicon glyphicon-pencil"></i>
									문의 관리 <b class="caret"></b>
								</a>
								<ul class="dropdown-menu">
									<li class="active"><a href="admin_qanda.html">
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
                                        <tr>
                                            <td class="search_title">기간</td>
                                            <td class="point_li_date_input">
                                                <input type="date" class="point_date form-control"> ~
                                                <input type="date" class="point_date form-control">
                                                <a href="#">오늘</a>
                                                <a href="#">어제</a>
                                                <a href="#">1주일</a>
                                                <a href="#">1개월</a>
                                            </td>
                                          </tr>

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
                                    <div class="clearfix product_additional_box">
                                        <div class="product_number_box pull-left">
                                            <span>총 Q&A 수 : <b class="total_number">10</b> ,
                                            </span> <span>검색 리뷰 수 : <b class="search_number">3</b></span>
                                        </div>
                                    </div>

                                    <table class="table table-bordered product_table">
                                        <thead>
                                            <tr class="product_table_color">
                                                <th style="width: 10px"><input type='checkbox' id="all_check"></th>
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
                                        <tbody id="product_list">
                                            <tr>
                                                <td><input type='checkbox' class="delete_check"></td>
                                                <td>이메일문의</td>
                                                <td>2021.01.10</td>
                                                <td>조진경</td>
                                                <td>jinkycho@email.com</td>
                                                <td>1234567.jpg</td>
                                                <td>1주일 전 주문번호 1234567로 구매한 STUVA 스투바를 교환하고 싶습니다.</td>
                                                <td class="answer_status">답변대기</td>
                                                <td class="clear">
                                                    <button type="button" class="btn btn-warning btn-xs review_list_answer">답변</button>
                                                    <button type="button" class="btn btn-danger btn-xs review_list_delete">삭제</button>
                                                </td>


                                        </tbody>
                                    </table>
                                    <div class="answer_box">
                                        <table class="table table-bordered product_info_table">
                                            <tr>
                                                <td class="info_table_color">답변 내용</td>
                                                <td>
                                                    <form class="form-inline">
                                                        <textarea name="qanda_notes" id="qanda_notes" class="form-control"></textarea>
                                                    </form>
                                                </td>
                                            </tr>
                                        </table>
                                        <div class="btn_box">
                                            <button type="submit" id="answer_save" class="btn btn-block btn-primary btn-md">등록</button>
                                        </div>
                                    </div>
                                </tr>
                            </div>
                                <!-- /.card-body -->
                                </div>
                                <!-- /.card 끝 -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /wrapper  끝-->
        </div>
    </section>
    <footer></footer>

    <script type="text/javascript">
        $(document).ready(function(){
            $('.answer_box').hide()
        });

        $("#menu-toggle").click(function(e) {
            e.preventDefault();
            $("#wrapper").toggleClass("toggled");
        });

        $(function() {
            /* `#all_check`의 선택 상태가 변경되었을 때의 이벤트 */
            $("#all_check").change(function() {
                // 모든 `.delete_check`의 선택 상태를 `#all_check`와 동일하게 맞춘다.
                $(".delete_check").prop('checked', $(this).prop('checked'));
            });
            /** 선택 삭제 버튼 클릭시 */
            $(".select_delete").click(function () {
                var delete_check_list = $(".delete_check:checked");
                if(delete_check_list.length == 0){
                    alert("선택된 항목이 없습니다.");
                    return false;
                }

                //배열의 길이만큼 반복한다.
                for (var i=0; i<delete_check_list.length; i++) {
                    // i번째 HTML요소를 jQuery객체로 변환하여 입력값을 취한다.
                    var ckeck_product = $(delete_check_list[i]);
                    // 체크된 항목 삭제
                    $(ckeck_product).parents('tr').remove();
                };

                //상품 목록이 하나도 없을시
                if(product_list_num == 0){
                    console.log(product_list_num);
                    $('#product_list').html('<tr id="product_none_msg"><td colspan="9">답변 대기 중인 문의가 없습니다.</td></tr>');
                }
            });

            $(".review_list_delete").click(function () {
                var delete_confirm = confirm("정말 삭제 하시겠습니까?")

                if(delete_confirm){
                    $(this).parents('tr').remove();
                    $('.answer_box').hide()

                }else{
                    return false;
                }

                var product_list_num = $('.product_table tbody tr').length;
                $('.search_number').html(product_list_num);
                $('.total_number').html(product_list_num);

                //상품 목록이 하나도 없을시
                if(product_list_num == 0){
                    console.log(product_list_num);
                    $('#product_list').html('<tr id="product_none_msg"><td colspan="9">답변 대기 중인 문의가 없습니다.</td></tr>');
                }
            });

            $(".review_list_answer").click(function (e) {
                e.preventDefault();
                $('.answer_box').show()
            });

            $('#answer_save').click(function(e){
                e.preventDefault();
                var answer = $('#qanda_notes').val();

                if(answer){
                    alert("답변이 저장되었습니다.");
                    $('.answer_box').hide()
                    $('.answer_status').html("답변완료");
                }else{
                    alert("답변을 입력해주세요.");
                    return false;
                }
            });
        });

    </script>
</body>
</html>