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
<link rel="stylesheet" type="text/css" href="../assets/css/common.css">
<link rel="stylesheet" type="text/css" href="../assets/css/review_write.css">
<link rel="stylesheet" type="text/css" href="../assets/css/star.css">

<!-- javascript -->
<script src="http://code.jquery.com/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<!-- ajax-helper -->
<link rel="stylesheet" href="../assets/plugins/ajax/ajax_helper.css" />
<script src="../assets/plugins/ajax/ajax_helper.js"></script>
</head>

<body>
	<%@ include file="../01_home/header.jsp" %>
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
		<!-- 검색 끝 -->

		<!-- 검색제외 본문영역 -->
		<div class="container">
			<div class="review_box">
				<br />
				<h4>상품평 작성하기</h4>
				<br /> <br />
				<div class="scrollRev">
					<div id="text">
						<span>손쉬운 조립</span> <span id="value1" class="value"></span> <span
							id="scroll"> <input type="range" id="myRange1"
							class="slider1 star-input-num" style="width: 130px;" value="5"
							min="0" max="5" step="1" /> <!-- 작동 멈추기 위해 값 조절. 원래 value = "0" min = "0",  max="5", step = "1" -->
							<!-- 작동 움직이기 위해 값 조절. 멈췄을 때  value = "5" min = "", max ="5" step = "6" -->
						</span>
					</div>
				</div>
				<br />

				<div class="scrollRev">
					<div id="text">
						제품 가성비 <span id="value2" class="value"></span> <span id="scroll">
							<input type="range" id="myRange2" class="slider2 star-input-num"
							style="width: 130px;" value="5" min="0" max="5" step="1" /> <!-- 작동 멈추기 위해 값 조절. 원래 value = "0" min = "0",  max="5", step = "1" -->
							<!-- 작동 움직이기 위해 값 조절. 멈췄을 때  value = "5" min = "", max ="5" step = "6" -->
						</span>
					</div>
				</div>
				<br />

				<div class="scrollRev">
					<div id="text">
						제품 품질 <span id="value3" class="value"></span> <span id="scroll2">
							<input type="range" id="myRange3" class="slider3 star-input-num"
							style="width: 130px;" value="5" min="0" max="5" step="1" /> <!-- 작동 멈추기 위해 값 조절. 원래 value = "0" min = "0",  max="5", step = "1" -->
							<!-- 작동 움직이기 위해 값 조절. 멈췄을 때  value = "5" min = "", max ="5" step = "6" -->
						</span>
					</div>
				</div>
				<br />

				<div class="scrollRev">
					<div id="rv_explain">
						제품 외관 <span id="value4" class="value"></span> <span id="scroll2">
							<input type="range" id="myRange4" class="slider4 star-input-num"
							style="width: 130px;" value="5" min="0" max="5" step="1" /> <!-- 작동 멈추기 위해 값 조절. 원래 value = "0" min = "0",  max="5", step = "1" -->
							<!-- 작동 움직이기 위해 값 조절. 멈췄을 때  value = "5" min = "", max ="5" step = "6" -->
						</span>
					</div>
				</div>
				<br />

				<div class="scrollRev">
					<div id="rv_explain">
						제품 기능 <span id="value5" class="value"></span> <span id="scroll2">
							<input type="range" id="myRange5" class="slider5 star-input-num"
							style="width: 130px;" value="5" min="0" max="5" step="1" /> <!-- 작동 멈추기 위해 값 조절. 원래 value = "0" min = "0",  max="5", step = "1" -->
							<!-- 작동 움직이기 위해 값 조절. 멈췄을 때  value = "5" min = "", max ="5" step = "6" -->
						</span>
					</div>
				</div>
				<br /> <br />

				<div class="text">
					<h4>평균별점</h4>
				</div>
				<br />
				<div class="star-input">
					<!--  별모양 반응하도록 하는 것, radio로 체크만들어서 위에 별 이미지 덮어쓰기, 값 바꿔서 작동안하도록 설정, star.js 주석해서 점수안바뀜. -->
					<div class="input">

						<input type="radio" name="star-input" value="1" id="p1"> <label
							for="p1">(1)</label>
						<!-- 원래 바라보는 for에 ID를 값을 각각 입력해야합니다. 원래는 for= "p1" , 그리고 checked 값은 제거해야함.-->
						<!-- 원래 바라보는 for에 ID를 값을 각각 입력해야합니다. 작동 안되게 하려면 for= "p" , 그리고 checked ="checked"  넣어줍니다..-->



						<input type="radio" name="star-input" value="2" id="p2"> <label
							for="p2">(2)</label>
						<!-- 원래 바라보는 for에 ID를 값을 각각 입력해야합니다.  원래는 for= "p2" , 그리고 checked 값은 제거해야함.-->



						<input type="radio" name="star-input" value="3" id="p3"> <label
							for="p3">(3)</label>
						<!-- 원래 바라보는 for에 ID를 값을 각각 입력해야합니다.  원래는 for= "p3" , 그리고 checked 값은 제거해야함.-->



						<input type="radio" name="star-input" value="4" id="p4"> <label
							for="p4">(4)</label>
						<!-- 원래 바라보는 for에 ID를 값을 각각 입력해야합니다.  원래는 for= "p4" , 그리고 checked 값은 제거해야함.-->



						<input type="radio" name="star-input" value="5" id="p5"> <label
							for="p5">(5)</label>
						<!-- 원래 바라보는 for에 ID를 값을 각각 입력해야합니다.  원래는 for= "p5" , 그리고 checked 값은 제거해야함.-->
						<!-- 우측에 점수 바뀌는 js는 아래 star.js를 주석으로 해놔서 작동안합니다. -->

					</div>
					<output for="star-input">
						<!-- <b id="starOutput" value="0"></b> -->
						<p id="starOutput">(0)</p>
					</output>
				</div>
				<br /> <br /> <br />

				<div class="form-group1">
					<div class="textform1">
						<input type="text" class="form-control" id="subject"
							placeholder="제목을 입력해주세요.">
					</div>
				</div>
				<br />
				<div class="form-group2">
					<div class="textform2">
						<textarea id="content" class="form-control" rows="6"
							placeholder="내용을 입력해주세요."></textarea>
					</div>
				</div>
				<br />
				<div class="form-group3">
					<div class="radio">
						<label> <input type="radio" name="optionRadios"
							id="optionRadios1" value="option1" checked>이 제품을 추천합니다.
						</label>
					</div>
					<h5></h5>
					<div class="radio">
						<label> <input type="radio" name="optionRadios"
							id="optionRadios1" value="option1" checked>이 제품을 추천하지
							않습니다.
						</label>
					</div>
				</div>
				<br /> <br /> <br />
				<div class="rw_submit">
					<button id="rw_button" type="submit">작성 완료</button>
				</div>
			</div>
		</div>
	</section>
	<%@ include file="../01_home/footer.jsp" %>
	<script src="../assets/js/input_value_1.js"></script>
	<script src="../assets/js/input_value_2.js"></script>
	<script src="../assets/js/input_value_3.js"></script>
	<script src="../assets/js/input_value_4.js"></script>
	<script src="../assets/js/input_value_5.js"></script>
	<script src="../assets/js/review_star2.js"></script>
	<script src="../assets/js/review_star1.js"></script>
	<script src="../assets/js/review_common.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="../assets/js/home.js"></script>
</body>
</html>