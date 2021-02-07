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
	<title>La porte</title>

	<!-- font stylesheet -->
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
	
	 <!-- stylesheet -->
	<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="assets/css/common.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/login_pwfind.css">
    
    <!-- javascript  -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <script src="http://code.jquery.com/jquery.min.js"></script>
    
	<!-- ajax-helper -->
    <link rel="stylesheet" href="../plugins/ajax/ajax_helper.css" />
    <script src="../plugins/ajax/ajax_helper.js"></script>
</head>

<body>

<div id= "login_pwfind">
	<div class="header">
	<a href="login.html">
		<span id="d_icon_l">이전으로 가기</span>
	</a>
	<h3><b>비밀번호 찾기</b></h3>
	<h5>이메일을 통해 비밀번호를 재설정 해주세요.</h5>
	</div>
	
	<div class="section">
	<form>
	<input id="id_insert" placeholder="이메일">
	<p id="alert_msg">올바른 주소 형식을 입력해주세요.</p>
	</form>
	
	<button id="login_pwfind_btn" type="submit">비밀번호 찾기</button>
	</div>
	
	<div class="footer">
	<h5>laporte.kr-<a href="#">개인정보처리방침</a></h5>
	</div>
</div>


<script type="text/javascript">
	$(function(){
		$('#alert_msg').hide();
		$('#login_pwfind_btn').click(function(e){
			e.preventDefault;
		var emailValue = $('#id_insert').val();
		var emailPattern = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i
		if(!emailPattern.test(emailValue)){
				$('#id_insert').css("border-bottom","2px solid #f64b4b");
				$('#alert_msg').show();
				return false;
		}else{
				alert("전송된 이메일을 통해 비밀번호를 변경하세요.");
		}
		
			
			
		});
	});
</script>
</body>
</html>