<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<title>la porte</title>

		<link rel="preconnect" href="https://fonts.gstatic.com">
		
	<!-- stylesheet -->
		<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
	    <link rel="stylesheet" type="text/css" href="../assets/css/common.css">
	    <link rel="stylesheet" type="text/css" href="../assets/css/order.css">
	
	<!-- javascript -->
	    <script src="http://code.jquery.com/jquery.min.js"></script>
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	
	<!-- ajax-helper -->
	    <link rel="stylesheet" href="assets/plugins/ajax/ajax_helper.css" />
	    <script src="assets/plugins/ajax/ajax_helper.js"></script>
	</head>

	<body>
		<%@ include file="../01_home/header.jsp" %>
		<section>
			<!-- 검색 -->
	        <div class="hd_searchbox">
	            <div class="hd_search">
	                <input id="search_text" type="text" placeholder="검색어 입력">
	                    <span id="hd_search_icon"></span>
	            </div>
	            <div class="sc_gray_layer" id="hd_search_background"></div>
				<div class="sc_over_layer" id="hd_search_front">
					<div id="modal_search_box_container">
						<form>
							<input id="modal_search_text" type="text" placeholder="검색어 입력">
							<span id="search_close_icon"></span>
							<input type="reset" id="search_remove_icon">
							<input type="submit" id="search_enter_icon">
						</form>
						<div id="search_result" >
							<h4>추천 검색어</h4>
							<a href="../03_detail/allproduct1.html"><span class="rec_reyword"></span>가구</a>
							<a href="../03_detail/allproduct3.html"><span class="rec_reyword"></span>침대</a>
							<a href="../03_detail/allproduct5.html"><span class="rec_reyword"></span>주방</a>
							<a href="../03_detail/allproduct2.html"><span class="rec_reyword"></span>소파</a>
							<a href="../03_detail/allproduct4.html"><span class="rec_reyword"></span>수납</a>
							<a href="../03_detail/allproduct6.html"><span class="rec_reyword"></span>조명</a>
						</div>
					</div>
				</div>
			</div>
			<!-- 검색 끝 -->
			
			<!-- <h3>내 주문내역</h3> -->
			<!-- 탭 전체 박스 -->
			<div class="order_tab">
				<!-- 탭 버튼 영역 -->
				<ul class="order_tab_button clearfix">
					<li class="order_tab_item">
						<a class="order_tab_itemlink selected" id="order_tab_link01" href=".order_tab_page01">처리중 주문</a>
					</li>
					<li class="order_tab_item">
						<a class="order_tab_itemlink" id="order_tab_link02" href=".order_tab_page02">지난 주문</a>
					</li>
				</ul>
			</div>
			
			<div class="container order">
				<!-- 내용영역 -->
				<div>
					<div class="order_tab_pagenone">
						<p class="order_none_title">현재 진행중인 주문이 없습니다.</p>
					</div>
					<div class="order_tab_page01"></div>
					<div class="order_tab_page02"></div>
				</div>
				<div class="order_none">
					<span id="order_search_icon"></span>
					<div>
						<p><b>찾는 주문 내역이 없으신가요?</b></p>
						<p>매장 또는 비회원으로 주문하신 경우, 여기서 주문내역을 확인할 수 있습니다.
							<a href="#" class="order_link">주문 내역 확인</a>
						</p>
					</div>
					<div class="order_blank">
						<p>찾는 주문 내역이 없으신가요?
							<a href="#" class="order_link">고객지원센터</a> 로 문의해 주세요.
						</p>
					</div>
				</div>
			</div>
			<div class="order_hidelist"></div>
		</section>
		<%@ include file="../01_home/footer.jsp" %>
		
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
		<script src="../js/home.js"></script>
	    <script type="text/javascript">

			// 처리중 주문 클릭시
			$(document).on("click", "#order_tab_link01", function(e) {
				e.preventDefault();
				
				$(".order_tab_page01").show();
				$(".order_tab_page02").hide();
				$("#order_tab_link01").addClass("selected");
				$("#order_tab_link02").removeClass("selected");
				$(".order_tab_pagenone").hide();
				$(".container").show();
				$(".order_hidelist").hide();

				$(".order_tab_page01").load("../02_mypage/order_page01.html");
				var order_page01 = $(".order_page01");

				$.get("../api/item_info/order_example01.json", function(req) {
					$(".order_iSellno").html(req.iSellno);
					$(".order_date").html(req.date);
					$(".order_condition").html(req.condition);
				
				// $(".order_tab_page01").append(order_page01);
				});
			});

			// 지난 주문 클릭시
			$(document).on("click", "#order_tab_link02", function(e) {
				e.preventDefault();
				
				$(".order_tab_page02").show();
				$(".order_tab_page01").hide();
				$("#order_tab_link02").addClass("selected");
				$("#order_tab_link01").removeClass("selected");
				$(".order_tab_pagenone").hide();
				$(".container").show();
				$(".order_hidelist").hide();

				$(".order_tab_page02").load("../02_mypage/order_page02.html");
				var order_page02 = $(".order_page02");

				$.get("../api/item_info/order_example02.json", function(req) {
					$(".order_iSellno").html(req.iSellno);
					$(".order_date").html(req.date);
					$(".order_condition").html(req.condition);
				
				// $(".order_tab_page02").append(order_page02);
				});
			});

			// 처리중주문 > 주문관리 클릭시
			$(document).on("click", ".order_link01", function(e) {
				e.preventDefault();
				
				$(".order").hide();
				$(".order_hidelist").show();

				$(".order_hidelist").load("../02_mypage/order_list01.html");

				$.get("../api/item_info/order_infoexample01.json", function(req) {
					$(".order_iSellno").html(req.iSellno);
					$(".order_condition").html(req.condition);
					$(".order_date").html(req.date);
					$(".order_name").html(req.name);
					$(".order_address").html(req.address);
					$(".order_email").html(req.email);
					$(".order_payment").html(req.payment);
					$(".order_price").html(req.price);
					$(".order_deliveryprice").html(req.deliveryprice);
					$(".order_totalprice").html(req.totalprice);
				});
			});

			// 지난주문 >> 주문관리 클릭시
			$(document).on("click", ".order_link02", function(e) {
				e.preventDefault();
				
				$(".order").hide();
				$(".order_hidelist").show();

				$(".order_hidelist").load("../02_mypage/order_list02.html");

				$.get("../api/item_info/order_infoexample02.json", function(req) {
					$(".order_iSellno").html(req.iSellno);
					$(".order_condition").html(req.condition);
					$(".order_date").html(req.date);
					$(".order_name").html(req.name);
					$(".order_address").html(req.address);
					$(".order_email").html(req.email);
					$(".order_payment").html(req.payment);
					$(".order_price").html(req.price);
					$(".order_deliveryprice").html(req.deliveryprice);
					$(".order_totalprice").html(req.totalprice);
				});
			});

			// 처리중주문 >> 더보기 클릭시
			$(document).on("click", ".order_delivery_product", function(e) {
				e.preventDefault();

				$(".order_hidden").slideToggle(200);
				if ( $(this).html() == "+" ) {
					$(this).html("-")
					} else {
						$(this).html("+");
					}
				
				var order_itemlist = $(".order_itemlist");

				$.get("../api/item_info/example.json", function(req) {
					$(".order_item_img").attr('src', req.img);
						$(".order_item_title").html(req.name);
						$(".order_item_info").html(req.type);
						$(".order_item_productno").html(req.num);
						$(".order_item_price").html("&#8361; "+ req.price);
				});
			});

			// 지난주문 >> 더보기 클릭시
			$(document).on("click", ".order_product", function(e) {
				e.preventDefault();

				$(".order_hidden").slideToggle(200);
				if ( $(this).html() == "+" ) {
					$(this).html("-")
					} else {
						$(this).html("+");
					}
				
				var order_itemlist = $(".order_itemlist");

				$.get("../api/item_info/example.json", function(req) {
					$(".order_item_img").attr('src', req.img);
						$(".order_item_title").html(req.name);
						$(".order_item_info").html(req.type);
						$(".order_item_productno").html(req.num);
						$(".order_item_price").html("&#8361; "+ req.price);
				});
			});

			// 처리중 주문 배송내용 클릭시
			$(document).on("click", ".order_delivery_info", function(e) {
				e.preventDefault();
				$("#hd_menu_background").fadeIn(300);
	        	$(".order_over_layer").fadeIn(200);

				$(document).on("click","#hd_menu_background", function(e) {
					$(this).fadeOut(300);
					$(".order_over_layer").fadeOut(200);
				});

				$.ajax({
					type:"GET",
					dataType : "json",
					url:"../api/item_info/tracking_api.json",
					success:function(req) {
						var delivery = "";
						if ( req.status == false ) {
							delivery += ('<p>' + req.msg + '<p>');
						} else {
							delivery += ('<tr>');                
							delivery += ('<th>' + "보내는사람" + '</th>');                     
							delivery += ('<th>' + req.senderName + '</th>');
							delivery += ('<th>' + "주문번호" + '</th>');                     
							delivery += ('<th>' + req.iSellno + '</th>');                     
							delivery += ('</tr>');     
							delivery += ('<tr>');                
							delivery += ('</tr>');     
							delivery += ('<tr>');
							delivery += ('<th>' + "택배회사" + '</th>');                     
							delivery += ('<th>' + req.company + '</th>');              
							delivery += ('<th>' + "송장번호" + '</th>');                     
							delivery += ('<th>' + req.invoiceNo + '</th>');                 
							delivery += ('</tr>');                                        
						}
						
						$("#order_table01").html(delivery);
						
						var trackingDetails = req.trackingDetails;
						var header ="";
						var myTracking="";
						header += ('<tr>');                
						header += ('<th>' + "시간" + '</th>');
						header += ('<th>' + "장소" + '</th>');
						header += ('<th>' + "유형" + '</th>');
						header += ('<th>' + "전화번호" + '</th>');                     
						header += ('</tr>');     
						
						$.each(trackingDetails,function(key, value) {
							myTracking += ('<tr>');                
							myTracking += ('<td class="time">' + value.timeString + '</td>');
							myTracking += ('<td class="where">' + value.where + '</td>');
							myTracking += ('<td class="kind">' + value.kind + '</td>');
							myTracking += ('<td class="telno">' + value.telno + '</td>');                     
							myTracking += ('</tr>');                                    
						});
						
						$("#order_table02").html(header + myTracking);
						
					}
				});
			});

			// 지난 주문 >> 뒤로 버튼 클릭시
			// $(document).on("click", ".order_back", function(e) {
			// 	e.preventDefault();

			// 	$(".order_list02").hide();
				
			// });
		</script>
	</body>
</html>