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
  	<link rel="stylesheet" type="text/css" href=".../assets/css/home.css">
  	<link rel="stylesheet" type="text/css" href="../assets/css/allproduct.css">

<!-- javascript -->
    <script src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
	

<!-- ajax-helper -->
    <link rel="stylesheet" href="../plugins/ajax/ajax_helper.css" />
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
				<li class="category sofa active">소파</li>
				<li class="category bed">침대</li>
				<li class="category acceptance">수납</li>
				<li class="category kitchen">주방</li>
				<li class="category light">조명</li>			
			</ul>
	  	</div>
	  	
	  	<div id="result">
	  	<div class="result_content">
	  	<div class="allproduct_top">
	  		<h3>소파</h3>
		<div class="allproduct_slide">
			
			<ul class="allproduct_slide_ul">
				<li class="allproduct_slide_ul_li"><a href="#"><img src="https://shop.static.ingka.ikea.com/category-images/Category_all-sofas.jpg?imwidth=300"/></a>모든 소파</li>
				<li class="allproduct_slide_ul_li"><a href="#"><img src="https://shop.static.ingka.ikea.com/category-images/Category_fabric-sofas.jpg?imwidth=300"/></a>패브릭 소파</li>
				<li class="allproduct_slide_ul_li"><a href="#"><img src="https://shop.static.ingka.ikea.com/category-images/Category_leather-and-coated-fabric-sofas.jpg?imwidth=300"/></a>천연/인조가죽 소파</li>
				<li class="allproduct_slide_ul_li"><a href="#"><img src="https://shop.static.ingka.ikea.com/category-images/Category_modular-sofas.jpg?imwidth=300"/></a>모듈식소파</li>
				<li class="allproduct_slide_ul_li"><a href="#"><img src="https://shop.static.ingka.ikea.com/category-images/Category_Footstools-and-pouffes.jpg?imwidth=300"/></a>풋스툴/쿠션형스툴</li>
				<li class="allproduct_slide_ul_li"><a href="#"><img src="https://shop.static.ingka.ikea.com/category-images/Category_extra-covers.jpg?imwidth=300"/></a>커버</li>
				<li class="allproduct_slide_ul_li"><a href="#"><img src="https://shop.static.ingka.ikea.com/revamp/sofa-beds_10663.jpg?imwidth=300"/></a>소파베드</li>
			</ul>
		</div>
		</div>
			<div class="allproduct_product">
				<ul class="allproduct_product_ul">
					<li class="allproduct_product_ul_li">
						<input type="checkbox" id="chk_heart1" class="chk_heart" style="display: none;"/>
						<label class="heart" for="chk_heart1"></label>
						<a href="#">
							<img  class="product_img" src="https://www.ikea.com/kr/ko/images/products/angersby-2-seat-sofa-knisa-light-grey__0944427_PE797252_S5.JPG?f=xxs" />
							<span class="sail">더낮은 새로운가격</span>
							<strong class="product_a">ANGERSBY 앙에르스붜</strong>
							<span class="product_txt">2인용 소파</span>
							<span class="sail_money">₩ 169,000</span>
							<span class="money">
								<span class="money_won">₩</span>
								<span class="money_won2">149,000</span>
						    </span>
							<span class="starbox">
								<span class="star"></span>
								<span class="star"></span>
								<span class="star"></span>
								<span class="star"></span>
								<span class="hrefstar"></span>
							</span>
						</a>			
						<a class="addcart"></a>
					</li>
					
					<li class="allproduct_product_ul_li">
						<input type="checkbox" id="chk_heart2" class="chk_heart" style="display: none;"/>
						<label class="heart" for="chk_heart2"></label>
						<a href="#">
							<img  class="product_img" src="https://www.ikea.com/kr/ko/images/products/ektorp-3-seat-sofa-hallarp-beige__0818568_PE774490_S5.JPG?f=xxs" />
						
							<strong class="product_a">EKTORP엑토르프</strong>
							<span class="product_txt">3인용 소파</span>
							
							
							<span class="money">
								<span class="money_won">₩</span>
								<span class="money_won2">449,000</span>
						    </span>
							<span class="starbox">
								<span class="star"></span>
								<span class="star"></span>
								<span class="star"></span>
								<span class="star"></span>
								<span class="hrefstar"></span>
							</span>
						</a>			
						<a class="addcart"></a>
					</li>
					
					<li class="allproduct_product_ul_li">
						<input type="checkbox" id="chk_heart3" class="chk_heart" style="display: none;"/>
						<label class="heart" for="chk_heart3"></label>
						<a href="#">
							<img  class="product_img" src="https://www.ikea.com/kr/ko/images/products/soederhamn-3-seat-section-finnsta-white__0827353_PE713404_S5.JPG?f=xxs" />
							
							<strong class="product_a">SODERHAMN 쇠데르함</strong>
							<span class="product_txt">3인용섹션</span>
							<span class="money">
								<span class="money_won">₩</span>
								<span class="money_won2">630,000</span>
						    </span>
							<span class="starbox">
								<span class="star"></span>
								<span class="star"></span>
								<span class="star"></span>
								<span class="star"></span>
								<span class="hrefstar"></span>
							</span>
						</a>			
						<a class="addcart"></a>
					</li>
					
					<li class="allproduct_product_ul_li">
						<input type="checkbox" id="chk_heart4" class="chk_heart" style="display: none;"/>
						<label class="heart" for="chk_heart4"></label>
						<a href="#">
							<img  class="product_img" src="https://www.ikea.com/kr/ko/images/products/kivik-two-seat-sofa-orrsta-light-grey__0788728_PE763704_S5.JPG?f=xxs" />
							
							<strong class="product_a">KIVIK 쉬비크</strong>
							<span class="product_txt">3인용소파</span>
							
							<span class="money">
								<span class="money_won">₩</span>
								<span class="money_won2">499,000</span>
						    </span>
							<span class="starbox">
								<span class="star"></span>
								<span class="star"></span>
								<span class="star"></span>
								<span class="star"></span>
								<span class="hrefstar"></span>
							</span>
						</a>			
						<a class="addcart"></a>
					</li>
					
					<li class="allproduct_product_ul_li">
						<input type="checkbox" id="chk_heart5" class="chk_heart" style="display: none;"/>
						<label class="heart" for="chk_heart5"></label>
						<a href="#">
							<img  class="product_img" src="https://www.ikea.com/kr/ko/images/products/poaeng-armchair-cushion-knisa-light-beige__0561144_PE662709_S5.JPG?f=xxs" />
						
							<strong class="product_a">POANG 포엥</strong>
							<span class="product_txt">암체어 쿠션</span>
							
							<span class="money">
								<span class="money_won">₩</span>
								<span class="money_won2">29,900</span>
						    </span>
							<span class="starbox">
								<span class="star"></span>
								<span class="star"></span>
								<span class="star"></span>
								<span class="star"></span>
								<span class="hrefstar"></span>
							</span>
						</a>			
						<a class="addcart"></a>
					</li>
					
					<li class="allproduct_product_ul_li">
						<input type="checkbox" id="chk_heart6" class="chk_heart" style="display: none;"/>
						<label class="heart" for="chk_heart6"></label>
						<a href="#">
							<img  class="product_img" src="https://www.ikea.com/kr/ko/images/products/stocksund-3-seat-sofa-nolhaga-dark-green-black-wood__0825514_PE688267_S5.JPG?f=xxs" />
							
							<strong class="product_a">STOCKSUND 스톡순드</strong>
							<span class="product_txt">3인용 소파</span>
		
							<span class="money">
								<span class="money_won">₩</span>
								<span class="money_won2">699,000</span>
						    </span>
							<span class="starbox">
								<span class="star"></span>
								<span class="star"></span>
								<span class="star"></span>
								<span class="star"></span>
								<span class="nullstar"></span>
							</span>
						</a>			
						<a class="addcart"></a>
					</li>
					<!-- 구분선  -->
				</ul>
			</div> <!-- //allproduct_product -->
			</div>
			
		</div><!-- //result -->
		<a href="#"class="moveup">맨 위로 이동</a>
	</div>
	<%@ include file="../01_home/footer.jsp" %>
	<script src="../js/home.js"></script>
	<script src="../plugins/toTop/totop.min.js"></script>
	<script src="../plugins/sweetalert/sweetalert2.all.min.js"></script>
	 <script type="text/javascript">
	 
	 $('.moveup').tottTop({
			scrollTop:0
		});
	 
			$(document).ready(function() {
				$("header").load("../01_home/header.html");
				$("footer").load("../01_home/footer.html");
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
			 
			 
				$(".category ").click(function(){
					var list = $(this).index();
					$(".category ").removeClass("active");
					$(this).addClass("active");
					
				});
				
				$(".sofa").click(function(e) {
	    			$.ajax({
	    				/** ajax 기본 옵션 */
	    				cache: false,			 // 캐쉬 사용 금지 처리
	    				url: '../assets/api/sofpt.html',// 읽어들일 파일의 경로
	    				method: 'get',			 // 통신방법 (get(기본값), post)
	    				data: {},				 // 접속대상에게 전달할 파라미터
	    				dataType: 'html',		 // 읽어올 내용 형식 (html,xml,json)
	    				timeout: 30000,			 // 타임아웃 (30초)

	    				// 읽어온 내용을 처리하기 위한 함수
	    				success: function(req) {
	    					//result에 이미 존재 하는 갤러리 삭제
	    					$("#result").empty();
	    					// 준비된 요소에게 읽어온 내용을 출력한다.
	    					$("#result").append(req);
	    				}
	    			}); //end $.ajax
	    		}); // end click
	    		

				$(".bed").click(function(e) {
	    			$.ajax({
	    				/** ajax 기본 옵션 */
	    				cache: false,			 // 캐쉬 사용 금지 처리
	    				url: '../assets/api/bedpt.html',// 읽어들일 파일의 경로
	    				method: 'get',			 // 통신방법 (get(기본값), post)
	    				data: {},				 // 접속대상에게 전달할 파라미터
	    				dataType: 'html',		 // 읽어올 내용 형식 (html,xml,json)
	    				timeout: 30000,			 // 타임아웃 (30초)

	    				// 읽어온 내용을 처리하기 위한 함수
	    				success: function(req) {
	    					//result에 이미 존재 하는 갤러리 삭제
	    					$("#result").empty();
	    					// 준비된 요소에게 읽어온 내용을 출력한다.
	    					$("#result").append(req);
	    				}
	    			}); //end $.ajax
	    		}); // end click
	    		

				$(".acceptance").click(function(e) {
	    			$.ajax({
	    				/** ajax 기본 옵션 */
	    				cache: false,			 // 캐쉬 사용 금지 처리
	    				url: '../assets/api/accpt.html',// 읽어들일 파일의 경로
	    				method: 'get',			 // 통신방법 (get(기본값), post)
	    				data: {},				 // 접속대상에게 전달할 파라미터
	    				dataType: 'html',		 // 읽어올 내용 형식 (html,xml,json)
	    				timeout: 30000,			 // 타임아웃 (30초)

	    				// 읽어온 내용을 처리하기 위한 함수
	    				success: function(req) {
	    					//result에 이미 존재 하는 갤러리 삭제
	    					$("#result").empty();
	    					// 준비된 요소에게 읽어온 내용을 출력한다.
	    					$("#result").append(req);
	    				}
	    			}); //end $.ajax
	    		}); // end click
	    		

		

				$(".kitchen").click(function(e) {
	    			$.ajax({
	    				/** ajax 기본 옵션 */
	    				cache: false,			 // 캐쉬 사용 금지 처리
	    				url: '../assets/api/kitpt.html',// 읽어들일 파일의 경로
	    				method: 'get',			 // 통신방법 (get(기본값), post)
	    				data: {},				 // 접속대상에게 전달할 파라미터
	    				dataType: 'html',		 // 읽어올 내용 형식 (html,xml,json)
	    				timeout: 30000,			 // 타임아웃 (30초)

	    				// 읽어온 내용을 처리하기 위한 함수
	    				success: function(req) {
	    					//result에 이미 존재 하는 갤러리 삭제
	    					$("#result").empty();
	    					// 준비된 요소에게 읽어온 내용을 출력한다.
	    					$("#result").append(req);
	    				}
	    			}); //end $.ajax
	    		}); // end click
	    		

				$(".light").click(function(e) {
	    			$.ajax({
	    				/** ajax 기본 옵션 */
	    				cache: false,			 // 캐쉬 사용 금지 처리
	    				url: '../assets/api/ligpt.html',// 읽어들일 파일의 경로
	    				method: 'get',			 // 통신방법 (get(기본값), post)
	    				data: {},				 // 접속대상에게 전달할 파라미터
	    				dataType: 'html',		 // 읽어올 내용 형식 (html,xml,json)
	    				timeout: 30000,			 // 타임아웃 (30초)

	    				// 읽어온 내용을 처리하기 위한 함수
	    				success: function(req) {
	    					//result에 이미 존재 하는 갤러리 삭제
	    					$("#result").empty();
	    					// 준비된 요소에게 읽어온 내용을 출력한다.
	    					$("#result").append(req);
	    				}
	    			}); //end $.ajax
	    		}); // end click
	    		

	
	</script>
</body>
</html>