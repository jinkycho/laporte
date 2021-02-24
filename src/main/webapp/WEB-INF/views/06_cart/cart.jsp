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
		<link rel="stylesheet" href="../assets/plugins/sweetalert/sweetalert2.min.css"/>
	    <link rel="stylesheet" type="text/css" href="../assets/css/common.css">
	    <link rel="stylesheet" type="text/css" href="../assets/css/cart.css">
	
	<!-- javascript -->
	    <script src="http://code.jquery.com/jquery.min.js"></script>
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	
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
	       						<a href="${pageContext.request.contextPath}/03_detail/allproduct1.do"><span class="rec_reyword"></span>가구</a>
								<a href="${pageContext.request.contextPath}/03_detail/allproduct3.do"><span class="rec_reyword"></span>침대</a>
								<a href="${pageContext.request.contextPath}/03_detail/allproduct5.do"><span class="rec_reyword"></span>주방</a>
								<a href="${pageContext.request.contextPath}/03_detail/allproduct2.do"><span class="rec_reyword"></span>소파</a>
								<a href="${pageContext.request.contextPath}/03_detail/allproduct4.do"><span class="rec_reyword"></span>수납</a>
								<a href="${pageContext.request.contextPath}/03_detail/allproduct6.do"><span class="rec_reyword"></span>조명</a>
	       					</div>
	       				</div>
	       			</div>
	        </div>
	        <!-- 검색 끝 -->
	        
			<!-- 검색제외 본문영역 -->
	        <div class="container">
	        
	        <!-- 비 로그인 상태 -->
	            <c:if test = "${my_session == null }">
		            <div class="cart_none">
		                <div class="cart_login">
		                    <div><h4>로그인</h4>
		                        <div class="cart_text"><a href="${pageContext.request.contextPath}/02_mypage/login.do">로그인 또는 회원가입</a>하시면 더 편리하게 이용하실 수 있어요</div>
		                    </div><span id="hd_mypage_icon"></span>
		                </div>
		            </div>
	            </c:if>
	        
		       <c:choose>
			        <c:when test="${output == null || fn:length(output) == 0}">
			        	<h4 class="cart_title">장바구니가 비어있습니다.</h4>
		        	</c:when>
		        	<c:otherwise>
			         	<div class="cart_form">
			         		<h4 class="cart_title">장바구니</h4>
			         		<form id="cart_itemlist" method="post" name="cartform" action="${pageContext.request.contextPath}/07_purchase/purchase/<%out.print(session.getAttribute("my_session"));%>">
			         			<c:set var="sum" value="0" />
			         			<c:forEach var="item" items="${output }" varStatus="status">
									<div class="cart_itembox">
										<input type="checkbox" class="cart_checkbox" name="chk[]" value="${item.cartno }" data-cartno="${item.cartno }" checked>
										<div class="cart_item">
											<img class="cart_item_img" src="${item.thumbnailUrl}">
											<span>
												<a class="cart_item_title" href="#">${item.pname }</a>
												<p class="cart_item_info">${item.color}, ${item.size }</p>
											</span>
											<div class="cart_item_1ea">${item.ea } 개</div><br/>
											<div class="cart_item_price">
												<fmt:formatNumber pattern="###,###,###" value='${item.price * item.ea }'/>
											</div>
										</div>
									</div>
									<div class="cart_count">
										<select class="cart_productcount" name="ea">
						      				<optgroup label="수량">
						        				<c:forEach begin="1" end="10" var="i">
		                    						<option value="${i }">${i }</option>
		                    					</c:forEach>	
						      				</optgroup>
						       			</select>
							       		<a href="#" class="cart_edit" data-cartno="${item.cartno }">변경</a>
										<a href="#" class="cart_delete" data-cartno="${item.cartno }">삭제</a>
									</div>
									<c:set var="sum" value="${sum + (item.price * item.ea)}" />
								</c:forEach>
								<div id="cart_purchase">
					            	<div class="cart_info clearfix">
					            		<p><strong>주문 내역</strong><br/>
					           		 	이 금액에는 배송비가 포함되어 있지 않으며, 
					            		배송지에 따라 구매가 불가할 수 있습니다.</p>
					            		<hr>
					            		<div>
					            			<p class="cart_total"><b>총 주문금액</b></p>
					            			<span class="cart_totalprice">
					            				&#8361; <fmt:formatNumber pattern="###,###,###" value='${sum }'/>
				            				</span>
					           			</div>
					           	 	</div>
					            	<div>
					            		<button type="submit" id="cart_payment">결제하기</button>
					          	 	</div>
				            	</div>
							</form>
			         	</div>
		        	</c:otherwise>
	        	</c:choose>
        	
	            <div class="cart_footer">
	                <div>
	                    <div>
	                    	<button id="cart_toggle">제품번호로 제품 추가하기</button>
	                    	<form id="cart_hidden" action="${pageContext.request.contextPath}/06_cart/cart">
	                    		<div id="cart_productbox">
		                    		<input type="hidden" name="userno" value="<%out.print(session.getAttribute("my_session"));%>" />
		                    		<input type="text" id="cart_productno" name="prodno" placeholder="예 : 20001" />
		                    		<select class="cart_productcount" name="ea">
		                    			<optgroup label="수량">
			                    			<c:forEach begin="1" end="10" var="i">
			                    				<option value="${i }">${i }</option>
			                    			</c:forEach>
		                    			</optgroup>
		                    		</select>
	                    		</div>
	                    		<div id="cart_addproductbox">
	                    			<button type="submit" id="cart_addproduct">제품추가하기</button>
	                   			</div>
	                    	</form>
	                    </div>
	                </div>
	                <div id="cart_return">
	                    <span id="cart_return_icon"></span>반품 정책 365일 이내에 제품 환불 가능
	                </div>
	           	</div>
	           	
				<!-- 모든 제품 -->
	            <div>
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
		            					<a href="#"><img class="home_item_img" alt="STUVA 스투바 / FRITIDS 프리티스" 
		            						src="https://secure.ikea.com/kr/ko/images/products/strala-seuteulolla-ledteibeuljangsigjomyeong__0675789_PE719481_S3.JPG"></a>
		            					<a href="#">
		            						<p class="home_item_title">STRÅLA 스트롤라</p>
		            						<p class="home_item_info">LED테이블장식조명 
		            						17x11 cm<br/>
		            						<span class="home_item_price">&#8361; 18,600</span></p>
	            						</a>
	           						</div>
	            					<a id="carticon" class="home_cartloc" href="${pageContext.request.contextPath}/06_cart/cart.do?prodno=20001"><span class="cart_icon"></span></a>
	            				</div>
	            			</li>
	            			<!-- 항목(1) 끝 -->
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
	        </div>
		</section>
		<%@ include file="../01_home/footer.jsp" %>
		
	    <!-- Handlebar CDN 참조 -->
    	<script src="//cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.4.2/handlebars.min.js"></script>
    	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
   		<!-- jQuery Ajax Form plugin CDN -->
   		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery.form/4.2.2/jquery.form.min.js"></script>
    	<script src="${pageContext.request.contextPath}/assets/plugins/ajax/ajax_helper.js"></script>
		<script src="../assets/plugins/sweetalert/sweetalert2.all.min.js"></script>
	    <script src="../assets/js/home.js"></script>
	    <script type="text/javascript">
	    	
	    	// 총 금액 단위에 천의자리만큼 (,) 찍기 함수
	    	function addComma(num) {
	    	  var regexp = /\B(?=(\d{3})+(?!\d))/g;
	    	  return num.toString().replace(regexp, ',');
	    	}
	    
			$(function() {
				
				/* 위시리스트 아이콘버튼 toggle */
				$(".home_wishlist_icon").click(function(e) {
					e.preventDefault();
					$(this).toggleClass("home_wishlist_icon_active")
				});
				
				
				/* 제품번호 버튼 toggle */
				$("#cart_toggle").click(function() { $("#cart_hidden").slideToggle(200); });
				$("#cart_toggle").click(function() { 
					if ( $(this).html() == "제품번호로 제품 추가하기" ) {
						$(this).html("닫기")
						} else {
							$(this).html("제품번호로 제품 추가하기");
						}
				});
				
				
				/* 총 가격 */
				$(".cart_checkbox").change(function() {
					var sum = 0;
					var count = $("input:checkbox[name='chk[]']").length;
					
					$(".cart_checkbox").each(function() {
						if($(this).is(":checked") == true ) {
							sum += parseInt($(this).parent().find(".cart_item_price").text().replace(",",""));
						} 
					});
					
					// 미리 정의해둔 (,) 찍는 함수에 대입
					sum = addComma(sum);
					
					console.log(addComma);
					$(".cart_totalprice").html("&#8361; " + sum);
				});
			
				
				/* 추가 버튼 */
				// 제품번호로 등록 submit 이벤트 Ajax요청
				$("#cart_hidden").ajaxForm({
					method:"POST",
					success:function(json) {
						console.log(json);
						
						if(json.rt == "OK") {
							alert("장바구니에 추가되었습니다.");
							window.location = "${pageContext.request.contextPath}/06_cart/cart.do?";
						}
					}
				});
			});
				
			/* 삭제 버튼 */
			$(document).on("click", ".cart_delete", function(e) {
				e.preventDefault();
				
				var current = $(this);					// 이벤트가 발생한 버튼
				var cartno = current.data('cartno');	// data-cartno 값을 가져옴
				
				// 삭제확인
				if (!confirm("정말 장바구니를 삭제하시겠습니까?")) {
					return false;
				}
				
				// delete 메서드로 ajax 요청
				$.delete("${pageContext.request.contextPath}/06_cart/cart", {
					"cartno":cartno
				}, function(json) {
					if(json.rt == "OK") {
						alert("삭제되었습니다");
						// 삭제 완료 후 목록 페이지 이동
						window.location = "${pageContext.request.contextPath}/06_cart/cart.do";
					}
				});
			});
			
			/* 수정 버튼 */
			$(document).on("click",".cart_edit", function(e) {
				e.preventDefault();
				
				var current = $(this);					// 이벤트가 발생한 버튼
				var cartno = current.data('cartno');	// data-cartno 값을 가져옴
				var ea = current.parent().find("select[name=ea]").val();	// 드롭다운 선택 값 가져옴
				if (!confirm("정말 수정하시겠습니까?")) {
					return false;
				}
				
				// put 메서드로 ajax 요청
				$.put("${pageContext.request.contextPath}/06_cart/cart", {
					"cartno":cartno,
					"ea":ea
				}, function(json) {
					if(json.rt == "OK") {
						alert("변경되었습니다");
						// 변경 완료 후 목록 페이지 이동
						window.location = "${pageContext.request.contextPath}/06_cart/cart.do";
					}
				});
			});
			
		</script>
	</body>
</html>