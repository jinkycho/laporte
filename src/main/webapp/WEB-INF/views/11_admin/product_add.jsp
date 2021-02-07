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
						<li class="brand_logo_box"><a href="${pageContext.request.contextPath}/11_admin/admin_home.do" class="brand_logo">
								<span></span> <span id="logo_img">la porte</span>
						</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"><i class="glyphicon glyphicon-edit"></i>
								홈 퍼블리싱 예약관리 <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="${pageContext.request.contextPath}/11_admin/admin_resvappv.do"><i
										class="glyphicon glyphicon-ok"></i> 예약 승인</a></li>
							</ul></li>
						<li class="dropdown open"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"><i class="glyphicon glyphicon-tags"></i>
								제품 관리 <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="${pageContext.request.contextPath}/11_admin/stock_management.do"><i
										class="glyphicon glyphicon-briefcase"></i> 상품 관리</a></li>
								<li class="active"><a href="${pageContext.request.contextPath}/11_admin/product_add.do"><i
										class="glyphicon glyphicon-plus"></i> 상품 등록</a></li>
								<li><a href="${pageContext.request.contextPath}/11_admin/admin_review.do"><i
										class="glyphicon glyphicon-star-empty"></i> 리뷰 관리</a></li>
								<li><a href="${pageContext.request.contextPath}/11_admin/admin_sales.do"><i class="glyphicon glyphicon-usd"></i>
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
								<li><a href="${pageContext.request.contextPath}/11_admin/admin_order.do">
									<i class="glyphicon glyphicon-shopping-cart"></i> 주문내역 관리</a></li>
								<li><a href="${pageContext.request.contextPath}/11_admin/admin_delivery.do">
									<i class="glyphicon glyphicon-transfer"></i> 배송정보 관리</a></li>
								<li><a href="${pageContext.request.contextPath}/11_admin/admin_cancel.do">
									<i class="glyphicon glyphicon-retweet"></i> 취소/교환/반품/환불</a></li>
								<li><a href="${pageContext.request.contextPath}/11_admin/admin_coupon.do">
									<i class="glyphicon glyphicon-credit-card"></i> 쿠폰 </a></li>
								<li><a href="${pageContext.request.contextPath}/11_admin/admin_point.do" >
									<i class="glyphicon glyphicon-usd"></i> 적립금</a></li>
								<li><a href="${pageContext.request.contextPath}/11_admin/admin_visitors.do">
									<i class="glyphicon glyphicon-stats"></i> 방문자 수 관리</a></li>
							</ul>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<i class="glyphicon glyphicon-pencil"></i>
									문의 관리 <b class="caret"></b>
							</a>
							<ul class="dropdown-menu">
								<li>
									<a href="${pageContext.request.contextPath}/11_admin/admin_qanda.do"><i class="glyphicon glyphicon-envelope"></i> 이메일 문의 관리</a>
								</li>
								<li>
									<a href="${pageContext.request.contextPath}/11_admin/admin_fanda.do"><i class="glyphicon glyphicon-list-alt"></i> F&A 관리</a>
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
								<h2 class="m-0">상품 등록</h2>
							</div>
							<!-- /.col -->
							<div class="col-sm-6 clearfix">
								<ol class="breadcrumb pull-right">
                                    <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/11_admin/admin_home.do">홈</a></li>
                                    <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/11_admin/stock_management.do">상품관리</a></li>
									<li class="breadcrumb-item active">상품등록</li>
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
                                        <h3 class="card-title">기본 정보</h3>
                                    </div>
                                    <!-- /.card-header -->
                                    <div class="card-body">
                                        <table class="table table-bordered product_info_table">
                                            <tr>
                                                <td class="info_table_color">상품 분류 *</td>
                                                <td>
                                                    <form class="form-inline">
                                                        <!-- 1차 카테고리 -->
                                                        <div class="form-group">
                                                            <select id="parent" class="form-control">
                                                                <option value="">--1차 분류--</option>
                                                                <option value="sofa">소파/암체어</option>
                                                                <option value="bed">침대</option>
                                                                <option value="acceptance">수납/정리</option>
                                                                <option value="kitchen">주방가구/용품</option>
                                                                <option value="light">조명</option>
                                                            </select>
                                                        </div>
                                                        <!-- 1차 카테고리 끝 -->
                                                        <!-- 2차 카테고리 -->
                                                        <div class="form-group">
                                                            <select id="child" class="form-control">
                                                                <option value="">--2차 분류--</option>
                                                            </select>
                                                        </div>
                                                        <!-- 2차 카테고리 끝 -->
                                                    </form>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="info_table_color">상품 그룹</td>
                                                <td>
                                                    <form class="form-inline">
                                                        <div class="input-group">
                                                            <label><input type="checkbox" name="product_group" value="group_sale"> 세일</label>
                                                            <label><input type="checkbox" name="product_group" value="group_new"> 신제품</label>
                                                            <label><input type="checkbox" name="product_group" value="group_best"> 인기</label>
                                                            <label><input type="checkbox" name="product_group" value="group_best_month"> 이달의 제품</label>
                                                        </div>
                                                        
                                                    </form>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="info_table_color">상품명 *</td>
                                                <td>
                                                    <form class="form-inline">
                                                        <div class="form-group">
                                                            <input type="text" class="form-control" placeholder="상품명" id="product_name">
                                                        </div>
                                                    </form>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="info_table_color">상품 색상 *</td>
                                                <td>
                                                    <form class="form-inline">
                                                        <div class="form-group">
                                                            <input type="text" class="form-control" placeholder="상품 색상" id="product_color">
                                                        </div>
                                                    </form>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="info_table_color">상품 크기</td>
                                                <td>
                                                    <form class="form-inline">
                                                        <div class="form-group">
                                                            <input type="text" class="form-control" placeholder="상품 크기" id="product_size">
                                                        </div>
                                                    </form>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="info_table_color">상품 진열 *</td>
                                                <td>
                                                    <form class="form-inline">
                                                        <div class="input-group" id="product_display">
                                                            <label><input type="radio" name="display" value="display_y"> 진열함</label>
                                                            <label><input type="radio" name="display" value="display_n"> 진열안함</label>
                                                        </div>
                                                        
                                                    </form>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <!-- /.card-body -->
                                    <!--기본 정보 끝-->

                                    <!--가격 및 재고 시작-->
                                    <div class="card-header">
                                        <h3 class="card-title">가격 및 재고</h3>
                                    </div>
                                    <div class="card-body">
                                        <table class="table table-bordered product_info_table">
                                            <tr>
                                                <td class="info_table_color">판매가 *</td>
                                                <td>
                                                    <form class="form-inline">
                                                        <div class="form-group">
                                                            <input type="text" class="form-control" id="product_price">
                                                        </div>
                                                    </form>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="info_table_color">할인가</td>
                                                <td>
                                                    <form class="form-inline">
                                                        <div class="form-group">
                                                            <input type="text" class="form-control" id="product_sale_price">
                                                        </div>
                                                    </form>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="info_table_color">재고 *</td>
                                                <td>
                                                    <form class="form-inline">
                                                        <div class="input-group">
                                                            <label><input type="radio" name="product_num" value="product_soldout" > 품절</label>
                                                            <label><input type="radio" name="product_num" value="product_quantity" > 수량</label> 
                                                            <input type="text" class="form-control product_quantity_num" />개
                                                        </div>
                                                    </form>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <!--가격 및 재고 끝-->
    
                                    <!-- 상품 설명 시작-->
                                    <div class="card-header">
                                        <h3 class="card-title">상품 설명</h3>
                                    </div>
                                    <div class="card-body">
                                        <table class="table table-bordered product_info_table">
                                            <tr>
                                                <td class="info_table_color" width="20%">관리자 주석</td>
                                                <td width="80%">
                                                    <form class="form-inline">
                                                        <textarea name="admin_notes" id="admin_notes" class="form-control"></textarea>
                                                    </form>
                                                </td>
                                            </tr>
                                            <tr id="product_detail_text">
                                                <td class="info_table_color">상세 설명 *</td>
                                                <td>
                                                    <form class="form-inline">
                                                        <textarea name="product_notes" id="product_notes" class="form-control"></textarea>
                                                    </form>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="info_table_color">상품 상세크기 *</td>
                                                <td>
                                                    <form class="form-inline">
                                                        <textarea name="product_detail_size" id="product_detail_size" class="form-control"></textarea>
                                                    </form>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <!-- 상품 설명 끝-->
                                    
                                    <!--상품 이미지-->
                                    <div class="card-header">
                                        <h3 class="card-title">상품 이미지</h3>
                                    </div>
                                    <div class="card-body">
                                        <table class="table table-bordered product_info_table">
                                            <tr>
                                                <td class="info_table_color">대표 이미지 *</td>
                                                <td>
                                                    <form class="form-inline" enctype="multipart/form-data">
                                                        <div class="filebox_thumb"> 
                                                            <input type="file" name="product_thumbnail" id="product_thumbnail" class="form-control">
                                                            <input class="upload-name form-control" placeholder="파일선택"><label for="product_thumbnail">업로드</label>
                                                        </div>
                                                    </form>
                                                    <form class="form-inline">
                                                        <input type="text" placeholder="이미지 링크" id="product_thumbnail_link" class="form-control">
                                                        <button type="button" class="btn btn-primary thumb_link_btn">업로드</button>
                                                    </form>
                                                    <div class="explain_box"> ※1개만 업로드 가능</div>
                                                </td>
                                                <td class="img_box">
                                                    <div class="thumb_input_img_wrap">
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr id="product_detail_text">
                                                <td class="info_table_color">상세 이미지 *</td>
                                                <td>
                                                    <form class="form-inline" enctype="multipart/form-data">
                                                        <div class="filebox_detail">
                                                            <input type="file" name="product_detail_img" id="product_detail_img" multiple />
                                                            <input class="upload-name2 form-control" placeholder="파일선택"><label for="product_detail_img">추가</label>
                                                        </div>
                                                        <form class="form-inline">
                                                            <input type="text" placeholder="이미지 링크" id="product_detail_link" class="form-control">
                                                            <button type="button" class="btn btn-primary detail_link_btn">추가</button>
                                                        </form>
                                                        <div class="explain_box"> ※여러장 추가 가능</div>
                                                        
                                                    </form>
                                                </td>
                                                <td class="img_box">
                                                    <div class="detail_img_wrap">
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div class="btn_box">
                                        <button type="submit" class="btn btn-block btn-primary product_add_btn">등록</button>
                                    </div>
                                    
                                    <!--상품 이미지 끝-->

								</div>
								<!-- /.card 끝 -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /wrapper  끝-->
	</section>
	<footer></footer>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script id="category_item_tmpl" type="text/x-handlebars-template">
        {{#each item}}
        <option value="{{value}}">{{text}}</option>
        {{/each}}
    </script>
	<script type="text/javascript">
		$("#menu-toggle").click(function(e) {
			e.preventDefault();
			$("#wrapper").toggleClass("toggled");
        });
        $(function() {
			/** 드롭다운의 선택 변경 이벤트 */
			$("#parent").change(
					function() {
						// 결과가 표시될 #child에 내용 지우기
						$("#child").empty();
						// 사용자 선택값 가져오기
						var choice = $(this).find("option:selected").val();
						// 선택값이 없다면 처리 중단
						if (!choice) {
							$("#child").html(
									"<option value=''>--2차분류--</option>")
						}

						$.get('../api/category.do', {
							type : choice
						}, function(req) {
							// 미리 준비한 HTML틀을 읽어온다.
							var template = Handlebars.compile($(
									"#category_item_tmpl").html());
							// Ajax를 통해서 읽어온 JSON을 템플릿에 병합한다.
							var html = template(req);
							// #child 읽어온 내용을 추가한다.
							$("#child").append(html);
						}); // end $.get
					}); // end change
            /**드롭다운 1차 > 2차 선택변경 이벤트 끝 */ 
        });

        /* ----------대표 이미지 업로드 후 미리보기 이미지 --------*/
        var sel_files;

        $(document).ready(function() {
            $("#product_thumbnail").on("change", handleImgFileSelect);
        });

        function handleImgFileSelect(e) {
            var files = e.target.files;
            var filesArr = Array.prototype.slice.call(files);

            filesArr.forEach(function(f) {
                if(!f.type.match("image.*")){
                    alert("확장자는 이미지만 가능합니다.");
                    return;
                }

                sel_files = f;

                var reader = new FileReader();
                reader.onload = function(e){
                    $(".thumb_input_img_wrap").html("<img id='thumb_input_img' src='"+e.target.result+"'/>");
                }
                reader.readAsDataURL(f);
            });

            $("#product_thumbnail_link").val("");
        }

        $(document).ready(function(){ 
            var fileTarget = $('#product_thumbnail'); 
            fileTarget.on('change', function(){ // 값이 변경되면
            var cur=$(".filebox_thumb input[type='file']").val();
                $(".upload-name").val(cur);
            }); 
        }); 

         /*이미지 링크로 업로드시 */
        $(function() {
            $(".thumb_link_btn").click(function() {
                var thumb_link = $("#product_thumbnail_link").val();
                if(thumb_link){
                    $(".thumb_input_img_wrap").html("<img id='thumb_input_img' src="+thumb_link+" />");
                    $(".upload-name").val("");
                }else{
                    alert("이미지 주소를 입력해주세요.");
                }
                
            });
        });

        /*-------------- 상세 이미지 미리보기----------- */
        var img_files=[];

        $(document).ready(function() {
            $("#product_detail_img").on("change", handleImgFilesSelect);
        });

        function handleImgFilesSelect(e) {
            var files = e.target.files;
            var filesArr = Array.prototype.slice.call(files);

            filesArr.forEach(function(f) {
                if(!f.type.match("image.*")){
                    alert("확장자는 이미지만 가능합니다.");
                    return;
                }

                img_files.push(f);

                var reader = new FileReader();
                reader.onload = function(e){
                    var img_html = "<img src=\"" +e.target.result + "\" />";
                    var img_delete_btn = "<button type='button' class='btn btn-danger btn-sm img_delete_btn'>삭제</button>";
                    $(".detail_img_wrap").append("<div class='img_wrap'>");
                    $(".img_wrap:last-child").append(img_html);
                    $(".img_wrap:last-child").append(img_delete_btn);
                }
                reader.readAsDataURL(f);
            });
        }
        $(document).ready(function(){ 
            var fileTarget = $('#product_detail_img'); 
            fileTarget.on('change', function(){ // 값이 변경되면
            var cur=$(".filebox_detail input[type='file']").val();
                $(".upload-name2").val(cur);
            }); 
        }); 

        /*이미지 링크로 업로드시 */
        $(function() {
            $(".detail_link_btn").click(function() {
                var detail_link = $("#product_detail_link").val();
                if(detail_link){
                    var img_delete_btn = "<button type='button' class='btn btn-danger btn-sm img_delete_btn'>삭제</button>";
                    $(".detail_img_wrap").append("<div class='img_wrap'>");
                    $(".img_wrap:last-child").append("<img src="+detail_link+" />");
                    $(".img_wrap:last-child").append(img_delete_btn);
                }else{
                    alert("이미지 주소를 입력해주세요.");
                }
            });
        });
        /*상세 이미지 미리보기에서 삭제 버튼 클릭시*/
        $(function() {
            $(document).on('click', '.img_delete_btn', function(e) {
                $(this).parent().remove();
                $(".upload-name2").val("");
                $("#product_detail_link").val("");
            });
        });

        /*-----------------상품 등록 버튼 클릭시 필수 입력란 검사--------------*/
        $(function() {
            $(".product_add_btn").click(function(e) {
                /*상품 분류 드롭박스 미선택시 */
                var parent_index = $("#parent > option:selected").index();
                var child_index = $("#child > option:selected").index();
                if(parent_index < 1 || child_index < 1){
                    alert("상품 분류를 선택해주세요.");
                    $("#parent").focus();
                    return false;
                }
                /* 상품명 미입력시 */
                var product_name = $("#product_name").val();
                if(!product_name){
                    alert("상품명을 입력해주세요.");
                    $("#product_name").focus();
                    return false;
                }
                /* 상품 색상 미입력시*/
                var product_color = $("#product_color").val();
                if(!product_color){
                    alert("상품명 색상을 입력해주세요.");
                    $("#product_color").focus();
                    return false;
                }

                /* 상품 진열 라디오 미선택시 */
                var product_display = $("input[name='display']:checked").val();
                if(!product_display){
                    alert("상품 진열 여부를 선택해주세요.");
                    $("input[name='display']").focus();
                    return false;
                }

                /* 판매가 미입력시 */
                var product_price = $("#product_price").val();
                if(!product_price){
                    alert("판매가를 입력해주세요.");
                    $("#product_price").focus();
                    return false;
                }

                /* 재고 미입력시 */
                var stock = $("input[name='product_num']:checked").val();
                if(!stock){
                    alert("재고 여부를 선택해주세요.");
                    $("input[name='product_num']").focus();
                    return false;
                }else{
                    if(stock=='product_quantity'){
                        var product_quantity_num = $(".product_quantity_num").val();
                        if(!product_quantity_num){
                            alert("재고 수량을 입력해주세요.");
                            $(".product_quantity_num").focus();
                            return false;
                        }
                    }
                }

                /* 상세 설명 미입력시 */
                var product_notes = $("#product_notes").val();
                if(!product_notes){
                    alert("상세설명을 입력해주세요.");
                    $("#product_notes").focus();
                    return false;
                }

                /* 상품 상세 크기 미입력시 */ 
                var product_detail_size = $("#product_detail_size").val();
                if(!product_detail_size){
                    alert("상품 상세크기를 입력해주세요.");
                    $("#product_detail_size").focus();
                    return false;
                }

                /* 대표 이미지 미업로드시 */
                var thumb = $(".thumb_input_img_wrap>img").length;
                if(thumb<1){
                    alert("대표 이미지를 업로드 해주세요.");
                    return false;
                }

                /* 상세 이미지 미업로드시 */ 
                var detail = $(".detail_img_wrap img").length;
                if(detail<1){
                    alert("상세 이미지를 추가 해주세요.");
                    return false;
                }

            });
        });
	</script>
</body>
</html>