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
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<title>la porte</title>

	<link rel="preconnect" href="https://fonts.gstatic.com">
<!-- stylesheet -->
	<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
  
  	<link rel="stylesheet" type="text/css" href="../assets/css/common.css">
  	<link rel="stylesheet" type="text/css" href="../assets/css/home.css">
  	<link rel="stylesheet" type="text/css" href="../assets/css/allproduct.css">

<!-- javascript -->
    <script src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
	

<!-- ajax-helper -->
    <link rel="stylesheet" href="../assets/plugins/ajax/ajax_helper.css" />
    <script src="../assets/plugins/ajax/ajax_helper.js"></script>



</head>

<body>
<%@ include file="../01_home/header.jsp" %>
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
	<div class="allproduct">
	  	<div class="ul_wrap">
			<ul class="allproduct_category">
				<c:forEach var="item" items="${category1}" varStatus="status">
					<li class="category <c:if test="${item.catno1==input.catno1}">active</c:if>">
						<a href="${pageContext.request.contextPath}/03_detail/allproduct2.do?catno1=${item.catno1}">${item.catname1}</a></li>
				</c:forEach>
			</ul>
	  	</div>
	  	
	  	<div id="result">
	  	<div class="result_content">
	  	<div class="allproduct_top">
	  	<c:if test="${input.catno1==101}"><h3>소파/암체어</h3></c:if>
	  	<c:if test="${input.catno1==102}"><h3>침대</h3></c:if>
	  	<c:if test="${input.catno1==103}"><h3>수납/정리</h3></c:if>
	  	<c:if test="${input.catno1==104}"><h3>주방가/용품</h3></c:if>
	  	<c:if test="${input.catno1==105}"><h3>조명</h3></c:if>
		<div class="allproduct_slide">
			
			<ul class="allproduct_slide_ul category2" >
				<c:forEach var="item2" items="${category2}" varStatus="status">
					<c:if test="${item2.catno1==input.catno1}">
					<li class="category"><a href="${pageContext.request.contextPath}/03_detail/allproduct2.do?catno1=${item2.catno1}&catno2=${item2.catno2}">${item2.catname2}</a></li>
					</c:if>
				</c:forEach>
			</ul>
		</div>
		</div>
			<div class="allproduct_product">
				<ul class="allproduct_product_ul">
				<c:forEach var="proditem" items="${output}" varStatus="status">
					<c:url  value="/03_detail/detail.do" var="viewUrl">
						<c:param name="prodno" value="${proditem.prodno}"/>
					</c:url>
					
					<c:set var="prodno" value="${proditem.prodno}"/>
					<li class="allproduct_product_ul_li">
						<input type="checkbox" id="${proditem.prodno}" class="chk_heart" style="display: none;"/>
						<label class="heart" for="${proditem.prodno}"></label>
						<a href="${viewUrl}">
							<img  class="product_img" src="${proditem.fileUrl}" />
							
							
							<c:if test="${fn:contains(proditem,'세일')}">
							<span class="sail">더낮은 새로운가격</span>
							</c:if>
							<c:if test="${fn:contains(proditem,'신제품')}">
							<span class="new">NEW</span>
							</c:if>
							<strong class="product_a">${proditem.name}</strong>
							<c:if test="${proditem.saleprice!=0}">
							<span class="sail_money">${proditem.saleprice}</span>
							</c:if>
							
							<span class="money <c:if test="${fn:contains(proditem,'인기')}">home_item_mark</c:if>">
								<span class="money_won">₩</span>
								<span class="money_won2 ">${proditem.price}</span>
						    </span>
						
							
							
						</a>			
						<a class="addcart"></a>
					</li>
				</c:forEach>

					<!-- 구분선  -->
				</ul>
			</div> <!-- //allproduct_product -->
			</div>
			
		</div><!-- //result -->
		<a href="#"class="moveup">맨 위로 이동</a>
	</div>
	<%@ include file="../01_home/footer.jsp" %>
	<script src="../assets/js/home.js"></script>
	<script src="../assets/plugins/sweetalert/sweetalert2.all.min.js"></script>
	<script src="../assets/plugins/toTop/totop.min.js"></script>
	 <script type="text/javascript">
	 
	 $('.moveup').tottTop({
			scrollTop:0
		});
	 
			

			$(".chk_heart").change(function(e) {
				
				if($(".chk_heart").is(":checked") == true){
					swal('성공', '위시리스트에 추가 되었습니다.', 'success');
				}else{
					swal('취소', '위시리스트에서 삭제 되었습니다.', 'error');
				}
			});
		
			 
			 $(document).on("click",".addcart", function(e) {
					e.preventDefault();
					swal({
						title: "장바구니추가",
						html:"추가하시겠습니까?",
						type:"info",
						showCloseButton:true,
						confirmButtonText:"확인",
						showCancelButton:true,
						cancelButtonText:"취소"
					});
				});
			 
			 $(document).on()
				
	    		
	
	</script>
</body>
</html>