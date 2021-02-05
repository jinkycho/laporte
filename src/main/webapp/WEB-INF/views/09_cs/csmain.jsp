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
    <link rel="stylesheet" type="text/css" href="../css/csmain.css">
			<!-- css경로 ../ << 넣고 만들기  -->
<!-- javascript -->
    <script src="http://code.jquery.com/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<!-- ajax-helper -->
    <link rel="stylesheet" href="../plugins/ajax/ajax_helper.css" />
    <script src="../plugins/ajax/ajax_helper.js"></script>
    <style type="text/css">

    </style>
</head>

<body>
	<%@ include file="../01_home/header.jsp" %>
<!-- 본문영역 -->
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
<!-- csmain 영역 -->
    <div class="container">
        <br>
        <div id="csmain_nav">홈 > 고객 서비스</div>
        <hr>
            <section class="csmain_center">
                <div id="csmain_title"><h1>laporte 고객지원센터</h1></div>
                <br>
                <div id="csmain_title_content">
                    궁금한 점이 있으세요?<br>
                    전화, 채팅, 이메일 등 다양한 방법으로 laporte에 대한 궁금한 점을 문의해주세요.<br>
                    laporte 배송, 택배 서비스를 이용하셨다면 배송 조회도 가능합니다.<br>
                </div>
                <div class="csmain_inquire_box">
                    <div class="csmain_tabs">
                        <ul>
                            <li id="csmain_cell_click" class="csmain_button">
                                <a href="#csmain_cell_click">
                                    <span id="csmain_cell_icon"></span>
                                    <span id="csmain_cell_text">전화문의</span>
                                </a>
                            </li>
                            <li id="csmain_email_click" class="csmain_button">
                                <a href="#csmain_email_click">
                                    <span id="csmain_email_tap_icon"></span>
                                    <span id="csmain_email_tap_text">이메일 문의</span>
                               </a>
                            </li>
                            <li id="csmain_ship_click" class="csmain_button">
                                <a href="#csmain_ship_click">
                                    <span id="csmain_ship_tap_icon"></span>
                                    <span id="csmain_ship_tap_text">배송 조회</span>
                                </a>
                            </li>
                        </ul>
                        <div class="csmain_section1">
                            <div id="csmain_cell_icon2"></div>
                            <div id="csmain_title_cell"><h3>전화 문의</h3>
                            <div>고객지원센터 Tel 0000-0000<br>
                                월요일~일요일 오전 10시 ~ 오후 10시
                            </div>
                            <p>
                                빠른 해결책을 원하는 경우에는 자주 묻는 질문을 확인하세요.<br>
                                자주 묻는 질문에 원하는 내용이 없는 경우에는 이메일 문의를 통해 e-메일을 보내주시면 최대한 빨리 답변해 드리겠습니다.
                            </p>
                            <p>
                                제품 교환환불 문의 시 미리 제품사진을 찍어 국번 없이 1111-1111(고객지원센터)에 문자로 보내주세요. 그 후 연락 주시면 빠른 상담이 가능합니다.
                            </p>
                        </div>
                        <hr>
                    </div>
                    <div class="csmain_section2">
                        <div id="csmain_email_icon2"></div>
                        <div id="csmain_title_email"><h3>이메일 문의</h3>
                            <p>
                                자주 묻는 질문에 원하는 내용이 없는 경우에는 아래의 양식을 이용하여 e-메일을 보내주시면 최대한 빨리 답변해드리겠습니다.<br>
                                메일 내용에 욕설이나 비속어가 포함되어 있으면 laporte로 전달되지 않습니다.
                            </p>
                            <p id="csmain_email_red">
                                재고, 교환환불, 배송관련 문의는 이케아 고객지원센터(0000-0000)로 전화나 채팅 상담을 통해서만 가능합니다.<br>
                                문의 시 성함, 연락처, 구매정보(영수증/주문번호)를 준비해주세요.
                            </p>
                        </div>
                        <form class="csmain_email_section">
                            <div id="csmain_user_icon"></div>
                            <div class="csmain_user">
                                <input type="text" name="username" id="username" class="form-control2" placeholder="이름">
                            </div>
                            <div id="csmain_email_icon"></div>
                            <div class="csmain_email">
                                <input type="text" name="email" id="email" class="form-control2" placeholder="이메일 주소 입력">
                            </div>
                            <div id="csmain_topic_icon"></div>
                            <div class="csmain_topic">
                                <select id="csmain_category">
                                    <option>카테고리 선택</option>
                                    <option>온라인주문</option>
                                    <option>교환환불</option>
                                    <option>laporte서비스</option>
                                    <option>제품정보</option>
                                    <option>laporte웹사이트 이용약관</option>

                                    </select>
                            </div>
                            <div id="csmain_file_icon"></div>
                            <div class="csmain_file">
                                <label for="csmain_file_choose">5MB 이하 첨부 가능</label>
                                <input type="file" id="csmain_file_choose" class="form-control2">
                            </div>
                            <div id="csmain_message_icon"></div>
                            <div class="csmain_message">
                                <textarea id="csmain_message_content" placeholder="문의 내용을 입력해주세요."></textarea>
                            </div>
                            <span id="csmain_email_send">이메일 보내기</span>
                        </form>
                    </div>
                    <hr>
                    <div class="csmain_section3">
                        <div id="csmain_track_icon2"></div>
                        <div id="csmain_title_track"><h3>배송 조회</h3>
                            <p>
                                구입한 제품의 배송 상태가 궁금하세요?<br>
                                아래 "주문 내역 보기" 버튼을 눌러 배송상태를 확인하세요.<br>
                                * 매장에서 구매한 주문서는 온라인에서 주문 취소가 불가능합니다.
                            </p>
                        </div>
                        <span id="csmain_order_list"><a href="#">주문 내역 보기</a></div>
                        <span id="csmain_order_cancel"><a href="#">주문 취소</a></div>
                    </div>
                </div>
            </section>
    </div>
