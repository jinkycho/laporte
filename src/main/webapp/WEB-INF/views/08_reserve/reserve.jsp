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

	<!-- font stylesheet -->
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
	
	<!-- stylesheet -->
    <link rel="stylesheet" href="../assets/dist/css/metallic/zebra_datepicker.css" type="text/css">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
  	<link rel="stylesheet" type="text/css" href="../assets/css/common.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/reserve.css">

	<!-- javascript -->
    <script src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
	<script>window.jQuery || document.write('<script src="path/to/jquery-3.5.0.js"><\/script>')</script>
	 <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


	<!-- ajax-helper -->
    <link rel="stylesheet" href="../assets/plugins/ajax/ajax_helper.css" />
    <script src="../assets/plugins/ajax/ajax_helper.js"></script>

	<!-- sweetalert -->
    <link rel="stylesheet" href="../assets/plugins/sweetalert/sweetalert2.min.css">
   


</head>

<body>
<%@ include file="../01_home/header.jsp" %>
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
                            <a href="#"><span class="rec_reyword"></span>가구</a>
                            <a href="#"><span class="rec_reyword"></span>침대</a>
                            <a href="#"><span class="rec_reyword"></span>주방</a>
                            <a href="#"><span class="rec_reyword"></span>소파</a>
                            <a href="#"><span class="rec_reyword"></span>수납</a>
                            <a href="#"><span class="rec_reyword"></span>조명</a>
                        </div>
                    </div>
                </div>
        </div>
<!-- 검색 끝-->


<!-- 본문영역 -->
  <div class="reserve_top">
	<ul class="reserve_ul">
		<li class="reserve_li"><a href="#" class="reserve_li_a">서비스</a></li>
		<li class="iconbox"></li>
		<li class="reserve_li2"><a href="#" class="reserve_li_a">홈퍼니싱 컨설팅 서비스</a></li>
	</ul>

	<div class="reserve_text">
		<h3 class="reserve_text_h2">홈퍼니싱 컨설팅 예약</h3>
		<h4 class="reserve_text_h4">개인정보를 입력해주세요.
			<br>
			해당 정보는 상담 신청에 필요한 개인 식별을
			<br>
			위해서만 사용됩니다.
		</h4>
	</div>
</div>

	<div class="reserve_select">
		<b><span>매장 선택</span></b>
		<select class="resvation_select-box">
			<option class=reserve_select-box_option>강남점</option>
			<option class=reserve_select-box_option>광명점</option>
			<option class=reserve_select-box_option>대구점</option>
		</select>
	</div>
	<div class="reserve_cal-text">
	<p>
		상담을 원하는 날짜를 선택해주세요.<br>
		오늘 일자부터 2주간의 예약이 가능합니다.
	</p>
    </div>
<div class="reserve_bottom">
<div class="reserve_calendar">
<b><span>날짜선택</span></b>
<div id="container" style="margin: 10px 0 15px 0; height: 255px; position: relative"></div>
<input id="datepicker-always-visible" type="text" class="form-control" data-zdp_readonly_element="false"
placeholder="캘린더에서 날짜를 선택해주세요.">
</div>

<div id="reserve_input">
	<div class="reserve_input_name">
		<b><span>이름</span></b>
		<input class="name">
	</div>

	<div class="reserve_input_email">
		<b><span>E-mail</span></b>
		<input type="text" class="email" id="email_id">
		<span id="at_mark">@</span>
		<input type="text" class="email" id="email_address">
		<select class="email_select">
			<option class="email_option" value="">직접 입력하세요.</option>
			<option class="email_option" value="naver">네이버</option>
			<option class="email_option" value="google">구글</option>
			<option class="email_option" value="daum">다음</option>
		</select>
	</div>
	<div class="reserve_input_call">
		<b><span>휴대폰번호</span></b>
		<select class="call_select">
			<option class="call_option">010</option>
			<option class="call_option">011</option>
			<option class="call_option">016</option>
			<option class="call_option">018</option>
		</select>
		<span id="slash_mark">-</span>
		<input type="text" class="call" id="call_md">
		<span id="slash_mark">-</span>
		<input type="text" class="call">
	</div>
	<div class="reserve_input_time">
		<b><span>예약 시간</span></b>
		<select class="input_default">
			<option class="call_time">오전 9시</option>
			<option class="call_time">오전 10시</option>
			<option class="call_time">오전 11시</option>
			<option class="call_time">오전 12시</option>
			<option class="call_time">오후 1시</option>
			<option class="call_time">오후 2시</option>
			<option class="call_time">오후 3시</option>
			<option class="call_time">오후 4시</option>
			<option class="call_time">오후 5시</option>
		</select>
	</div>
	<div class="reserve_input_area">
		<b><span>컨설팅영역</span></b>
		<select class="input_default">
			<option class="area_select">가구</option>
			<option class="area_select">소파/암체어</option>
			<option class="area_select">침대</option>
			<option class="area_select">수납/정리</option>
			<option class="area_select">주방가구/용품</option>
			<option class="area_select">조명</option>
		</select>
	</div>
	<div class="reserve_input_req">
		<b><span>요청사항</span></b>
		<input type="text" placeholder="요청 사항이 있으시면 남겨주세요.">
	</div>
	<div class="reserve_chck">
		<input type="checkbox" id="reserve_agr">
		<p>예약확인 등을 위해 개인정보를 제3자에게 동의합니다.
		<a href="#">(자세히보기)</a></p>
	</div>
