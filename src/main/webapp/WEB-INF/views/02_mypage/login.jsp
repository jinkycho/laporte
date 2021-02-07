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
	<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="../assets/css/login.css">
    
    <!-- javascript  -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <script src="http://code.jquery.com/jquery.min.js"></script>
    
	<!-- ajax-helper -->
    <link rel="stylesheet" href="../assets/plugins/ajax/ajax_helper.css" />
	<script src="../assets/plugins/ajax/ajax_helper.js"></script>
	

</head>

<body>

<div id= "login">
	<div class="header">
		<a href="${pageContext.request.contextPath}/home.do">
			<span id="d_icon_l">이전으로 가기</span>
		</a>
		<h3><b>지금 la porte로 로그인하세요!</b></h3>
		<h5>휴대폰 번호를 인증하시면 해당 번호로</h5>
		<h5>간편 로그인이 가능해집니다.</h5>
	</div>
	
	<div class="section">
	
	<form id="login-form">
		<input id="id_insert" name="id_insert" type="text" placeholder="이메일 또는 휴대폰 번호" />
		
		<div>
		<input id="pw_insert" name="pw_insert" type="password" placeholder="비밀번호를 입력하세요"/>
			<a id= "showPassword" href="#">
               <span id="pw_hide_icon">비밀번호숨기기</span>
               <span id="pw_show_icon">비밀번호보이기</span>
			</a>
		</div>
		
		
		<a id="pw_find" href="${pageContext.request.contextPath}/02_mypage/login_pwfind.do" class="clearfix">비밀번호 찾기</a>

		<button id="login_btn" type="submit">로그인</button>
		<button id="join_btn" type="button" onclick="location.href='${pageContext.request.contextPath}/02_mypage/join.do'">회원가입</button>
	
	</form>
	</div>
	
	<div class="footer">
		<h5>laporte.kr-<a href="#">개인정보처리방침</a></h5>
	</div>
</div>



<script type="text/javascript">

//자바스크립트가 로딩됐는지 확인
$(document).ready(function(){
	$("#pw_show_icon").hide()

  // showPassword 아이콘 클릭 이벤트 정의
  $('#showPassword').on('click', function(){

    // 패스워드 input에서 값을 가져옴
    var passwordField = $('#pw_insert');

    // 현재 패스워드 타입이 text인지 password인지 가져욤
    var passwordFieldType = passwordField.attr('type');

    // 현재 입력값이 password인 경우
    if(passwordFieldType == 'password')
    {
        // input type을 text로 바꿈
        passwordField.attr('type', 'text');

        //password 가리기 아이콘 숨기고 password보이기 아이콘 보여주기
        $("#pw_hide_icon").hide()
        $("#pw_show_icon").show()
    } else {
        // input type이 password가 아닐경우 password로 변경
        passwordField.attr('type', 'password');

        // password보여주기 아이콘 숨기고, password숨기기 아이콘 보여주기
        $("#pw_show_icon").hide()
        $("#pw_hide_icon").show()
    }
  });
});

		$("#login-form").submit(function(e) {
			e.preventDefault();

		var uid = $("#id_insert").val();
		var upw = $("#pw_insert").val();

		$.post('../api/login_ok.do', {
			id_insert: uid,
			pw_insert: upw
		}, function(json) {
			// 결과값이 로그인 실패를 의미할 경우
			if (json.result == "FAIL") {
				alert("로그인에 실패했습니다. 아이디와 비밀번호를 확인하세요.");
				uid.val("");
				upw.val("");
				uid.focus();
				return false;
			}

			alert("안녕하세요. " + uid + "님");
			});
		});

        
</script>
</body>
</html>