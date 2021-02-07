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
				<li class="category sofa ">소파</li>
				<li class="category bed active">침대</li>
				<li class="category acceptance">수납</li>
				<li class="category kitchen">주방</li>
				<li class="category light">조명</li>			
			</ul>
	  	</div>
	  	
	  	<div id="result">
	  	<div class="result_content">
	  	<div class="allproduct_top">
	  		<h3>침대</h3>
		<div class="allproduct_slide">
			
			<ul class="allproduct_slide_ul">
				<li class="allproduct_slide_ul_li"><a href="#"><img src="https://shop.static.ingka.ikea.com/revamp/double-beds_16284.jpg?imwidth=300"/></a>더블침대</li>
				<li class="allproduct_slide_ul_li"><a href="#"><img src="https://shop.static.ingka.ikea.com/revamp/single-beds_16285.jpg?imwidth=300"/></a>싱글침대</li>
				<li class="allproduct_slide_ul_li"><a href="#"><img src="https://shop.static.ingka.ikea.com/revamp/beds-with-storage_25205.jpg?imwidth=300"/></a>수납형침대</li>
				<li class="allproduct_slide_ul_li"><a href="#"><img src="https://shop.static.ingka.ikea.com/revamp/cots_45781.jpg?imwidth=300"/></a>유아용침대</li>
				<li class="allproduct_slide_ul_li"><a href="#"><img src="https://shop.static.ingka.ikea.com/revamp/guest-beds-and-day-beds_19037.jpg?imwidth=300"/></a>간이침대</li>
				<li class="allproduct_slide_ul_li"><a href="#"><img src="https://shop.static.ingka.ikea.com/revamp/left-beds-and-bunk-beds_19039.jpg?imwidth=300"/></a>로프트2층침대</li>
			</ul>
		</div>
		</div>
			<div class="allproduct_product">
				<ul class="allproduct_product_ul">
					<li class="allproduct_product_ul_li">
						<input type="checkbox" id="chk_heart1" class="chk_heart" style="display: none;"/>
						<label class="heart" for="chk_heart1"></label>
						<a href="#">
							<img  class="product_img" src="https://www.ikea.com/kr/ko/images/products/nordli-bed-frame-with-storage-white__0860293_PE649419_S5.JPG?f=xxs" />
							
							<strong class="product_a">NORDLI노르돌리</strong>
							<span class="product_txt">수납침대프레임</span>
							<span class="product_size">,120x200cm</span>
							
							<span class="money">
								<span class="money_won">₩</span>
								<span class="money_won2">349,000</span>
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
							<img  class="product_img" src="https://www.ikea.com/kr/ko/images/products/slattum-upholstered-bed-frame-knisa-light-grey__0726695_PE735410_S5.JPG?f=xxs" />
							
							<strong class="product_a">SLATTUM 슬라룸</strong>
							<span class="product_txt">쿠션형 침대프레임</span>
							<span class="product_size">,150x200cm</span>
							
							<span class="money">
								<span class="money_won">₩</span>
								<span class="money_won2">199,000</span>
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
					
					<li class="allproduct_product_ul_li">
						<input type="checkbox" id="chk_heart3" class="chk_heart" style="display: none;"/>
						<label class="heart" for="chk_heart3"></label>
						<a href="#">
							<img  class="product_img" src="https://www.ikea.com/kr/ko/images/products/slattum-upholstered-bed-frame-knisa-light-grey__0726732_PE735405_S5.JPG?f=xxs" />
							<strong class="product_a">SLATTUM 슬라툼</strong>
							<span class="product_txt">쿠션형 침대프레임</span>
						<span class="product_size">,120x200cm</span>
							<span class="money">
								<span class="money_won">₩</span>
								<span class="money_won2">139,000</span>
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
					
					<li class="allproduct_product_ul_li">
						<input type="checkbox" id="chk_heart4" class="chk_heart" style="display: none;"/>
						<label class="heart" for="chk_heart4"></label>
						<a href="#">
							<img  class="product_img" src="https://www.ikea.com/kr/ko/images/products/nesttun-bed-frame-white-luroey__0859873_PE584727_S5.JPG?f=xxs" />
						
							<strong class="product_a">NESTTUN 네스툰</strong>
							<span class="product_txt">침대프레임</span>
							<span class="product_size">,120x200cm</span>
							
							<span class="money">
								<span class="money_won">₩</span>
								<span class="money_won2">149,000</span>
						    </span>
							<span class="starbox">
								<span class="star"></span>
								<span class="star"></span>
								<span class="star"></span>
								<span class="star"></span>
								<span class="star"></span>
							</span>
						</a>			
						<a class="addcart"></a>
					</li>
					
					<li class="allproduct_product_ul_li">
						<input type="checkbox" id="chk_heart5" class="chk_heart" style="display: none;"/>
						<label class="heart" for="chk_heart5"></label>
						<a href="#">
							<img  class="product_img" src="https://www.ikea.com/kr/ko/images/products/kongshus-bed-frame-bamboo__0651748_PE707090_S5.JPG?f=xxs" />
							<strong class="product_a">SONGESAND 송에산드</strong>
							<span class="product_txt">침대프레임+수납상자2</span>
							<span class="product_size">,90x200cm</span>
							
							<span class="money">
								<span class="money_won">₩</span>
								<span class="money_won2">199,000</span>
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
							<img  class="product_img" src="https://www.ikea.com/kr/ko/images/products/ramsta-day-bed-frame-with-slatted-bed-base-white__0442871_PE594008_S5.JPG?f=xxs" />
						
							<strong class="product_a">MALM 말룸</strong>
							<span class="product_txt">높은침대프레임+수납상자2</span>
							<span class="product_size">,120x200cm</span>
							<span class="money">
								<span class="money_won">₩</span>
								<span class="money_won2">334,000</span>
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
					<!-- 구분선  -->
				</ul>
			</div> <!-- //allproduct_product -->
			</div>
			<div class="closet_txt">
			<p class="closet_p">편안한 침대라 해도 종류는 아주 많아서 필요한 용도와 사용할 사람, 
			생활 공간, 연령대가 모두 다를 수 있어요. La porte에는 아이 침실을 위한 2층 침대부터 침대헤드가 있는
			 럭셔리한 안방용 슈퍼킹사이즈 침대까지 모든 종류의 침대가 준비되어 있어요. 
			 또한 로프트/2층 침대와 소파베드, 데이베드, 디반베드, 어린 아이를 위한 유아용 침대도 있죠. La porete 
			 침대는 대부분 매트리스의 단단하기를 선택할 수 있어서 편안한 숙면을 취할 수 있도록 선호하는 종류의 편안함을 고르실 수 있어요.
			</p>
			<strong class="closet_bold">침대 프레임</strong>
			<p class="closet_p">
			La porte침대는 대부분 침대프레임과 매트리스가 별도로 판매됩니다. 따라서 선택한 매트리스와 함께 침대의 스타일과 외관을 원하는 대로 조합할 수 있죠. 
			침대프레임도 다양해서 원하는 규격과 스타일을 쉽게 찾을 수 있어요. 적절한 침대프레임을 골랐다면 침대의 높이도 선택할 수 있어요. 
			높이가 적절하면 따뜻하고 포근한 침대에 더 머무르고 싶은 유혹을 떨쳐내고 (최소한 물리적으로는) 잠자리에서 쉽게 일어날 수 있을 거예요.
			</p>
			<p class="closet_p">
			서랍이나 기타 스마트한 솔루션을 적용하여 실용적인 빌트인 수납공간이 있는 침대프레임도 있어요. 로프트/2층 침대는 침대 밑에 선반이나 수납장을 넣을 수 있죠.
			 공간이 부족하거나 침대가 차지하는 공간을 최대한 활용하고 싶을 때 유용한 제품이에요.
			</p>
			
			<strong class="closet_bold">침대 규격</strong>
			<p class="closet_p">
				IKEA에서는 모든 형태와 규격의 침대를 만나볼 수 있어요. 침대프레임마다 디자인과 치수는 다를 수는 있지만, 
				성인용 침대의 표준 규격은 모두 같습니다. 매트리스의 길이는 보통 200cm이지만 너비는 다양해요. 유아용 침대와 같은 어린이용 침대는 
				길이와 너비가 모두 다를 수 있죠. 성인용 침대의 경우 너비에 따라 침대 규격이 달라져요. 
				아래에서 가장 좁은 침대부터 가장 넓은 침대까지 표준 침대 규격을 확인해 보세요.
			</p>
			<ul>
				<li>미니 싱글 사이즈 - 70cm/80cm</li>
				<li> 싱글 사이즈 - 90cm</li>
				<li>수퍼싱글 + - 120cm</li>
				<li>더블 - 140cm</li>
				<li>퀸 - 150cm</li>
				<li>킹 - 180cm</li>
			</ul>
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
	    				url: '../api/sofpt.html',// 읽어들일 파일의 경로
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
	    				url: '../api/bedpt.html',// 읽어들일 파일의 경로
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
	    				url: '../api/accpt.html',// 읽어들일 파일의 경로
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
	    				url: '../api/kitpt.html',// 읽어들일 파일의 경로
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
	    				url: '../api/ligpt.html',// 읽어들일 파일의 경로
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