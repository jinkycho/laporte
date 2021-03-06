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
									<form class="form-inline" action="${pageContext.request.contextPath}/11_admin/product_add" enctype="multipart/form-data">
                                    <div class="card-header">
                                        <h3 class="card-title">?????? ??????</h3>
                                    </div>
                                    <!-- /.card-header -->
                                    <div class="card-body">
                                        <table class="table table-bordered product_info_table">
                                            <tr>
                                                <td class="info_table_color">?????? ?????? *</td>
                                                <td>
                                                        <!-- 1??? ???????????? -->
                                                        <div class="form-group">
                                                            <select id="category1" class="form-control prod_category1" name="catno1">
                                                                <option value="">--1??? ??????--</option>
                                                                <%-- ?????? ????????? ?????? ?????? ?????? --%>
                												<c:forEach var="item" items="${category1}" varStatus="status">
                    												<option value="${item.catno1}">${item.catname1}</option>
                												</c:forEach>
                                                            </select>
                                                        </div>
                                                        <!-- 1??? ???????????? ??? -->
                                                        <!-- 2??? ???????????? -->
                                                        <div class="form-group">
                                                            <select id="category2" class="form-control prod_category2" name="catno2">
                                                                <option value="">--2??? ??????--</option>
                                                            </select>
                                                        </div>
                                                        <!-- 2??? ???????????? ??? -->
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="info_table_color">?????? ??????</td>
                                                <td>
                                                        <div class="input-group">
                                                            <label><input type="checkbox" name="prd_group[]" value="??????"> ??????</label>
                                                            <label><input type="checkbox" name="prd_group[]" value="?????????"> ?????????</label>
                                                            <label><input type="checkbox" name="prd_group[]" value="??????"> ??????</label>
                                                            <label><input type="checkbox" name="prd_group[]" value="???????????????"> ????????? ??????</label>
                                                        </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="info_table_color">????????? *</td>
                                                <td>
                                                        <div class="form-group">
                                                            <input type="text" class="form-control" placeholder="?????????" id="product_name" name="name">
                                                        </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="info_table_color">?????? ?????? *</td>
                                                <td>
                                                        <div class="form-group">
                                                            <input type="text" class="form-control" placeholder="?????? ??????" id="product_color" name="color">
                                                        </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="info_table_color">?????? ??????</td>
                                                <td>
                                                        <div class="form-group">
                                                            <input type="text" class="form-control" placeholder="?????? ??????" id="product_size" name="size">
                                                        </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="info_table_color">?????? ?????? *</td>
                                                <td>
                                                        <div class="input-group" id="product_display">
                                                            <label><input type="radio" name="display" value="Y"> ?????????</label>
                                                            <label><input type="radio" name="display" value="N"> ????????????</label>
                                                        </div>
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
                                                        <div class="form-group">
                                                            <input type="text" class="form-control" id="product_price" name="price">
                                                        </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="info_table_color">?????????</td>
                                                <td>
                                                        <div class="form-group">
                                                            <input type="text" class="form-control" id="product_sale_price" name="saleprice">
                                                        </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="info_table_color">?????? *</td>
                                                <td>
                                                        <div class="input-group">
                                                            <label><input type="radio" value="product_soldout" name="stock_status"> ??????</label>
                                                            <label><input type="radio" value="product_quantity"  name="stock_status"> ??????</label> 
                                                            <input type="text"  name="stock" class="form-control product_quantity_num" />???
                                                        </div>
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
                                                        <textarea name="adminnote" id="admin_notes" class="form-control"></textarea>
                                                </td>
                                            </tr>
                                            <tr id="product_detail_text">
                                                <td class="info_table_color">?????? ?????? *</td>
                                                <td>
                                                        <textarea name="detailnote" id="product_notes" class="form-control"></textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="info_table_color" action="${pageContext.request.contextPath}/11_admin/product_add">?????? ???????????? *</td>
                                                <td>
                                                        <textarea name="detailsize" id="product_detail_size" class="form-control"></textarea>
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
                                                        <div class="filebox_thumb"> 
                                                            <input type="file" name="product_thumbnail" id="product_thumbnail" class="form-control">
                                                            <input class="upload-name form-control" placeholder="????????????"><label for="product_thumbnail">?????????</label>
                                                        </div>
                                                        <!-- <input type="text" placeholder="????????? ??????" id="product_thumbnail_link" class="form-control">
                                                        <button type="button" class="btn btn-primary thumb_link_btn">?????????</button> -->
                                                    <div class="explain_box"> ???1?????? ????????? ??????</div>
                                                </td>
                                                <td class="img_box">
                                                    <div class="thumb_input_img_wrap">
                                                    </div>
                                                </td>
                                            </tr>
                                           <!--  <tr id="product_detail_text">
                                                <td class="info_table_color">?????? ????????? *</td>
                                                <td>
                                                        <div class="filebox_detail">
                                                            <input type="file" name="product_detail_img" id="product_detail_img" multiple />
                                                            <input class="upload-name2 form-control" placeholder="????????????"><label for="product_detail_img">??????</label>
                                                        </div>
                                                        <input type="text" placeholder="????????? ??????" id="product_detail_link" class="form-control">
                                                        <button type="button" class="btn btn-primary detail_link_btn">??????</button>
                                                    <div class="explain_box"> ???????????? ?????? ??????</div>
                                                        
                                                </td>
                                                <td class="img_box">
                                                    <div class="detail_img_wrap">
                                                    </div>
                                                </td>
                                            </tr> -->
                                        </table>
                                    </div>
                                    <div class="btn_box">
                                        <button type="submit" class="btn btn-block btn-primary product_add_btn">??????</button>
                                    </div>
                                    
                                    <!--?????? ????????? ???-->
								</form>
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
    <script id="cat2-list-tmpl" type="text/x-handlebars-template">
        {{#each item}}
		<option value="{{catno2}}">{{catname2}}</option>
        {{/each}}
    </script>
	<!-- Handlebar CDN ?????? -->
    <script src="//cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.4.2/handlebars.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <!-- jQuery Ajax Form plugin CDN -->
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery.form/4.2.2/jquery.form.min.js"></script>
    <!-- jQuery Ajax Setup -->
    <script src="${pageContext.request.contextPath}/assets/plugins/ajax/ajax_helper.js"></script>
	<script type="text/javascript">
		$("#menu-toggle").click(function(e) {
			e.preventDefault();
			$("#wrapper").toggleClass("toggled");
        });
		
		$(document).on("change", "#category1", function(){
	    	var catno1 = $("#category1 option:selected").val();
	    	//????????? 1??????????????? ???????????? ??????
	    	// console.log(catno1); 
	    	
	    	$.post("${pageContext.request.contextPath}/11_admin/product_add/category", {
					"catno1":catno1	    		
					
	    	}, function(json){
	    		$("#category2 option").remove();
	    		$("#category2").append('<option value="">--2??? ??????--</option>');
	    		var source = $("#cat2-list-tmpl").html();
	    		var template = Handlebars.compile(source);
	    		var result = template(json);
	    		$("#category2").append(result);
	    	});
	    });
		
		

        /* ----------?????? ????????? ????????? ??? ???????????? ????????? --------*/
        var sel_files;

        $(document).ready(function() {
            $("#product_thumbnail").on("change", handleImgFileSelect);
        });

        function handleImgFileSelect(e) {
            var files = e.target.files;
            var filesArr = Array.prototype.slice.call(files);

            filesArr.forEach(function(f) {
                if(!f.type.match("image.*")){
                    alert("???????????? ???????????? ???????????????.");
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
            fileTarget.on('change', function(){ // ?????? ????????????
            var cur=$(".filebox_thumb input[type='file']").val();
                $(".upload-name").val(cur);
            }); 
        }); 

         /*????????? ????????? ???????????? */
       /*  $(function() {
            $(".thumb_link_btn").click(function() {
                var thumb_link = $("#product_thumbnail_link").val();
                if(thumb_link){
                    $(".thumb_input_img_wrap").html("<img id='thumb_input_img' src="+thumb_link+" />");
                    $(".upload-name").val("");
                }else{
                    alert("????????? ????????? ??????????????????.");
                }
                
            });
        }); */

        /*-------------- ?????? ????????? ????????????----------- */
        /* var img_files=[];

        $(document).ready(function() {
            $("#product_detail_img").on("change", handleImgFilesSelect);
        });

        function handleImgFilesSelect(e) {
            var files = e.target.files;
            var filesArr = Array.prototype.slice.call(files);

            filesArr.forEach(function(f) {
                if(!f.type.match("image.*")){
                    alert("???????????? ???????????? ???????????????.");
                    return;
                }

                img_files.push(f);

                var reader = new FileReader();
                reader.onload = function(e){
                    var img_html = "<img src=\"" +e.target.result + "\" />";
                    var img_delete_btn = "<button type='button' class='btn btn-danger btn-sm img_delete_btn'>??????</button>";
                    $(".detail_img_wrap").append("<div class='img_wrap'>");
                    $(".img_wrap:last-child").append(img_html);
                    $(".img_wrap:last-child").append(img_delete_btn);
                }
                reader.readAsDataURL(f);
            });
        }
        $(document).ready(function(){ 
            var fileTarget = $('#product_detail_img'); 
            fileTarget.on('change', function(){ // ?????? ????????????
            var cur=$(".filebox_detail input[type='file']").val();
                $(".upload-name2").val(cur);
            }); 
        }); 
 */
        /*????????? ????????? ???????????? */
        /* $(function() {
            $(".detail_link_btn").click(function() {
                var detail_link = $("#product_detail_link").val();
                if(detail_link){
                    var img_delete_btn = "<button type='button' class='btn btn-danger btn-sm img_delete_btn'>??????</button>";
                    $(".detail_img_wrap").append("<div class='img_wrap'>");
                    $(".img_wrap:last-child").append("<img src="+detail_link+" />");
                    $(".img_wrap:last-child").append(img_delete_btn);
                }else{
                    alert("????????? ????????? ??????????????????.");
                }
            });
        }); */
        /*?????? ????????? ?????????????????? ?????? ?????? ?????????*/
        /* $(function() {
            $(document).on('click', '.img_delete_btn', function(e) {
                $(this).parent().remove();
                $(".upload-name2").val("");
                $("#product_detail_link").val("");
            });
        }); */

        /*-----------------?????? ?????? ?????? ????????? ?????? ????????? ??????--------------*/
        $(function() {
            $(".product_add_btn").click(function(e) {
                /*?????? ?????? ???????????? ???????????? */
                var parent_index = $("#category1 > option:selected").index();
                var child_index = $("#category2 > option:selected").index();
                if(parent_index < 1 || child_index < 1){
                    alert("?????? ????????? ??????????????????.");
                    $("#category1").focus();
                    return false;
                }
                /* ????????? ???????????? */
                var product_name = $("#product_name").val();
                if(!product_name){
                    alert("???????????? ??????????????????.");
                    $("#product_name").focus();
                    return false;
                }
                /* ?????? ?????? ????????????*/
                var product_color = $("#product_color").val();
                if(!product_color){
                    alert("????????? ????????? ??????????????????.");
                    $("#product_color").focus();
                    return false;
                }

                /* ?????? ?????? ????????? ???????????? */
                var product_display = $("input[name='display']:checked").val();
                if(!product_display){
                    alert("?????? ?????? ????????? ??????????????????.");
                    $("input[name='display']").focus();
                    return false;
                }

                /* ????????? ???????????? */
                var product_price = $("#product_price").val();
                if(!product_price){
                    alert("???????????? ??????????????????.");
                    $("#product_price").focus();
                    return false;
                }

                /* ?????? ???????????? */
                var stock = $("input[name='stock_status']:checked").val();
                if(!stock){
                    alert("?????? ????????? ??????????????????.");
                    $("input[name='stock_status']").focus();
                    return false;
                }

                /* ?????? ?????? ???????????? */
                var product_notes = $("#product_notes").val();
                if(!product_notes){
                    alert("??????????????? ??????????????????.");
                    $("#product_notes").focus();
                    return false;
                }

                /* ?????? ?????? ?????? ???????????? */ 
                var product_detail_size = $("#product_detail_size").val();
                if(!product_detail_size){
                    alert("?????? ??????????????? ??????????????????.");
                    $("#product_detail_size").focus();
                    return false;
                }

                /* ?????? ????????? ??????????????? */
                var thumb = $(".thumb_input_img_wrap>img").length;
                if(thumb<1){
                    alert("?????? ???????????? ????????? ????????????.");
                    return false;
                }

                /* ?????? ????????? ??????????????? */ 
                /* var detail = $(".detail_img_wrap img").length;
                if(detail<1){
                    alert("?????? ???????????? ?????? ????????????.");
                    return false;
                } */
                
                $(".form-inline").ajaxForm({
                    // ?????? ????????? ??????
                    method: "POST",
                    // ???????????? 200 ????????? ????????? ?????? ?????????
                    success: function(json) {
                        console.log(json);
                        
                        // json??? ????????? ???????????? ???????????? ?????????????????? ????????????.
                        if (json.rt == "OK") {
                            window.location = "${pageContext.request.contextPath}/11_admin/product_view.do?prodno=" + json.item.prodno;
                        }
                    }
                });

            });
        });
        
     // .form-inline??? ?????? submit???????????? ???????????? Ajax????????? ????????????.
        
	</script>
</body>
</html>