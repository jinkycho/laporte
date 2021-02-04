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
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"/>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css">
<link rel="stylesheet" type="text/css" href="../assets/css/common.css">
<link rel="stylesheet" type="text/css" href="../assets/css/cart.css">
<link rel="stylesheet" type="text/css" href="../assets/css/detail.css">
<link rel="stylesheet" type="text/css" href="../assets/css/review_expand.css">
<link rel="stylesheet" type="text/css" href="../assets/css/star.css">
<link rel="stylesheet" type="text/css"
	href="../assets/plugins/sweetalert/sweetalert2.min.js">


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
			<div class="page-header">
				<ol class="breadcrumb">
					<li><a href="#">조명</a></li>
					<!-- 여기가 현재 페이지를 의미합니다. - active클래스 적용됨 -->
					<li class="active">실내조명</li>
				</ol>
			</div>
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<img alt="스트롤라 장식조명"
						src="https://www.ikea.com/kr/ko/images/products/strala-led-table-
	        				decoration-cabin-in-the-forest-red-white__0675789_PE719481_S5.JPG?f=g"
						class="swiper-slide"> <img alt="스트롤라 장식조명"
						src="https://www.ikea.com/kr/ko/images/products/strala-led-table-
							decoration-cabin-in-the-forest-red-white__0713431_PE729522_S5.JPG?f=m"
						class="swiper-slide"> <img alt="스트롤라 장식조명"
						src="https://www.ikea.com/kr/ko/images/products/strala-led-table-
							decoration-cabin-in-the-forest-red-white__0779809_PE764458_S5.JPG?f=s"
						class="swiper-slide"> <img alt="스트롤라 장식조명"
						src="https://www.ikea.com/kr/ko/images/products/strala-led-table-
							decoration-cabin-in-the-forest-red-white__0884365_PE719480_S5.JPG?f=s"
						class="swiper-slide">

				</div>
				<div class="swiper-scrollbar"></div>
			</div>
			<div class="detail_buy_module">
				<div class="price_package_box">
					<div class="price_package_wrapper">
						<div class="price_package_left clearfix">
							<h3 class="detail_info_name pull-left">
								STRÅLA 스트롤라 <span class="price_package_right pull-right">₩
									18,600</span>
							</h3>

							<span class="detail_info_text pull-left">LED테이블장식조명, 숲속의 집
								레드/화이트</span>
						</div>

						<button class="btn btn-link review_btn clearfix">
							<span class="star1_icon"></span> <span class="star1_icon"></span>
							<span class="star1_icon"></span> <span class="star1_icon"></span>
							<span class="star2_icon"></span> <span
								class="review_num pull-right">(5)</span>
						</button>
						<!-- 리뷰 모달  -->
						<div class="review_gray_layer" id="review_background"></div>
						<div class="review_over_layer" id="review_front">
							<h3 class="review_text_h3">상품평</h3>
							<span class="review_close_button"></span>
							<div class="review_list_box">
								<div class="star-input">
									<!--  별모양 반응하도록 하는 것, radio로 체크만들어서 위에 별 이미지 덮어쓰기, 값 바꿔서 작동안하도록 설정, star.js 주석해서 점수안바뀜. -->
									<div class="input">
										<input type="radio" name="star-input" value="1" id="p1"
											disabled> <label for="p1">(1)</label>
										<!-- 원래 바라보는 for에 ID를 값을 각각 입력해야합니다. 원래는 for= "p1" , 그리고 checked 값은 제거해야함.-->
										<input type="radio" name="star-input" value="2" id="p2"
											disabled> <label for="p2">(2)</label>
										<!-- 원래 바라보는 for에 ID를 값을 각각 입력해야합니다. 원래는 for= "p1" , 그리고 checked 값은 제거해야함.-->
										<input type="radio" name="star-input" value="3" id="p3"
											checked="checked"> <label for="p3">(3)</label>
										<!-- 원래 바라보는 for에 ID를 값을 각각 입력해야합니다. 원래는 for= "p1" , 그리고 checked 값은 제거해야함.-->
										<input type="radio" name="star-input" value="4" id="p4"
											checked="checked"> <label for="p4">(4)</label>
										<!-- 원래 바라보는 for에 ID를 값을 각각 입력해야합니다. 원래는 for= "p1" , 그리고 checked 값은 제거해야함.-->
										<input type="radio" name="star-input" value="5" id="p5"
											checked="checked"> <label for="p5">(5)</label>
										<!-- 원래 바라보는 for에 ID를 값을 각각 입력해야합니다. 원래는 for= "p1" , 그리고 checked 값은 제거해야함.-->
									</div>
									<output for="star-input">
										<b>(5)</b>
									</output>
								</div>
								<br /> <br /> <br />

								<div id="rv_custoner_eval">
									<h4 class="text">평균 고객평가</h4>
								</div>
								<br />

								<div class="star_scrollbar">
									<div class="starRev">
										<span class="text">전반적으로</span> <span class="starRev_starR2">
											<span class="starR2 on">별1</span> <span class="starR2 on">별2</span>
											<span class="starR2 on">별3</span> <span class="starR2 on">별4</span>
											<span class="starR2 on">별5</span>
										</span>
									</div>
								</div>
								<br />

								<div class="starRev">
									<div id="text">
										손쉬운 조립 <span id="value1" class="value"></span> <span
											class="range_box"> <input type="range" id="myRange1"
											class="slider1" style="width: 130px;" value="5" min=""
											max="5" step="6" /> <!-- 작동 멈추기 위해 값 조절. 원래 value = "0" min = "0", step = "5" -->
										</span>
									</div>
								</div>
								<br />

								<div class="starRev">
									<div id="text">
										제품 가성비 <span id="value2" class="value"></span> <span
											class="range_box"> <input type="range" id="myRange2"
											class="slider2" style="width: 130px;" value="5" min=""
											max="5" step="6" /> <!-- 작동 멈추기 위해 값 조절. 원래 value = "0" min = "0", step = "5" -->
										</span>
									</div>
								</div>
								<br />
								<!-- starRev -->

								<div class="starRev">
									<div id="text">
										제품 품질 <span id="value3" class="value"></span> <span
											class="range_box"> <input type="range" id="myRange3"
											class="slider3" style="width: 130px;" value="5" min=""
											max="5" step="6" /> <!-- 작동 멈추기 위해 값 조절. 원래 value = "0" min = "0", step = "5" -->
										</span>
									</div>
								</div>
								<br />
								<!-- starRev3 -->

								<div class="starRev">
									<div id="rv_explain">
										제품 외관 <span id="value4" class="value"></span> <span
											class="range_box"> <input type="range" id="myRange4"
											class="slider4" style="width: 130px;" value="5" min=""
											max="5" step="6" /> <!-- 작동 멈추기 위해 값 조절. 원래 value = "0" min = "0", step = "5" -->
										</span>
									</div>
								</div>
								<br />
								<!-- starRev4 -->

								<div class="starRev">
									<div id="rv_explain">
										제품 기능 <span id="value5" class="value"></span>
										<div class="range_box">
											<input type="range" id="myRange5" class="slider5"
												style="width: 130px;" value="5" min="" max="5" step="6" />
										</div>
									</div>
								</div>
								<br /> <br />
								<!-- starRev5 -->

								<div class="review1">
									<div class="starRev">
										<span class="starR2 on">별1</span> <span class="starR2 on">별2</span>
										<span class="starR2 on">별3</span> <span class="starR2 on">별4</span>
										<span class="starR2 on">별5</span>
										<div class="date">
											<span class="date_text" style="font-size: 13px">2020/09/27</span>
										</div>
									</div>
									<br />

									<div class="rv_review clearfix">
										<span class="text pull-left">너무 좋아요</span>
										<div class="review_control_box pull-right">
											<span class="delete_text clearfix"> <span
												class="logo-icon pull-left" id="rv_trash_logoicon"></span> <span
												class="color-font pull-right" style="font-size: 17px">삭제</span>
											</span> <span class="modify_text" id="modify"> <span
												class="color-font">수정</span>
											</span>
										</div>
									</div>
									<div class="rv_reple">
										<h5 class="reple">쿠션 느낌도 좋고 튼튼합니다.</h5>
										<h6 class="reple">예, 이 제품을 추천합니다.</h6>
									</div>
									<br />

									<div class="star&scrollbar2">
										<div class="starRev">
											<div id="text">
												손쉬운 조립 <span id="value6" class="value"></span> <span
													class="range_box"> <input type="range" id="myRange6"
													class="slider6" style="width: 130px;" value="5" min=""
													max="5" step="6" /> <!-- 작동 멈추기 위해 값 조절. 원래 value = "0" min = "0", step = "5" -->
												</span>
											</div>
										</div>
										<br />

										<div class="starRev">
											<div id="text">
												제품 가성비 <span id="value7" class="value"></span> <span
													class="range_box"> <input type="range" id="myRange7"
													class="slider7" style="width: 130px;" value="5" min=""
													max="5" step="6" /> <!-- 작동 멈추기 위해 값 조절. 원래 value = "0" min = "0", step = "5" -->
												</span>
											</div>
										</div>
										<br />
										<!-- starRev7 -->

										<div class="starRev">
											<div id="text">
												제품 품질 <span id="value8" class="value"></span> <span
													class="range_box"> <input type="range" id="myRange8"
													class="slider8" style="width: 130px;" value="5" min=""
													max="5" step="6" /> <!-- 작동 멈추기 위해 값 조절. 원래 value = "0" min = "0", step = "5" -->
												</span>
											</div>
										</div>
										<br />
										<!-- starRev8 -->

										<div class="starRev">
											<div id="text">
												제품 외관 <span id="value9" class="value"></span> <span
													class="range_box"> <input type="range" id="myRange9"
													class="slider9" style="width: 130px;" value="5" min=""
													max="5" step="6" /> <!-- 작동 멈추기 위해 값 조절. 원래 value = "0" min = "0", step = "5" -->
												</span>
											</div>
										</div>
										<br />
										<!-- starRev9 -->

										<div class="starRev">
											<div id="text">
												제품 기능 <span id="value10" class="value"></span> <span
													class="range_box"> <input type="range"
													id="myRange10" class="slider10" style="width: 130px;"
													value="5" min="" max="5" step="6" /> <!-- 작동 멈추기 위해 값 조절. 원래 value = "0" min = "0", step = "5" -->
												</span>
											</div>
										</div>
										<br />
										<!-- starRev10 -->
									</div>
									<div class="rv_write">
										<a href="../04_review/review_write.html"> <span
											class="text" style="color: navy;"> 상품평 작성하기 </span>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 리뷰 모달 끝 -->
				</div>
				<div class="buy_module_btn_box clearfix">
					<button class="btn btn-primary" onclick="location.href='../07_purchase/purchase.html'">구매하기</button>
					<div class="heart_box pull-right">
						<input type="checkbox" id="chk_heart" class="chk_heart"
							style="display: none;" /> <label class="heart" for="chk_heart"></label>
					</div>
				</div>
			</div>
			<div class="product_info_txt">
				<div class="product_available">
					<span class="delivery_icon"></span>
					<p class="delivery_txt">배송 가능 (배송지에 따라 구매가능 여부가 변경 될 수 있습니다.)</p>
				</div>
				<div class="product_return">
					<span class="return_icon"></span>
					<p class="return_txt">마음이 바뀌어도 괜찮아요. 구입한 제품은 365일 이내에 반품할 수
						있어요. 영수증을 잘 보관하면 반품이 한결 쉬워져요.</p>
				</div>
				<div class="product_num">50491595</div>
				<div class="detail_text">
					<p>배터리 구동식으로 전원을 연결하지 않아도 되어 원하는 곳에 놓고 사용할 수 있습니다.</p>
					<p>LED제품은 백열전구보다 에너지 소비량이 최대 85%가 낮고 수명도 10배나 오래갑니다.</p>
				</div>
			</div>
			<!-- 아코디언 영역 -->
			<div class="panel-group  detail_accordion" id="accordion">
				<!-- 제품 설명 -->
				<div class="panel panel-default">
					<div class="panel-heading">
						<a class="accordion-toggle" data-toggle="collapse"
							data-parent="#accordion" href="#collapseOne"> <span
							class="panel-title">제품 설명</span> <span
							class="detail_dropdown_icon"></span>
						</a>
					</div>
					<div id="collapseOne" class="panel-collapse collapse">
						<div class="panel-body">
							<p>
								실내 사용 전용.<br /> <br /> 배터리는 같은 용량을 가진 같은 종류의 충전지로만 교체해야 합니다.<br>
								<br> LED 수명 약 20,000 시간.<br> <br> 조명색:따뜻한
								백색(2700K)<br> <br> 이 제품에는 CE 마크가 있습니다.<br> <br>
								제품에 맞는 배터리만 사용하세요. 오래된 배터리와 새 배터리를 함께 사용하지 마세요.<br> <br>
								1.2V AA NiMH 1000mAh 충전식 배터리 2개가 포함되어 있습니다.<br> <br>
								제품에 포함된 충전식 배터리는 충전에 10시간 정도 걸리고 최대 18시간 지속됩니다.<br> <br>
								어댑터/충전기 포함.<br> <br> 제품에 포함된 전선에 아이의 목이 졸릴수 있습니다. 전선이
								포함된 제품은 유아용 침대, 놀이울 등에서 떨어뜨려 놓아 아이가 만지지 못하게 해 주세요.
							</p>
						</div>
					</div>
				</div>
				<!-- 제품 크기 -->
				<div class="panel panel-default">
					<div class="panel-heading">
						<a class="accordion-toggle" data-toggle="collapse"
							data-parent="#accordion" href="#collapseTwo"> <span
							class="panel-title">제품 크기</span> <span
							class="detail_dropdown_icon"></span>
						</a>
					</div>
					<div id="collapseTwo" class="panel-collapse collapse">
						<div class="panel-body">
							광속: 2 루멘 <br> 높이: 17 cm<br> 지름: 11 cm
						</div>
					</div>
				</div>
			</div>
			<!--// 아코디언 영역 -->
			<!-- 모든 제품 -->
			<div id="home_content">
				<h4>유사한 제품</h4>
				<div id="home_item_box">
					<ul id="home_item_listbox">
						<!-- 항목(1) 시작 -->
						<li>
							<div class="home_item">
								<div class="home_wishlist_loc">
									<a href="#"><span class="home_wishlist_icon"></span></a>
								</div>
								<div>
									<a href="#"><img class="home_item_img" alt="LED테이블장식조명"
										src="https://www.ikea.com/kr/ko/images/products/strala-led-table-decoration-battery-operated-star__0675781_PE719479_S5.JPG?f=s"></a>
									<a href="#">
										<p class="home_item_title">STRÅLA 스트롤라</p>
										<p class="home_item_info">
											LED테이블장식조명, 배터리식/별<br /> <span class="home_item_price">&#8361;
												14,900</span>
										</p>
									</a>
								</div>
								<a class="home_cartloc" href="#"><span class="cart_icon"></span></a>
								<p class="home_item_new">new</p>
							</div>
						</li>
						<!-- 항목(1) 끝 -->
						<li>
							<div class="home_item">
								<div class="home_wishlist_loc">
									<a href="#"><span class="home_wishlist_icon"></span></a>
								</div>
								<div>
									<a href="#"><img class="home_item_img" alt="LED 탁상스탠드"
										src="https://www.ikea.com/kr/ko/images/products/strala-led-table-lamp-landscape__0812151_PE773037_S5.JPG?f=m"></a>
									<a href="#">
										<p class="home_item_title">STRÅLA 스트롤라</p>
										<p class="home_item_info">
											LED 탁상스탠드, 30cm<br /> <span class="home_item_price">&#8361;
												12,900</span>
										</p>
									</a>
								</div>
								<a class="home_cartloc" href="#"><span class="cart_icon"></span></a>
							</div>
						</li>
						<li>
							<div class="home_item">
								<div class="home_wishlist_loc">
									<a href="#"><span class="home_wishlist_icon"></span></a>
								</div>
								<div>
									<a href="#"><img class="home_item_img" alt="LED체인조명160등"
										src="https://www.ikea.com/kr/ko/images/products/strala-led-lighting-chain-with-160-lights-battery-operated-mini-multicolour__0818276_PE774370_S5.JPG?f=l"></a>
									<a href="#">
										<p class="home_item_title">STRÅLA 스트롤라</p>
										<p class="home_item_info">
											LED체인조명160등<br /> <span class="home_item_price">&#8361;
												19,900<span>
										</p>
									</a>
								</div>
								<a class="home_cartloc" href="#"><span class="cart_icon"></span></a>
								<p class="home_item_new">new</p>
							</div>
						</li>
						<li>
							<div class="home_item">
								<div class="home_wishlist_loc">
									<a href="#"><span class="home_wishlist_icon"></span></a>
								</div>
								<div>
									<a href="#"><img class="home_item_img" alt="LED체인조명12등"
										src="https://www.ikea.com/kr/ko/images/products/strala-led-lighting-chain-with-12-lights-battery-operated-snowflakes__0812192_PE771966_S5.JPG?f=m"></a>
									<a href="#">
										<p class="home_item_title">STRÅLA 스트롤라</p>
										<p class="home_item_info">
											LED체인조명12등<br /> <br /> <span class="home_item_price">&#8361;
												9,900</span>
										</p>
									</a>
								</div>
								<a class="home_cartloc" href="#"><span class="cart_icon"></span></a>
								<p class="home_item_new">new</p>
							</div>
						</li>
						<li>
							<div class="home_item">
								<div class="home_wishlist_loc">
									<a href="#"><span class="home_wishlist_icon"></span></a>
								</div>
								<div>
									<a href="#"><img class="home_item_img" alt="LED미니양초"
										src="https://www.ikea.com/kr/ko/images/products/mognad-led-tealight-battery-operated-white__0636486_PE697891_S5.JPG?f=xs"></a>
									<a href="#">
										<p class="home_item_title">MOGNAD 몽나드</p>
										<p class="home_item_info">
											LED미니양초<br /> <span class="home_item_price home_item_mark">&#8361;
												5,500 / 6개</span>
										</p>
									</a>
								</div>
								<a class="home_cartloc" href="#"><span class="cart_icon"></span></a>
								<p class="home_item_new">new</p>
							</div>
						</li>
						<li>
							<div class="home_item">
								<div class="home_wishlist_loc">
									<a href="#"><span class="home_wishlist_icon"></span></a>
								</div>
								<div>
									<a href="#"><img class="home_item_img" alt="LED체인조명30"
										src="https://www.ikea.com/kr/ko/images/products/strala-led-lighting-chain-with-30-lights-battery-operated-flower-white__0818292_PE774385_S5.JPG?f=m"></a>
									<a href="#">
										<p class="home_item_title">STRÅLA 스트롤라</p>
										<p class="home_item_info">
											LED체인조명30<br /> <span class="home_item_price">&#8361;
												9,900</span>
										</p>
									</a>
								</div>
								<a class="home_cartloc" href="#"><span class="cart_icon"></span></a>
							</div>
						</li>
						<li>
							<div class="home_item">
								<div class="home_wishlist_loc">
									<a href="#"><span class="home_wishlist_icon"></span></a>
								</div>
								<div>
									<a href="#"><img class="home_item_img" alt="LED펜던트등"
										src="https://www.ikea.com/kr/ko/images/products/strala-led-pendant-lamp-battery-operated-candy-cane__0700970_PE723864_S5.JPG?f=s"></a>
									<a href="#">
										<p class="home_item_title">STRÅLA 스트롤라</p>
										<p class="home_item_info">
											LED펜던트등<br /> <span class="home_item_price">&#8361;
												9,900</span>
										</p>
									</a>
								</div>
								<a class="home_cartloc" href="#"><span class="cart_icon"></span></a>
								<p class="home_item_new">new</p>
							</div>
						</li>
						<li>
							<div class="home_item">
								<div class="home_wishlist_loc">
									<a href="#"><span class="home_wishlist_icon"></span></a>
								</div>
								<div>
									<a href="#"><img class="home_item_img" alt="LED양초"
										src="https://www.ikea.com/kr/ko/images/products/mognad-led-block-candle-battery-operated-white__0640066_PE699629_S5.JPG?f=s"></a>
									<a href="#">
										<p class="home_item_title">MOGNAD 몽나드</p>
										<p class="home_item_info">
											LED양초, 10cm<br /> <span
												class="home_item_price home_item_mark">&#8361; 3,000</span>
										</p>
									</a>
								</div>
								<a class="home_cartloc" href="#"><span class="cart_icon"></span></a>
								<p class="home_item_new">new</p>
							</div>
						</li>
					</ul>
				</div>
			</div>
			<!-- 모든 제품 끝 -->
			<!-- 최근 본 제품 -->
			<div class="recently_view_page">
				<h4>최근 본 제품</h4>
				<div class="recently_img_box">
					<img
						src="https://www.ikea.com/kr/ko/images/products/strala-led-table-decoration-battery-operated-star__0675781_PE719479_S5.JPG?f=s"
						class="recntly_img">
				</div>
			</div>
			<div class="totop_box">
				<div class="totop">맨위로 이동</div>
			</div>

		</div>
	</section>
	<%@ include file="../01_home/footer.jsp" %>
	<script src="../assets/js/input_value_1.js"></script>
	<script src="../assets/js/input_value_2.js"></script>
	<script src="../assets/js/input_value_3.js"></script>
	<script src="../assets/js/input_value_4.js"></script>
	<script src="../assets/js/input_value_5.js"></script>
	<script src="../assets/js/input_value_6.js"></script>
	<script src="../assets/js/input_value_7.js"></script>
	<script src="../assets/js/input_value_8.js"></script>
	<script src="../assets/js/input_value_9.js"></script>
	<script src="../assets/js/input_value_10.js"></script>
	<script src="../assets/js/review_star2.js"></script>
	<script src="../assets/js/review_star1.js"></script>
	<script src="../assets/plugins/sweetalert/sweetalert2.all.min.js"></script>
	<script src="../assets/js/review_common.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
	<script src="../assets/plugins/toTop/totop.min.js"></script>
	<script src="../assets/js/home.js"></script>
	<script type="text/javascript">
		var swiper = new Swiper('.swiper-container', {
			scrollbar : {
				el : '.swiper-scrollbar',
				hide : false,
			},
		});
		$('.totop').tottTop({
			scrollTop : 0
		});
		$(function() {
			/* --------------------wish modalwindow-------------------*/
			$(".review_btn").click(function(e) {
				e.preventDefault();
				$("#review_background").fadeIn(300);
				$("#review_front").fadeIn(200);
			});
			// 오른쪽 x버튼 (self.close << 쓰는게 깔끔)
			$(".review_close_button").click(function(e) {
				e.preventDefault();
				$("#review_front").fadeOut(200);
				$("#review_background").fadeOut(100);
			});
		});
		
		<!-- 버튼 누를 시 삭제 알림기능 -->
		$(function() {
			$(".delete_text").click(function(e) {
				$('.review1').remove( );
				swal('삭제', '성공적으로 삭제되었습니다.', 'success');
			});
			
			$(".modify_text").click(function(e) {
				window.location.href = "../04_review/review_modify.html";
    		}); // end click
    		
			$("#chk_heart").change(function(e) {
				if($("#chk_heart").is(":checked") == true){
					swal('성공', '위시리스트에 추가 되었습니다.', 'success');
				}else{
					swal('취소', '위시리스트에서 삭제 되었습니다.', 'error');
				}
			});
		});	

	</script>
</body>
</html>