</div>
	<a href="#" id="reserve_submit">확인</a>
</div>
<%@ include file="../01_home/footer.jsp" %>

<!-- swweetalert -->
<script src="../assets/plugins/sweetalert/sweetalert2.all.min.js"></script>
<script src="../assets/js/home.js"></script>
<script type="text/javascript">


$(document).ready(function() {

    /* 캘린더 플러그인 */
	$('#datepicker-always-visible').Zebra_DatePicker({
		/* 캘린더 페이지에 항상 표시 */
        always_visible: $('#container'),
        /* 14일 이후까지만 표시 */
        direction: [1,14],
        /* 일요일 선택 disable */
        disabled_dates: ['* * * 0'] 
    });
});

$(function(){
    $(document).on('change', '.email_select', function(e){
        e.preventDefault();
        var emailSelect = $('.email_select').val();

        if( emailSelect == ""){
            $('#email_address').val("").prop('disabled',false).css('background-color', '#fff').focus();
        }


        if( emailSelect == "naver"){
            $('#email_address').val("naver.com").prop('disabled',true).css('background-color', '#e5e5e5');
        }

        if( emailSelect == "google"){
            $('#email_address').val("google.com").prop('disabled',true).css('background-color', '#e5e5e5');
        }

        if( emailSelect == "daum"){
            $('#email_address').val("daum.net").prop('disabled',true).css('background-color', '#e5e5e5');
        }
    });

    $('#reserve_submit').click(function(e){
        e.preventDefault();

        var reserveDate = $('#datepicker-always-visible').val();
        var reserveName = $('.name').val();
        var reserveEmail = $('.email').val();
        var reserveCall = $('.call').val();
        var reserveAgr =  $("#reserve_arg:checked");

        if(!reserveDate){
            swal('확인', '날짜를 선택해주세요.', 'warning');
            return false;
        }

        if(!reserveName){
            swal('확인', '이름을 입력 해주세요.', 'warning');
            $('.name').focus();
            return false;
        }

        if(!reserveEmail){
            swal('확인', '이메일을 입력 해주세요.', 'warning');
            $('#email_id').focus();
            return false;
        }
        

        if(!reserveCall){
            swal('확인', '휴대폰번호를 입력 해주세요.', 'warning');
            $('#call_md').focus();
            return false;
        }

        if(!reserveAgr){
            swal('확인', '개인정보 동의를 해주셔야 예약이 가능합니다.', 'warning');
            return false;
        }

        swal('완료', '예약이 전송되었습니다. 예약 확정은 마이페이지에서 확인가능합니다.', 'success');

    });
    
});
/* 캘린더 플러그인 */
	

        /* header fixed */
            // 스크롤 체크 변수 선언
            var didScroll;
            var lastScrollTop = 0;
            var delta = 5; // 동작의 구현이 시작되는 위치
            var navbarHeight = $("header").outerHeight(); // 영향을 받을 요소
            // 스크롤시에 사용자가 스크롤했다는 것을 알림
            $(window).scroll(function(event) {
                didScroll = true;
            });
            // hasScrolled()를 실행하고 didScroll 상태를 재설정
            setInterval(function() {
                if (didScroll) {
                    hasScrolled();
                    didScroll = false;
                }
            }, 250);

            function hasScrolled() {
                var st = $(this).scrollTop();
                if (Math.abs(lastScrollTop - st) <= delta)
                    return;

                if (st > lastScrollTop && st > navbarHeight) {
                    // 스크롤 내릴때
                    $("header").removeClass("nav-down").addClass("nav-up");
                } else {
                    // 스크롤 올릴때
                    if(st + $(window).height() < $(document).height()) {
                        $("header").removeClass("nav-up").addClass("nav-down");
                    }
                }
                lastScrollTop = st;
            }

        $(function() {
        /* header - menu modalwindow*/
            $("#hd_menu_icon").click(function(e) {
                e.preventDefault();
                $("#hd_menu_background").fadeIn(300);
                $("#hd_menu_front").fadeIn(200);
            });
            // 배경을 클릭한 경우
            $("#hd_menu_background").click(function() {
                $(this).fadeOut(300);
                $("#hd_menu_front").fadeOut(200);
            });
            // x버튼 (self.close << 쓰는게 깔끔)
            $("#hd_menu_close").click(function(e) {
                e.preventDefault();
                $("#hd_menu_front").fadeOut(200);
                $("#hd_menu_background").fadeOut(100);
            });
       /* --------------------search modalwindow------------------ */
            $("#search_text").focus(function(e) {
                e.preventDefault();
                $("#hd_search_background").fadeIn(300);
                $("#hd_search_front").fadeIn(200);
                $("#modal_search_text").focus();
            });
            // 배경을 클릭한 경우
            $("#hd_search_background").click(function() {
                $(this).fadeOut(300);
                $("#hd_search_front").fadeOut(200);
            });
            // 왼쪽 x버튼 (self.close << 쓰는게 깔끔)
            $("#search_close_icon").click(function(e) {
                e.preventDefault();
                $("#hd_search_front").fadeOut(200);
                $("#hd_search_background").fadeOut(100);
            });
        /* ----------------- 함수 입력시 여기지우고부터 작성 시작 ------------------ */
    });
    </script>
 <script src="../assets/dist/zebra_datepicker.src.js"></script>

</body>
</html>