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
    <link rel="stylesheet" type="text/css" href="../assets/css/common.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/join2.css">
    
    <!-- javascript  -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <script src="http://code.jquery.com/jquery.min.js"></script>

</head>

<body>

<div id= "join">
	<div class="header">
		<a href="#">
			<span id="d_icon_l">이전으로 가기</span>
		</a>
        <br>
		 <p>로그인에 사용할</p>
         <p>아이디와 비밀번호를 입력해주세요.</p>
	</div>

    <form id="myform">
        <div id="id_check">
            <label for='id' id="join_id">아이디</label>
            <input type='text' name='id' id='join_id_input' placeholder="  아이디(이메일)입력" />
            <button id="id_dbl_check" type="submit">아이디중복확인</button>
        </div>

        <div class="clearfix">
            <label for='password' id="join_password">비밀번호</label>
            <input id='join_password_input' type='password' name='password' placeholder="  비밀번호 입력" />
           <li>
                <span id="join_english">영문포함 ✓</span>
                <span id="join_num"> 숫자포함 ✓</span>
                <span id="join_letter"> 특수문자포함 ✓</span>
                <span id="join_passwordlength"> 8-20자 이내 ✓</span>
            </li>
        </div>

        <div>
            <label for='passwordcheck' id="password_check"></label>
            <input type='password' name='password' id="join_password_check_input" placeholder="  비밀번호 확인" /><span id="join_password_same"> 비밀번호 일치 ✓</span>
	    </div>
	
		<button id="join_btn" type="submit" onclick="location.href='../01_home/home.html'" >가입하기</button>
    </form>
	
	
	<div class="footer">
		<h5>laporte.kr-<a href="#">개인정보처리방침</a></h5>
	</div>
</div>

<script type="text/javascript">
$(function(){
    $('#join_password_input').keyup(function(e){
		e.preventDefault;

        var pw = $('#join_password_input').val();
        var num = pw.search(/[0-9]/g);
        var eng = pw.search(/[a-z]/ig);
        var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);

       
            if(eng > -1){
                $('#join_english').css("color","#437fb3");
            }else{ $('#join_english').css("color","#d5d5d5");}

        
            if(num > -1){
                $('#join_num').css("color","#437fb3");
            }else{$('#join_num').css("color","#d5d5d5");}
         

            if(spe > -1){
                $('#join_letter').css("color","#437fb3");
            }else{$('#join_letter').css("color","#d5d5d5");}
         
        
            if(pw.length > 7 && pw.length < 21){
                $('#join_passwordlength').css("color","#437fb3");
            }else{$('#join_passwordlength').css("color","#d5d5d5");}
           

        
    });

    $('#join_password_check_input').keyup(function(e){
        e.preventDefault;

        var pwInput = $('#join_password_input').val();
        var pwInputCheck = $('#join_password_check_input').val();

        if(pwInput == pwInputCheck){
            $('#join_password_same').css("color","#437fb3");
        }else{$('#join_password_same').css("color","#d5d5d5");}
    
    });
});

</script>
</body>
</html>