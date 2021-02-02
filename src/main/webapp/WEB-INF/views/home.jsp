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

		<link rel="preconnect" href="https://fonts.gstatic.com">

	<!-- stylesheet -->
		<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
		<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css">
	    <link rel="stylesheet" type="text/css" href="assets/css/common.css">
	    <link rel="stylesheet" type="text/css" href="assets/css/home.css">

	<!-- javascript -->
	    <script src="http://code.jquery.com/jquery.min.js"></script>
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
		<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>


	<!-- ajax-helper -->
	    <link rel="stylesheet" href="assets/plugins/ajax/ajax_helper.css" />
	    <script src="assets/plugins/ajax/ajax_helper.js"></script>
	</head>

	<body>
		<%@ include file="01_home/header.jsp" %>
		<section>
			<!-- 검색 -->
	        <div class="hd_searchbox">
	            <div class="hd_search">
	                <input id="search_text" type="text" placeholder="검색어 입력">
	                    <span id="hd_search_icon"></span>
	            </div>
	            <div class="sc_gray_layer" id="hd_search_background"></div>
	       			<div class="sc_over_layer" id="hd_search_front">
	       				<div id="modal_search_box_container">
	       					<form>
	       						<input id="modal_search_text" type="text" placeholder="검색어 입력">
	       						<span id="search_close_icon"></span>
	       						<input type="reset" id="search_remove_icon">
	       						<input type="submit" id="search_enter_icon">
	       					</form>
	       					<div id="search_result" >
	       						<h4>추천 검색어</h4>
	       						<a href="#"><span class="rec_reyword"></span>가구</a>
	       						<a href="#"><span class="rec_reyword"></span>침대</a>
	       						<a href="#"><span class="rec_reyword"></span>주방</a>
	       						<a href="#"><span class="rec_reyword"></span>소파</a>
	       						<a href="#"><span class="rec_reyword"></span>수납</a>
	       						<a href="#"><span class="rec_reyword"></span>조명</a>
	       					</div>
	       				</div>
	       			</div>
	        </div>
	        <!-- 검색 끝 -->

			<!-- 검색제외 본문영역 -->
	        <div class="container">
				<!-- 배너 -->

		       		<div class= "home_banner_content">
		       			<div class="row">
			       			<div class="home_banner_img col-sm-12 col-md-6"><img src="assets/img/banner01.png"></div>
			       			<div class="home_banner_txt col-sm-12 col-md-6">
			       				<h3>보다 지속가능한 삶을 위한 간단한 변화</h3>
			       				<p>집에서 지속가능한 생황을 하기가 그 어느 때보다 쉬워졌고 비용도 합리적이에요. 그리고 돈도 절약하면서 소중한 자원도 보존할 수 있습니다.</p>
			       				<a href="#" id="home_banner_detail">자세히 보기</a>
							</div>
						</div>

							<!-- 배너 모달 -->
							<div class="banner_gray_layer" id="banner_background"></div>
							<div class="banner_over_layer" id="banner_foreground">
								 <!-------배너 영역------>
								 <div class="swiper-container">
									<div class="swiper-wrapper">
										<div class="swiper-slide">
												<div class="banner-box">
													<img src="assets/img/banner_caro_img1.png"class="banner_carousel_img" />
													<span class= "banner_carousel_txt">
													<h3>가장 밝은 아이디어를 소개합니다</h3>
													<br>
													<p>

													la porte는 백열전구보다 에너지는 85% 적게 사용하면서 지속 시간은 15,000시간까지
													길어진 RYET 뤼에트 LED 전구를 개발했습니다. 매일 저녁 1시간 동안 조명을 켜고 독서를
													한다면 무려 41년 가까이 사용할 수 있죠. 3,900원으로 이 모든 것을 누릴 수 있다니, 놀랍지 않나요?
													</p>
													<a class="banner_link_btn" href="#">LED 전구 보러가기</a>
													</span>
												</div>
											</div>
											<div class="swiper-slide">
												<div class="banner-box">
													<img src="assets/img/banner_caro_img2.png"class="banner_carousel_img" />
													<span class= "banner_carousel_txt" style="background-color: #333333;">
													<h3 style="color: white;">일회용 플라스틱 없는 세상 만들기</h3>
													<br>
													<p style="color:white;">
														일회용 플라스틱 제품을 무책임하게 폐기하면 환경에 심각한 피해를 줄 수 있습니다.
														la porte는 인간과 지구를 위한 노력의 일환으로 글로벌 홈퍼니싱 제품군에서 모든 일회용 플라스틱을 제외 하였습니다.
														여기에는 접시와 컵, 플라스틱 빨대도 포함됩니다.

													</p>
													<a class="banner_link_btn" href="#" style="background-color:#cebea7; color:black;">새로운 일회용품 보러가기</a>
													</span>
												</div>
											</div>
											<div class="swiper-slide">
												<div class="banner-box">
													<img src="assets/img/banner_caro_img3.png"class="banner_carousel_img" />
													<span class= "banner_carousel_txt">
													<h3>책임감 있는 목재</h3>
													<br>
													<p>
														la porte는 책임감 있는 출처에서 공급받은 목재만을 사용하겠다는 목표에 따라, 지속가능한 목재로만 생산되는 제품들의 수를 점차 늘여가고 있습니다.
														 여기서 멈추지 않고 IKEA는 한발 더 나아가 생산과정에서 발생하는 목재 폐기물의 양을 최소화하기 위한 책임감 있는 원료 사용을 실천하고 있습니다.

													</p>
													<a class="banner_link_btn" href="#">책임감 있는 목재 가구 보러가기</a>
													</span>
												</div>
											</div>
										</div>

									</div>
									<!-- Add Pagination -->
									<div class="slider__controller">
										<div class="slider__controller__dot">
											<div class="fb__progressBar swiper-pagination swiper-pagination-progressbar">
												<span class="swiper-pagination-progressbar-fill">
												</span>
											</div>
										</div>
									</div>
									<!--pagenation 끝-->
									<a href="#" id="banner_close_button">&times;</a>
								</div>
								<!-- swiper 배너 영역 끝-->

						</div>



	 			<!-- 배너 끝 -->

	 			<!-- 모든 제품 -->
	            <div id="home_content">
	            	<h4>모든 제품</h4>
	            	<div id="home_item_box">
	            		<ul id="home_item_listbox">
	            		<!-- 항목(1) 시작 -->
	            		<li>
	            				<div class="home_item">
	            					<div class="home_wishlist_loc">
		            					<a href="#"><span class="home_wishlist_icon"></span></a>
	            					</div>
	            					<div>
		            					<a href="../03_detail/detail.html"><img class="home_item_img" alt="STUVA 스투바 / FRITIDS 프리티스"
		            						src="https://secure.ikea.com/kr/ko/images/products/strala-seuteulolla-ledteibeuljangsigjomyeong__0675789_PE719481_S3.JPG"></a>
		            					<a href="../03_detail/detail.html">
		            						<p class="home_item_title">STRÅLA 스트롤라</p>
		            						<p class="home_item_info">LED테이블장식조명
		            						17x11 cm<br/>
		            						<span class="home_item_price">&#8361; 18,600</span></p>
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
		            					<a href="#"><img class="home_item_img" alt="STUVA 스투바 / FRITIDS 프리티스"
		            						src="https://www.ikea.com/kr/ko/images/products/stuva-fritids-toy-storage-with-wheels-white-green__0629926_PE694540_S5.JPG?f=s"></a>
		            					<a href="#">
		            						<p class="home_item_title">STUVA 스투바 / FRITIDS 프리티스</p>
		            						<p class="home_item_info">이동식장난감수납함
		            						60x50x64 cm<br/>
		            						<span class="home_item_price">&#8361; 90,000</span></p>
	            						</a>
	           						</div>
	            					<a class="home_cartloc" href="#"><span class="cart_icon"></span></a>
	            				</div>
	            			</li>
	            			<!-- 항목(1) 끝 -->
	            			<li>
	            				<div class="home_item">
	            					<div class="home_wishlist_loc">
		            					<a href="#"><span class="home_wishlist_icon"></span></a>
	            					</div>
	            					<div>
		            					<a href="#"><img class="home_item_img" alt="DUKTIG 둑티그"
		            						src="https://www.ikea.com/kr/ko/images/products/duktig-play-kitchen-birch__0756010_PE754469_S5.JPG?f=xxs"></a>
		            					<a href="#">
		            						<p class="home_item_title">DUKTIG 둑티그</p>
		            						<p class="home_item_info">주방놀이세트
		            						72x40x109 cm<br/>
		            						<span class="home_item_price">&#8361; 99,900</span></p>
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
		            					<a href="#"><img class="home_item_img" alt="JONAXEL 요낙셀"
		            						src="https://www.ikea.com/kr/ko/images/products/jonaxel-shelving-unit-white__0678052_PE719167_S5.JPG?f=xxs"></a>
		            					<a href="#">
		            						<p class="home_item_title">JONAXEL 요낙셀</p>
		            						<p class="home_item_info">선반유닛<br/>
		            						80x38x160 cm<br/>
		            						<span class="home_item_price">&#8361; 59,900<span></p>
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
		            					<a href="#"><img class="home_item_img" alt="GODMORGON 고드모르곤"
		            						src="https://www.ikea.com/kr/ko/images/products/godmorgon-box-with-lid-set-of-5-smoked__0802868_PE768615_S5.JPG?f=xxs"></a>
		            					<a href="#">
		            						<p class="home_item_title">GODMORGON 고드모르곤</p>
		            						<p class="home_item_info">수납함+뚜껑5종<br/>
		            						24x20x10 cm<br/>
		            						<span class="home_item_info home_item_pricedown">&#8361; 14,900</span><br/>
		            						<span class="home_item_price">&#8361; 12,900</span></p>
	            						</a>
	           						</div>
	           						<a class="home_cartloc" href="#"><span class="cart_icon"></span></a>
	           						<p class="home_item_down">할인가격</p>
	            				</div>
	            			</li>
	            			<li>
	            				<div class="home_item">
	            					<div class="home_wishlist_loc">
		            					<a href="#"><span class="home_wishlist_icon"></span></a>
	            					</div>
	            					<div>
		            					<a href="#"><img class="home_item_img" alt="RINNIG 린니그"
		            						src="https://www.ikea.com/kr/ko/images/products/rinnig-tea-towel-white-dark-grey-patterned__0813216_PE772338_S5.JPG?f=xxs"></a>
		            					<a href="#">
		            						<p class="home_item_title">RINNIG 린니그</p>
		            						<p class="home_item_info">행주<br/>
		            						45x60 cm<br/>
		            						<span class="home_item_price">&#8361; 3,900 / 4개</span></p>
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
		            					<a href="#"><img class="home_item_img" alt="LAIVA 라이바"
		            						src="https://www.ikea.com/kr/ko/images/products/laiva-bookcase-black-brown__0644278_PE702556_S5.JPG?f=xxs"></a>
		            					<a href="#">
		            						<p class="home_item_title">LAIVA 라이바</p>
		            						<p class="home_item_info">책장<br/>
		            						62x165 cm<br/>
		            						<span class="home_item_price home_item_mark">&#8361; 25,000</span></p>
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
		            					<a href="#"><img class="home_item_img" alt="LUSTIGKURRE 루스틱쿠레"
		            						src="https://www.ikea.com/kr/ko/images/products/lustigkurre-basket-natural-jute__0922223_PE788091_S5.JPG?f=xxs"></a>
		            					<a href="#">
		            						<p class="home_item_title">LUSTIGKURRE 루스틱쿠레</p>
		            						<p class="home_item_info">바구니<br/>
		            						25x20x33 cm<br/>
		            						<span class="home_item_price">&#8361; 3,900</span></p>
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

	 			<!-- 이달의 제품 -->
	            <div class="home_content">
	                <h4 class="home_product_h4">이달의 제품</h4>
	                <div class="home_product_listwrap">
	                    <ul class="home_product_listwrap_ul">
	                        <li class="home_product_listwrap_ul_li">
	                            <img class="home_product_listwrap_ul_li_img" src="assets/img/product1.png"/>
	                            <div class="home_product_listwrap_ul_li_div">
	                                <a class="home_product_listwrap_ul_li_div_a">고양이와 집사가 함께 쓰는 가구</a>
	                                <a class="home_product_listwrap_ul_li_div_span"></a>
	                            </div>
	                        </li>
	                        <li class="home_product_listwrap_ul_li">
	                            <img class="home_product_listwrap_ul_li_img" src="assets/img/product2.png"/>
	                            <div class="home_product_listwrap_ul_li_div">
	                                <a class="home_product_listwrap_ul_li_div_a"> 침대같은 편안한 의자 수납공감은 덤</a>
	                                <a class="home_product_listwrap_ul_li_div_span"></a>
	                            </div>
	                        </li>
	                        <li class="home_product_listwrap_ul_li">
	                            <img class="home_product_listwrap_ul_li_img" src="assets/img/product3.png"/>
	                            <div class="home_product_listwrap_ul_li_div">
	                                <a class="home_product_listwrap_ul_li_div_a" >선택까지 편안한 새로운 La porte 스프링 매트리스</a>
	                                <a class="home_product_listwrap_ul_li_div_span"></a>
	                            </div>
	                        </li>
	                        <li class="home_product_listwrap_ul_li">
	                            <img class="home_product_listwrap_ul_li_img" src="assets/img/product4.png"/>
	                            <div class="home_product_listwrap_ul_li_div">
	                                <a class="home_product_listwrap_ul_li_div_a" >면벨벳 소재로 색상이 입체적이며 감촉이 부드러운 커버</a>
	                                <a class="home_product_listwrap_ul_li_div_span"></a>
	                            </div>
	                        </li>
	                        <li class="home_product_listwrap_ul_li">
	                            <img class="home_product_listwrap_ul_li_img" src="assets/img/product5.png"/>
	                            <div class="home_product_listwrap_ul_li_div">
	                                <a class="home_product_listwrap_ul_li_div_a">보기만해도 푹신푹신 하고 편안한 STOCKSUND 암체어</a>
	                                <a class="home_product_listwrap_ul_li_div_span"></a>
	                            </div>
	                        </li>
	                    </ul>
	                </div>
	            </div>
	            <!-- 이달의 제품 끝 -->

	    		<!-- 홈 퍼니싱 -->
	    		<div class="home_content">
	    			<h4>홈퍼니싱 아이디어 더 보기</h4>
	    			<div class="idea_btn_box">
	                    <!-- 탭 버튼 구성 -->
	    				<ul class="nav nav-pills" id="mytab">
	    					<li class="active"><a id="funiitem" href="#" data-toggle="tab">가구</a></li>
	    					<li><a id="beditem" href="#" data-toggle="tab">침대</a></li>
	    					<li><a id="more" href="#" data-toggle="tab">+4개 더보기</a></li>
							<li><a id="kitchenitem" href="#" data-toggle="tab">주방</a></li>
							<li><a id="sofaitem" href="#" data-toggle="tab">소파</a></li>
							<li><a id="acceptitem" href="#" data-toggle="tab">수납</a></li>
							<li><a id="lightitem" href="#" data-toggle="tab">조명</a></li>
	    				</ul>
	    			</div>
	    			<!-- 이미지 구성 -->
	    			<div id="result">
	    				<div class="home_idea_img">
	    					<a href="#"><img src="https://www.ikea.com/ext/ingkadam/m/10fdb13d3fb1d53c/original/PH156758-crop001.jpg?f=s"></a>
							<a href="#"><img src="https://www.ikea.com/ext/ingkadam/m/2b3e78607f1dab3a/original/PH159258-crop002.jpg?f=xxs"></a>
	    					<a href="#"><img src="https://www.ikea.com/ext/ingkadam/m/5bcf59f5679f89a5/original/PH155458-crop001.jpg?f=xxs"></a>
							<a href="#"><img src="https://www.ikea.com/ext/ingkadam/m/79a4a844140347b4/original/PH155058-crop001.jpg?f=xxs"></a>
	    					<a href="#"><img src="https://www.ikea.com/ext/ingkadam/m/1b5af690c85957f6/original/PH156762-crop001.jpg?f=xxl"></a>
							<a href="#"><img src="https://www.ikea.com/ext/ingkadam/m/c2cb76cd457a0cd/original/PH165571-crop001.jpg?f=xxl"></a>
						</div>
	    			</div>
	    		</div>
	    		<!-- 홈 퍼니싱 끝 -->
			</div>
		</div>
		</section>
		<%@ include file="01_home/footer.jsp" %>

        <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
	    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
		<script src="assets/plugins/sweetalert/sweetalert2.all.min.js"></script>
	    <script src="assets/js/home.js"></script>
	    <script type="text/javascript">


			/* 위시리스트 아이콘버튼 toggle */
			$(".home_wishlist_icon").click(function(e) {
				e.preventDefault();
				$(this).toggleClass("home_wishlist_icon_active")
			});

			$(function() {
		    	$("#kitchenitem").hide();
		    	$("#sofaitem").hide();
		    	$("#acceptitem").hide();
		    	$("#lightitem").hide();
			});

			$(function() {
			/* --------------------banner modalwindow-------------------*/
			$(document).on('click', '#home_banner_detail', function(e) {
				e.preventDefault();
				$("#banner_background").fadeIn(300);
				$("#banner_foreground").fadeIn(200);

			/*-------배너 플러그인-------*/
				var swiper = new Swiper('.swiper-container', {
                spaceBetween: 30,
                centeredSlides: true,
                autoplay: {
                    delay: 6000,
                    disableOnInteraction: false,
                },
                pagination: {
                    el: '.swiper-pagination',
                    type: 'progressbar',
                }
            });
			/*-------배너 플러그인 끝-------*/

			});

			// 배경을 클릭한 경우
			$(document).on('click','#home_banner_background', function(e) {
	        	$(this).fadeOut(300);
	        	$("#hd_menu_foreground").fadeOut(200);
			});

			// 오른쪽 x버튼 (self.close << 쓰는게 깔끔)
			$("#banner_close_button").click(function(e) {
				e.preventDefault();
				$("#banner_background").fadeOut(200);
				$("#banner_foreground").fadeOut(100);
			});
			});



	    	/* section - idea */
            $("#funiitem").click(function(e) {
    			$.ajax({
    				/** ajax 기본 옵션 */
    				cache: false,			 // 캐쉬 사용 금지 처리
    				url: 'assets/api/funiitem.html',// 읽어들일 파일의 경로
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

    		$("#beditem").click(function(e) {
    			$.ajax({
    				/** ajax 기본 옵션 */
    				cache: false,			 // 캐쉬 사용 금지 처리
    				url: 'assets/api/beditem.html',// 읽어들일 파일의 경로
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

			$("#kitchenitem").click(function(e) {
    			$.ajax({
    				/** ajax 기본 옵션 */
    				cache: false,			 // 캐쉬 사용 금지 처리
    				url: 'assets/api/kitchenitem.html',// 읽어들일 파일의 경로
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

    		$("#sofaitem").click(function(e) {
    			$.ajax({
    				/** ajax 기본 옵션 */
    				cache: false,			 // 캐쉬 사용 금지 처리
    				url: 'assets/api/sofaitem.html',// 읽어들일 파일의 경로
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

			$("#acceptitem").click(function(e) {
				$.ajax({
					/** ajax 기본 옵션 */
					cache: false,			 // 캐쉬 사용 금지 처리
					url: 'assets/api/acceptitem.html',// 읽어들일 파일의 경로
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

			$("#lightitem").click(function(e) {
				$.ajax({
					/** ajax 기본 옵션 */
					cache: false,			 // 캐쉬 사용 금지 처리
					url: 'assets/api/lightitem.html',// 읽어들일 파일의 경로
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

			$("#more").click(function() {
    			$("#more").hide(200);
    			$("#kitchenitem").show(200);
    	    	$("#sofaitem").show(200);
    	    	$("#acceptitem").show(200);
    	    	$("#lightitem").show(200);
    	    	$("#mytab").css('width', '460px');
    		}); // end #mybutton click

			 $(document).on("click",".home_product_listwrap_ul_li_div_span", function(e) {
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
		</script>
	</body>
</html>