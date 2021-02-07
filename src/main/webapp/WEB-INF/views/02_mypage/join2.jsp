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
		<a href="${pageContext.request.contextPath}/02_mypage/join.do">
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

	<div id="contact_address_box">
									<form role="form">
										<div class="form-group">
											<button type="button" class="btn btn-primary" id="find_pc" onclick="sample3_execDaumPostcode()">우편번호 찾기</button>
											<div id="daum_pc_find">
												<div id="wrap" style="display:none;border:1px solid;width:500px;height:300px;margin:5px 0;position:relative">
													<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnFoldWrap" style="cursor:pointer;position:absolute;right:0px;top:-1px;z-index:1" onclick="foldDaumPostcode()" alt="접기 버튼">
												</div>
											</div>

											<div class="address_input_box">
												<label for="edit_address" class="edit_address_label">도로명 주소</label>
												<input type="text" id="edit_address" name="edit_address" class="form-control address_label_event" disabled>
											</div>
											
											<div class="address_input_box">
												<label for="edit_address_detail" class="edit_address_label">상세 주소</label>
												<input type="text" id="edit_address_detail" name="edit_address_detail" class="form-control address_label_event">
											</div>
											
											<div class="address_input_box">
												<label for="edit_post" class="edit_address_label">우편번호</label>
												<input type="text" id="edit_post" name="edit_post" class="form-control address_label_eventl" disabled>
											</div>
											
											<button type="reset" class="btn btn-default edit_btn_cancel">취소</button>
											<button type="submit" class="btn btn-primary edit_btn_save contact_alter_save">저장</button>
										</div>
									</form>
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
	
		<button id="join_btn" type="submit" onclick="location.href='${pageContext.request.contextPath}/home.do'" >가입하기</button>
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
var currentScroll = Math.max(document.body.scrollTop, document.documentElement.scrollTop);
new daum.Postcode({
	oncomplete: function(data) {
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
		document.getElementById('edit_post').value = data.zonecode;
		document.getElementById("edit_address").value = addr;
		// 커서를 상세주소 필드로 이동한다.
		document.getElementById("edit_address_detail").focus();

		// iframe을 넣은 element를 안보이게 한다.
		// (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
		element_wrap.style.display = 'none';

		// 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
		document.body.scrollTop = currentScroll;
	},
	// 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
	onresize : function(size) {
		element_wrap.style.height = size.height+'px';
	},
	width : '100%',
	height : '100%'
}).embed(element_wrap);

// iframe을 넣은 element를 보이게 한다.
element_wrap.style.display = 'block';
}
});

</script>
</body>
</html>