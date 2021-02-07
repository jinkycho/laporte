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
<title>la porte</title>

<!-- font stylesheet -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"
	rel="stylesheet">

<!-- stylesheet -->
<link
	href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/common.css">
<link rel="stylesheet" type="text/css" href="../assets/css/join2.css">

<!-- javascript  -->
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

</head>

<body>

	<div id="join">
		<div class="header">
			<a href="${pageContext.request.contextPath}/02_mypage/join.do"> <span
				id="d_icon_l">이전으로 가기</span>
			</a> <br>
			<p>로그인에 사용할</p>
			<p>아이디와 비밀번호를 입력해주세요.</p>
		</div>

		<form id="myform" class="userinfo_insert">
		
			<div class="input_box">
			<label for='id' id="join_id" class='input_label placeholder_event'>아이디</label> 
			<input type='text' name='user_id'
				id='join_id_input' class='form-control label_event' />
			<button id="id_dbl_check" type="submit">아이디중복확인</button>
			</div>
			
			<div class="input_box">
			<label for='user_name' class='input_label placeholder_event'>이름</label> 
			<input type='text' name='user_name' id='user_name' class='form-control label_event' />
			</div>
			
			
			<label for='birthdate'>생년월일</label> 
			<input type='date' name='birthdate' id='birthdate' class='form-control'/>
		
			
			<div class="input_box">
			<label for='phoneno' class='input_label placeholder_event'>연락처</label> 
			<input type='text' name='phoneno' id='phoneno' class='form-control label_event' />
			</div>
			
			<label for='gender'>성별</label> 
			<select>
				<option value='M'>남</option>
				<option value='F'>여</option>
				<option value='N'>응답거부</option>
			</select>
			
			<label for='address'>주소</label> 
			<div id="contact_address_box">
				<form role="form">
					<div class="form-group">
						<button type="button" class="btn btn-primary" id="find_pc"
							onclick="sample3_execDaumPostcode()">우편번호 찾기</button>
						<div id="daum_pc_find">
							<div id="wrap"
								style="display: none; border: 1px solid; width: 500px; height: 300px; margin: 5px 0; position: relative">
								<img src="//t1.daumcdn.net/postcode/resource/images/close.png"
									id="btnFoldWrap"
									style="cursor: pointer; position: absolute; right: 0px; top: -1px; z-index: 1"
									onclick="foldDaumPostcode()" alt="접기 버튼">
							</div>
						</div>

						<div class="address_input_box">
							<label for="add_address" class="add_address_label">도로명 주소</label>
							<input type="text" id="add_address" name="add_address"
								class="form-control address_label_event" disabled>
						</div>

						<div class="address_input_box">
							<label for="add_address_detail" class="add_address_label">상세
								주소</label> <input type="text" id="add_address_detail"
								name="add_address_detail"
								class="form-control address_label_event">
						</div>

						<div class="address_input_box">
							<label for="add_post" class="add_address_label">우편번호</label> <input
								type="text" id="add_post" name="add_post"
								class="form-control address_label_eventl" disabled>
						</div>

						<button type="reset" class="btn_reset">다시 입력하기</button>

					</div>
			</div>

				<div class="input_box">
				<label for='password' id="join_password" class='input_label placeholder_event'>비밀번호</label> 
				<input
					id='join_password_input' class='form-control pw_input label_event' type='password' name='password'/>
				</div>
				
				<li>
					<span id="join_english">영문포함 ✓</span> 
					<span id="join_num">숫자포함 ✓</span> 
					<span id="join_letter"> 특수문자포함 ✓</span> 
					<span id="join_passwordlength"> 8-20자 이내 ✓</span>
				</li>
				
				<div class="input_box">
				<label for='passwordcheck' id="password_check" class='input_label placeholder_event'>비밀번호 확인</label> <input
					type='password' name='password' id="join_password_check_input" class='form-control pw_input label_event'/>
					<span id="join_password_same">비밀번호 일치 ✓</span>
				</div>
				
					<button id="join_btn" type="submit"
						onclick="location.href='${pageContext.request.contextPath}/home.do'">가입하기</button>
		</form>


		<div class="footer">
			<h6>
				laporte.kr-<a href="#">개인정보처리방침</a>
			</h6>
		</div>
	</div>

	<script
		src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script type="text/javascript">
		$(function() {

			//비밀번호 이름 시 확인 코멘트 컬러 변경
			$('#join_password_input').keyup(function(e) {
				e.preventDefault;

				var pw = $('#join_password_input').val();
				var num = pw.search(/[0-9]/g);
				var eng = pw.search(/[a-z]/ig);
				var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);

				if (eng > -1) {
					$('#join_english').css("color", "#437fb3");
				} else {
					$('#join_english').css("color", "#d5d5d5");
				}

				if (num > -1) {
					$('#join_num').css("color", "#437fb3");
				} else {
					$('#join_num').css("color", "#d5d5d5");
				}

				if (spe > -1) {
					$('#join_letter').css("color", "#437fb3");
				} else {
					$('#join_letter').css("color", "#d5d5d5");
				}

				if (pw.length > 7 && pw.length < 21) {
					$('#join_passwordlength').css("color", "#437fb3");
				} else {
					$('#join_passwordlength').css("color", "#d5d5d5");
				}

			});

			//비밀번호 입력값 동일한지 확인
			$('#join_password_check_input').keyup(function(e) {
				e.preventDefault;

				var pwInput = $('#join_password_input').val();
				var pwInputCheck = $('#join_password_check_input').val();

				if (pwInput == pwInputCheck) {
					$('#join_password_same').css("color", "#437fb3");
				} else {
					$('#join_password_same').css("color", "#d5d5d5");
				}

			});
			//입력창에 포커스 이벤트가 일어나면 placeholder이벤트 없애기
			$(".label_event").focus(function() {
				var label_event = $(this).parent(".input_box").find('.input_label');
				$(label_event).removeClass('placeholder_event');
			});

			//입력창 포커스를 벗어났을때 placeholder 이벤트효과 적용 - 입력값이 없는경우에만.
			$(".label_event").focusout(function() {
				var value=$(this).val();
				if(!value){
					var label_event = $(this).parent(".input_box").find('.input_label');
					$(label_event).addClass('placeholder_event');
				}
			});
		});

		/*-------------------------우편번호 ------------------------------------*/
		// 우편번호 찾기 화면을 넣을 element
		// 우편번호 찾기 찾기 화면을 넣을 element
		var element_wrap = document.getElementById('wrap');

		function foldDaumPostcode() {
			// iframe을 넣은 element를 안보이게 한다.
			element_wrap.style.display = 'none';
		}

		function sample3_execDaumPostcode() {
			// 현재 scroll 위치를 저장해놓는다.
			var currentScroll = Math.max(document.body.scrollTop,
					document.documentElement.scrollTop);
			new daum.Postcode({
				oncomplete : function(data) {
					// 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

					// 각 주소의 노출 규칙에 따라 주소를 조합한다.
					// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					var addr = ''; // 주소 변수
					var extraAddr = ''; // 참고항목 변수

					//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
					if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
						addr = data.roadAddress;
					} else { // 사용자가 지번 주소를 선택했을 경우(J)
						addr = data.jibunAddress;
					}

					// 우편번호와 주소 정보를 해당 필드에 넣는다.
					document.getElementById('add_post').value = data.zonecode;
					document.getElementById("add_address").value = addr;
					// 커서를 상세주소 필드로 이동한다.
					document.getElementById("add_address_detail").focus();

					// iframe을 넣은 element를 안보이게 한다.
					// (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
					element_wrap.style.display = 'none';

					// 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
					document.body.scrollTop = currentScroll;
				},
				// 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
				onresize : function(size) {
					element_wrap.style.height = size.height + 'px';
				},
				width : '100%',
				height : '100%'
			}).embed(element_wrap);

			// iframe을 넣은 element를 보이게 한다.
			element_wrap.style.display = 'block';
		}
		
	
	</script>
</body>
</html>