<!-- 하단영역 -->
<%@ include file="../01_home/footer.jsp" %>

    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="../js/home.js"></script>
    <script type="text/javascript">

      $(document).ready(function() {
		$("header").load("../01_home/header.html");
		$("footer").load("../01_home/footer.html");
    	});
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
        /* ---------------------- csmain --------------------------- */
            $(document).ready(function(){

            $('#csmain_cell_click').click(function(){

            var offset = $('.csmain_section1').offset(); //선택한 태그의 위치를 반환

                //animate()메서드를 이용해서 선택한 태그의 스크롤 위치를 지정해서 0.4초 동안 부드럽게 해당 위치로 이동함

            $('html').animate({scrollTop : offset.top}, 400);

        });

    });

            $(document).ready(function(){

            $('#csmain_email_click').click(function(){

            var offset = $('.csmain_section2').offset(); //선택한 태그의 위치를 반환

                //animate()메서드를 이용해서 선택한 태그의 스크롤 위치를 지정해서 0.4초 동안 부드럽게 해당 위치로 이동함

            $('html').animate({scrollTop : offset.top}, 400);

        });

    });


            $(document).ready(function(){

            $('#csmain_ship_click').click(function(){

            var offset = $('.csmain_section3').offset(); //선택한 태그의 위치를 반환

                //animate()메서드를 이용해서 선택한 태그의 스크롤 위치를 지정해서 0.4초 동안 부드럽게 해당 위치로 이동함

            $('html').animate({scrollTop : offset.top}, 400);

        });

    });

		/* ---------------------- footer --------------------------- */
    	/** 게시글의 제목을 클릭한 경우 호출되는 이벤트 정의 */
        $(".ft_collapse a").click(function(e) {
            // 링크의 기본 동작(페이지 이동) 방지
            e.preventDefault();
            // 클릭한 요소의 href 속성을 가져온다 --> 내용영역의 id
            var target = $(this).attr('href');
            // 가져온 내용영역의 id를 화면에 표시한다.
            $(target).slideToggle(100);
            // 내용영역(.content)중에서
            // 클릭한 요소가 지정한 항목만 제외(not($(target)))
            // 하고 화면에서 숨긴다.
            $(".content").not($(target)).slideUp(100);
        });
		/* ----------------- 함수 입력시 여기지우고부터 작성 시작 ------------------ */
    });
    </script>
  </body>
</html>