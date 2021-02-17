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
    <link rel="stylesheet" href="../assets/css/confirm.css"/>
     <link rel="stylesheet" href="../assets/css/edit.css"/>
      <link rel="stylesheet" href="../assets/dist/css/metallic/zebra_datepicker.css" type="text/css">
			<!-- css경로 ../ << 넣고 만들기  -->
<!-- javascript -->
    <script src="http://code.jquery.com/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<!-- ajax-helper -->
    <link rel="stylesheet" href="../plugins/ajax/ajax_helper.css" />
    <script src="../assets/plugins/ajax/ajax_helper.js"></script>
    <script src="../assets/plugins/handlebars/handlebars-v4.0.11.js"></script>
    <script src="../assets/dist/zebra_datepicker.src.js"></script>
	<script>window.jQuery || document.write('<script src="path/to/jquery-3.5.0.js"><\/script>')</script>
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
<!-- 내용영역 -->
		<div class="confirm_tab">
			<ul class="confirm_tab_ul">
				<li class="confirm_tab_ul_li active">
					<a href="#"class="confirem_tab_ul_li_a">
					예약 확인
					</a>
				</li>
				<li class="confirm_tab_ul_li">
					<a href="#"class="confirem_tab_ul_li_a">
					수정/취소
					</a>
				</li>
			</ul>
		</div>
        <div class="container">
            <div class=confirm>
	
	
		<div class="bookedInformation confirm_wrap">
			<div class="confirm_content">
				<div role="tabpanel" class="tab-pane fade" id="dept"></div>
				<h3 class="confirm_content_h3">예약정보확인</h3>
				<!-- 결과가 출력될 DIV -->
				<div id="result"></div>
			</div>
			<div class="confirm_txt">
				<span class="confirm_txt_icon"></span><p>컨설팅 서비스예약 취소는 예약24시간 전까지만 가능 합니다.</p>
				<span class="confirm_txt_icon"></span><p>컨설팅 서비스예약 수정/취소는 홈페이지 메뉴 및 고객센터를 통해 가능합니다.</p>
			</div>
		
			<div class="confirm_button">
				<a href="#"id="ok1"class="confirm_button_a">취소</a>
				<a href="#"id="ok2"class="confirm_button_a2">예약</a>
			</div>
		</div>
		<div class="bookedInformation editCancel_wrap">
			<div class="confirm_content">
				<div role="tabpanel" class="tab-pane fade" id="dept"></div>
				<h3 class="confirm_content_h32">예약수정/취소</h3>
				<!-- 결과가 출력될 DIV -->
				<div class="resultbox">
				<div id="result2"></div>
				<div class="editbox_input">
                    <span class="input_txt">예약 일자</span>
                    <input id="datepicker" type="text" class="form-control" data-zdp_readonly_element="false">
                </div>
				   <div class="editbox_input">
                      <span class="input_txt">예약 지점</span>
                    <select class="input_default">
                        <option class=editbox_select-box_option>강남점</option>
                        <option class=editbox_select-box_option>광명점</option>
                        <option class=editbox_select-box_option>대구점</option>
                    </select>
                </div>
                
                <div class="editbox_input">
                      <span class="input_txt">예약 시간</span>
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
                <div class="editbox_input">
                     <span class="input_txt">컨설팅 영역</span>
                        <select class="input_default">
                        <option class="area_select">가구</option>
                        <option class="area_select">소파/암체어</option>
                        <option class="area_select">침대</option>
                        <option class="area_select">수납/정리</option>
                        <option class="area_select">주방가구/용품</option>
                        <option class="area_select">조명</option>
                    </select>
                </div>
                <div class="editbox_input">
                      <span class="input_txt">요청 사항</span>
                <input class="input_default_txt" type="text" placeholder="요청사항 적어주세요.">
                </div>
				</div>
			<div class="confirm_txt">
				<span class="confirm_txt_icon"></span><p>컨설팅 서비스예약 취소는 예약24시간 전까지만 가능 합니다.</p>
				<span class="confirm_txt_icon"></span><p>컨설팅 서비스예약 수정/취소는 홈페이지 메뉴 및 고객센터를 통해 가능합니다.</p>
			</div>
		
			<div class="confirm_button">
				<a href="#" id="ok3" class="confirm_button_a">예약 취소</a>
				<a href="#" id="ok4" class="confirm_button_a2">에약 수정</a>
			</div>
			</div>
		</div>
</div>
    	</div>
	</section>
