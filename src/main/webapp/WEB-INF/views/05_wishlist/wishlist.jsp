<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>La porte</title>

<link rel="preconnect" href="https://fonts.gstatic.com">

<!-- stylesheet -->
<link
	href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/common.css">
<link rel="stylesheet" type="text/css" href="../assets/css/wishlist.css">

<!-- javascript -->
<script src="http://code.jquery.com/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<!-- ajax-helper -->
<link rel="stylesheet" href="../assets/plugins/ajax/ajax_helper.css" />
<script src="../assets/plugins/ajax/ajax_helper.js"></script>
</head>

<body>
	<%@ include file="../01_home/header.jsp"%>
	<section>
		<!-- 검색 -->
		<div class="hd_searchbox">
			<div class="hd_search">
				<input id="search_text" type="text" placeholder="검색어 입력"> <span
					id="hd_search_icon"></span>
			</div>
			<div class="sc_gray_layer" id="hd_search_background"></div>
			<div class="sc_over_layer" id="hd_search_front">
				<div id="modal_search_box_container">
					<form>
						<input id="modal_search_text" type="text" placeholder="검색어 입력">
						<span id="search_close_icon"></span> <input type="reset"
							id="search_remove_icon"> <input type="submit"
							id="search_enter_icon">
					</form>
					<div id="search_result">
						<h4>추천 검색어</h4>
						<a href="#"><span class="rec_reyword"></span>가구</a> <a href="#"><span
							class="rec_reyword"></span>침대</a> <a href="#"><span
							class="rec_reyword"></span>주방</a> <a href="#"><span
							class="rec_reyword"></span>소파</a> <a href="#"><span
							class="rec_reyword"></span>수납</a> <a href="#"><span
							class="rec_reyword"></span>조명</a>
					</div>
				</div>
			</div>
		</div>
		<!-- 검색제외 본문영역 -->
		<div id="wishlist_container">
			<a href="#" id="wish_title_box"><span id="wish_title">위시리스트</span>
				<img class="wish_arrow_icon"
				src="https://www.ikea.com/kr/ko/shoppinglist/static/media/chevron-down-thin-24.1667eab2.svg"
				alt="아래 방향 화살표"></a>
			<div class="wish_gray_layer" id="wish_background"></div>
			<div class="wish_over_layer" id="wish_front">
				<h4>나의 리스트</h4>
				<span class="wish_close_button"></span>
				<div class="wishlist_list_box">
					<div class="wishlist_list_container">
						<div class="wishlist_list clear">
							<span class="wishlist_select pull-left">위시리스트</span> <span
								class="wishlist_delete_icon pull-right"></span> <span
								class="wishlist_rename_icon"></span>
						</div>
						<div id="alert_basic_wishlist"></div>
						<div class="rename_edit_box"></div>
					</div>
					<div class="add_wishlist_box clear">
						<span class="add_wish_icon"></span><span class="add_wish_text">새로운
							리스트 만들기</span>
					</div>
					<div id="add_wishlist_container">
						<form class="add_wishlist_form" role="form">
							<label for="wishlist_name">이름:</label> <input
								name="wishlist_name" id="wishlist_name" type="text">
							<div id="alert_none_name"></div>
						</form>
						<div class="wish_add_btn_box clear">
							<button type="button" id="wishlist_add_reset"
								class="btn btn-default pull-left">취소</button>
							<button type="submit" id="wishlist_name_add"
								class="btn btn-primary pull-right">리스트 만들기</button>
						</div>
					</div>
				</div>
			</div>
			<!-- 위시리스트에 상품이 추가 되었을때 바뀐는 부분 -->
			<div class="change_add_wishitem">
				<img class="wish_img"
					src="https://www.ikea.com/kr/ko/shoppinglist/static/media/ill-alien.cb42647f.svg"
					alt="위시리스트 사진">
				<div id="wishlist_textbox">
					<p>
						시간이 더 필요하신가요?<br>저장한 후 나중에 구매해보세요.
					</p>
					<!-- <a href="../02_mypage/join.html" class="link"> --><a href="${pageContext.request.contextPath}/02_mypage/join.do" class="link">계정 만들기</a>
					<div class="wish_btn_box_container clear">
						<a href="../01_home/home.html" class="wish_btn pull-left">제품검색</a>
						<a href="${pageContext.request.contextPath}/02_mypage/login.do" class="wish_btn pull-right">로그인</a>
					</div>
				</div>
			</div>
			<!-- 위시리스트에 상품이 추가 되었을때 바뀐는 부분 끝 -->
		</div>
	</section>
	<%@ include file="../01_home/footer.jsp"%>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="../assets/js/home.js"></script>
	<script type="text/javascript">
		$(function() {
			/* --------------------wish modalwindow-------------------*/
			$("#wish_title").click(function(e) {
				e.preventDefault();
				$("#wish_background").fadeIn(300);
				$("#wish_front").fadeIn(200);
				$("#add_wishlist_container").hide();
				$(".add_wishlist_box").show();
			});
			// 배경을 클릭한 경우
			$("#wish_background").click(function(e) {
				e.preventDefault();
				$(this).fadeOut(300);
				$("#wish_front").fadeOut(200);
			});
			// 오른쪽 x버튼 (self.close << 쓰는게 깔끔)
			$(".wish_close_button").click(function(e) {
				e.preventDefault();
				$("#wish_front").fadeOut(200);
				$("#wish_background").fadeOut(100);
			});
			// 새로운 리스트 만들기 클릭시 리스트만들기 영역 보이기
			$(".add_wishlist_box").click(function(e) {
				e.preventDefault();
				$("#add_wishlist_container").show();
				$(".add_wishlist_box").hide();

			});
			// 새로운 리스트 만들기 취소 버튼 클릭시
			$("#wishlist_add_reset").click(function(e) {
				e.preventDefault();
				$("#add_wishlist_container").hide();
				$(".add_wishlist_box").show();
				$("#alert_none_name").html("");
			});
			// 새로운 리스트 만들기 리스트 만들기 버튼 클릭시
			$("#wishlist_name_add")
					.click(
							function(e) {
								e.preventDefault();
								var wishlist_new_name = $("#wishlist_name")
										.val();
								if (!wishlist_new_name) {
									var wishlist_new_name = $("<p>");
									wishlist_new_name.html("위시리스트 이름을 입력해주세요.");
									wishlist_new_name.css("color", "#f74b4b");
									wishlist_new_name.css("font-size", "14px");
									$("#alert_none_name").html(
											wishlist_new_name);
									$("#wishlist_name").focus();
									return false; //처리 중단을 위한 리턴
								} //입력값이 없을떄

								//입력값을 화면에 표시하기
								$(".wishlist_list_container")
										.append(
												"<div class='new_wishlist_list clear'>",
												{});
								$(".new_wishlist_list:last-child").append(
										"<hr class='wish_hr'>");
								$(".new_wishlist_list:last-child").append(
										"<div class='wishlist_hide_box'>");
								$(
										".new_wishlist_list:last-child>.wishlist_hide_box")
										.append(
												"<span class='wishlist_select pull-left'>"
														+ wishlist_new_name
														+ "</span>");
								$(
										".new_wishlist_list:last-child>.wishlist_hide_box")
										.append(
												"<span class='wishlist_delete_icon pull-right'>"
														+ '</span>');
								$(
										".new_wishlist_list:last-child>.wishlist_hide_box")
										.append(
												"<span class='wishlist_rename_icon'>"
														+ '</span>');
								$(".new_wishlist_list:last-child").append(
										"<div class='wishlist_edit_hide'>");
								$(".new_wishlist_list:last-child").append(
										"<div class='wishlist_delete_hide'>");

								//리스트 만들기 박스 숨기기
								$("#wishlist_name").val("");
								$("#add_wishlist_container").hide();
								$(".add_wishlist_box").show();

							});
			//리스트 삭제 버튼 클릭시
			$(document)
					.on(
							'click',
							'.wishlist_delete_icon',
							function(e) {
								e.preventDefault();
								var delete_wishlist = $(this).parent();
								var delete_wishlist_box = $(this).parents(
										".new_wishlist_list").find(
										".wishlist_delete_hide");

								if ($(delete_wishlist)
										.hasClass("wishlist_list")) {
									var wishlist_delete_impo = $("<p>");
									wishlist_delete_impo
											.html("기본 위시리스트는 삭제 할 수 없습니다.");
									wishlist_delete_impo
											.css("color", "#f74b4b");
									wishlist_delete_impo.css("font-size",
											"14px");
									wishlist_delete_impo.css("margin-top",
											"-20px");
									$("#alert_basic_wishlist").html(
											wishlist_delete_impo);
									setTimeout(function() {
										$("#alert_basic_wishlist").html("");
									}, 2000); // 기본 위시리스트 삭제 클릭시 2초간 삭제불가 메시지 띄움
								} else {
									$(delete_wishlist_box)
											.html(
													"<p>리스트를 삭제하시겠습니까?</p>"
															+ "<button type='button' class='not_remove btn btn-default'>취소</button>"
															+ "<button type='button' class='real_remove btn btn-danger'>삭제</button>");
									$(delete_wishlist_box).show();
								}
								//새로추가한 위시리스트일 경우에만 삭제 , 삭제 확인 박스 생성
							});

			//삭제 아이콘 > 취소 버튼 클릭시
			$(document).on('click', '.not_remove', function(e) {
				$(this).parent().hide();
			});

			//삭제아이콘 > 삭제 버튼 클릭시 
			$(document).on('click', '.real_remove', function(e) {
				$(this).parents(".new_wishlist_list").remove();
			});

			//수정 버튼 클릭시
			$(document)
					.on(
							'click',
							'.wishlist_rename_icon',
							function(e) {
								e.preventDefault();
								var rename_wishlist_box = $(this).parent();
								var rename_wishlist_box2 = $(this).parent()
										.parent();
								var rename_wishlist_box3 = $(this).parents(
										".new_wishlist_list").find(
										".wishlist_edit_hide");
								var rename_text = $(rename_wishlist_box).eq(0);

								if ($(rename_wishlist_box).hasClass(
										"wishlist_list")) {
									var wishlist_edit_impo = $("<p>");
									wishlist_edit_impo
											.html("기본 위시리스트는 수정 할 수 없습니다.");
									wishlist_edit_impo.css("color", "#f74b4b");
									wishlist_edit_impo.css("font-size", "14px");
									wishlist_edit_impo.css("margin-top",
											"-20px");
									$("#alert_basic_wishlist").html(
											wishlist_edit_impo);
									setTimeout(function() {
										$("#alert_basic_wishlist").html("");
									}, 2000); // 기본 위시리스트 수정 클릭시 2초간 수정불가 메시지 띄움
								} else {
									$(rename_wishlist_box).hide();
									rename_wishlist_box3.css('height', '100px');
									var text = $(rename_text).text();
									$(rename_wishlist_box3)
											.html(
													"<input type='text' value="+text+" class='editname'>"
															+ "<button type='reset' class='wish_edit_cancel btn btn-default'>취소</button>"
															+ "<button type='button' class='wish_edit_save btn btn-primary'>저장</button>");
									$(rename_wishlist_box3).show();
								}//기본 위시리스트가 아닐 경우에만 수정 가능
							});
			// 수정 > 저장 버튼 클릭시 변경완료 및 수정 박스 숨기기
			$(document).on(
					'click',
					'.wish_edit_save',
					function(e) {
						e.preventDefault();

						var rename_parent = $(this).parents(
								".new_wishlist_list")
								.find(".wishlist_hide_box");
						var rename_name = $(this).parents(".new_wishlist_list")
								.find(".wishlist_select");
						var rename_text_new = $(this).parent()
								.find(".editname").val();
						var rename_edit_box = $(this).parent();

						$(rename_name).html(rename_text_new);
						$(rename_parent).show();
						$(rename_edit_box).hide();

					});
			// 수정 > 취소 버튼 클릭시 이전 화면으로 돌아가기
			$(document).on(
					'click',
					'.wish_edit_cancel',
					function(e) {
						e.preventDefault();
						var wish_rename_cancel = $(this).parents(
								".new_wishlist_list")
								.find(".wishlist_hide_box")
						var wish_rename_cancel_parent = $(this).parent();

						$(wish_rename_cancel).show();
						$(wish_rename_cancel_parent).hide();

					});
			//위시리스트 이름 클릭시 wishlist.html의 wish_title 변경
			$(document).on('click', '.wishlist_select', function(e) {
				e.preventDefault();
				$(this).css('font-weight', 'bold');
				$(".wishlist_select").not(this).css('font-weight', 'normal');
				$("#wish_front").fadeOut(200);
				$("#wish_background").fadeOut(100);
				var new_wish_title = $(this).text();
				$("#wish_title").html(new_wish_title);
			});
		});
	</script>
</body>
</html>