<!-- 하단영역 -->
	<%@ include file="../01_home/footer.jsp" %>

  <script id="dept_item_tmpl" type="text/x-handlebars-template">
		<table class="confirm_table">
			<thead>
  				<tr>
    				<th class="confirm_th"> 예약번호</th>
    				<td class="confirm_td">{{reservNo}}</td>
  				</tr>
			</thead>
			<tbody>
	  			<tr>
    				<th class="confirm_th">예약자</th>
    				<td class="confirm_td">{{reservName}}</td>
  				</tr>
  				<tr>
    				<th class="confirm_th">예약일자</th>
    				<td class="confirm_td">{{reservDate}}</td>
  				</tr>
  				<tr>
    				<th class="confirm_th">예약 시간</th>
    				<td class="confirm_td">{{reservTime}}</td>
 	 			</tr>
  				<tr>
    				<th class="confirm_th">컨설팅 영역</th>
    				<td class="confirm_td">{{reservLoc}}</td>
  				</tr>
  				<tr>
    				<th class="confirm_th">요청 사항</th>
    				<td class="confirm_td">{{reservQuest}}</td>
  				</tr>
			</tbody>
		</table>
</script>
<script id="editCancel_item_tmpl" type="text/x-handlebars-template">
	       <div class="editbox">
            	<div class="editbox_input">
                	<span class="input_txt">예약번호</span>
                	<h4 class="input_txt_h4">{{reservNo}}</h4>
            	</div>
             	<div class="editbox_input">
                <span class="input_txt">예약자</span>
                	<h4 class="input_txt_h4">{{reservName}}</h4>
            	</div>
          </div>
	</script>
    <script type="text/javascript">
	 $(document).on("click","#ok1", function(e) {
			e.preventDefault();
			swal({
				title: "예약확인",
				html:"취소하시겠습니까",
				type:"error",
				showCloseButton:true,
				confirmButtonText:"확인",
				showCancelButton:true,
				cancelButtonText:"취소"
			});
		});
    
	 $(document).on("click","#ok2", function(e) {
			e.preventDefault();
			swal({
				title: "예약확인",
				html:"예약하시겠습니까?",
				type:"success",
				showCloseButton:true,
				confirmButtonText:"확인",
				showCancelButton:true,
				cancelButtonText:"취소"
			});
		});
    
	 $(document).on("click","#ok3", function(e) {
			e.preventDefault();
			swal({
				title: "예약수정",
				html:"취소하시겠습니까",
				type:"error",
				showCloseButton:true,
				confirmButtonText:"확인",
				showCancelButton:true,
				cancelButtonText:"취소"
			});
		});
    
	 $(document).on("click","#ok4", function(e) {
			e.preventDefault();
			swal({
				title: "예약수정 확인",
				html:"수정하시겠습니까?",
				type:"success",
				showCloseButton:true,
				confirmButtonText:"확인",
				showCancelButton:true,
				cancelButtonText:"취소"
			});
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
		/* ----------------- result ------------------ */
		$(function() {
			
			$(window).load(function() {
				$(".editCancel_wrap").hide();
				$("#result").empty(); // 결과가 표시될 #result에 내용 지우기
				var choice = 1234567;	// 사용자 선택값 가져오기
				if (!choice) { // 선택값이 없다면 처리 중단
					return false;
				}
				
				/** Ajax 요청 */
				$.get('../assets/api/dept_item.do', { reservNo: choice }, function(req) {
					// 미리 준비한 HTML틀을 읽어온다.
					var template = Handlebars.compile($("#dept_item_tmpl").html());
					// Ajax를 통해서 읽어온 JSON을 템플릿에 병합한다.
					var html = template(req);
					// #result에 읽어온 내용을 추가한다.
					$("#result").append(html);
				}); // end $.get
			}); // end change
		});
		/* ------------reseult2-------------- */
				$(function() {
			
			$(".confirm_tab_ul li").click(function(){
				$("#result2").empty(); // 결과가 표시될 #result에 내용 지우기
				var choice = 1234567;	// 사용자 선택값 가져오기
				if (!choice) { // 선택값이 없다면 처리 중단
					return false;
				}
				
				/** Ajax 요청 */
				$.get('../api/dept_item.do', { reservNo: choice }, function(req) {
					// 미리 준비한 HTML틀을 읽어온다.
					var template = Handlebars.compile($("#editCancel_item_tmpl").html());
					// Ajax를 통해서 읽어온 JSON을 템플릿에 병합한다.
					var html = template(req);
					// #result에 읽어온 내용을 추가한다.
					$("#result2").append(html);
				}); // end $.get
			}); // end change
		});
    	// 탭 
		$(function(){
			$(".confirm_tab_ul li").click(function(){
				var list = $(this).index();
				$(".confirm_tab_ul li").removeClass("active");
				$(this).addClass("active");
				$(".bookedInformation").hide();
				$(".bookedInformation").eq(list).show();
			});
		});
		//달력
		$(document).ready(function() {
			$('#datepicker').Zebra_DatePicker({
        	direction: [1,14],
        	disabled_dates: ['* * * 0'] 
    		});
		});
		
    });
    </script>
   

<!-- 사용자 정의 스크립트 -->

  </body>
</html>