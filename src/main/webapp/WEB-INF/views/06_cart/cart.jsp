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
		       <%--<c:choose> --%> 
			        <%--<c:when test="${output == null || fn:length(output) == 0}">--%>
			        	<h4 class="cart_title">장바구니가 비어있습니다.</h4>
		        	<%--</c:when> --%>
		        	<%--<c:otherwise>--%>
			         	<div class="cart_form">
			         		<%--<c:forEach var="item" items="${output }" varStatus="status"> --%>
			         		<form id="cart_itemlist" name="cartform" method="post" action="${pageContext.request.contextPath}/06_cart/cart/prodno_check.do" enctype="multipart/form-data">
								<input class="cart_checkbox" type="checkbox" checked>
								<div class="cart_itembox">
									<div class="cart_item clearfix">
										<img class="cart_item_img">
										<span>
											<a class="cart_item_title" href="#">${item.pname }</a><br/>
											<p class="cart_item_info">${item.color }</p>
										</span>
										<div class="cart_item_price">${item.totalprice }</div><br/>
										<c:if test="${output.ea >= 1 }">
											<div id="cart_item_1ea">${item.price }</div>
										</c:if>
									</div>
									<div class="cart_count">
										<select id="cart_productcount">
							      			<optgroup label="수량">
							        			<c:forEach begin="1" end="10" var="i">
			                    				<option value="${i }">${i }</option>
			                    				</c:forEach>	
							      			</optgroup>
							       		</select>
										<input type="submit" class="cart_delete" value="삭제"></a>
									</div>
								</div>
							</form>
							<%--</c:forEach> --%>
			         	</div>
		        	<%--</c:otherwise> --%>
	        	<%--</c:choose> --%>
        	
	            <!-- 비 로그인 상태 -->
	            <c:if test = "${my_session != '' }">
		            <div class="cart_none">
		                <div class="cart_login">
		                    <div><h4>로그인</h4>
		                        <div class="cart_text"><a href="${pageContext.request.contextPath}/02_mypage/login.do">로그인 또는 회원가입</a>하시면 더 편리하게 이용하실 수 있어요</div>
		                    </div><span id="hd_mypage_icon"></span>
		                </div>
		            </div>
	            </c:if>
	            
	            <!-- 장바구니 데이터가 있을때 출력 -->
	            <c:if test = "${output != null }">
		            <div id="cart_purchase">
			            <div class="cart_info clearfix">
			            	<p><strong>주문 내역</strong><br/>
			            	이 금액에는 배송비가 포함되어 있지 않으며, 
			            	배송지에 따라 구매가 불가할 수 있습니다.</p>
			            	<hr>
			            	<div>
			            		<p class="cart_total"><b>총 주문금액</b></p>
			            		<span class="cart_totalprice">&#8361; --</span>
			           		</div>
			            </div>
			            <div>
			            	<button id="cart_payment" onclick="location.href='${pageContext.request.contextPath}/07_purchase/purchase.html'">결제하기</button>
			            </div>
		            </div>
	            </c:if>
	            
	            <div class="cart_footer">
	                <div>
	                    <div>
	                    	<button id="cart_toggle">제품번호로 제품 추가하기</button>
	                    	<form id="cart_hidden" name="prodnoadd" method="post" action="${pageContext.request.contextPath }/06_cart/cart/prodno_check.do">
	                    		<div id="cart_productbox">
		                    		<input type="text" id="cart_productno" name="prodno" placeholder="예 : 20001">
		                    		<select id="cart_productcount" name="ea">
		                    			<optgroup label="수량">
			                    			<c:forEach begin="1" end="10" var="i">
			                    				<option value="${i }">${i }</option>
			                    			</c:forEach>
		                    			</optgroup>
		                    		</select>
	                    		</div>
	                    		<div id="cart_addproductbox">
	                    			<input type="submit" id="cart_addproduct" value="제품추가하기">
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
		
		<!--Google CDN 서버로부터 jQuery 참조 -->
	    <script src="//ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	    <!-- jQuery Ajax Form plugin CDN -->
	    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery.form/4.2.2/jquery.form.min.js"></script>
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
		<script src="../assets/plugins/sweetalert/sweetalert2.all.min.js"></script>
	    <script src="../assets/js/home.js"></script>
	    <script type="text/javascript">
	    	
			$(function() {
				/* 제품번호 버튼 toggle */
				$("#cart_toggle").click(function() { $("#cart_hidden").slideToggle(200); });
				$("#cart_toggle").click(function() { 
					if ( $(this).html() == "제품번호로 제품 추가하기" ) {
						$(this).html("닫기")
						} else {
							$(this).html("제품번호로 제품 추가하기");
						}
				});
				// 제품번호로 등록 submit 이벤트 Ajax요청
				$("#cart_hidden").ajaxForm({
					method:"POST",
					seuccess:function(json) {
						console.log(json);
						
						if(json.rt == "OK") {
							aleart("장바구니등록","장바구니에 추가되었습니다.","success");
							window.location = "${pageContext.request.contextPath}/06_cart/cart"
						}
					}
				})
				
				/* 위시리스트 아이콘버튼 toggle */
				$(".home_wishlist_icon").click(function(e) {
					e.preventDefault();
					$(this).toggleClass("home_wishlist_icon_active")
				});
				
				/** 장바구니 추가 */ 
				/* $(document).on("click",".carticon", function(e) {
					e.preventDefault();
					$get("${pageContext.request.contextPath}/06_cart/cart/add", {"prodno":prodno}, function(json) {
						$(".cart_purchase").show();
					});
				}); */
				
				$(".cart_icon").click(function() {
					location.href="${pageContext.request.contextPath}/06_cart/cart/list.do";
				});
				/** $("#carticon").click(function(e) {
					e.preventDefault();
					$(".cart_title").html("장바구니");
					swal("장바구니등록","장바구니에 추가되었습니다.","success");
					
					$(".cart_itemlist").show();
					
					// $(".cart_form").load("../06_cart/cart_form.html");
					var cart_itemlist = $(".cart_itemlist");
				
					$.get('../assets/api/item_info/example.json', function(req) {
						$(".cart_item_img").attr('src', req.img);
						$(".cart_item_title").html(req.name);
						$(".cart_item_info").html(req.type);
						$(".cart_item_price").html("&#8361; "+ req.price);
					
					$(".cart_form").append(cart_itemlist);
					$("#cart_purchase").show();
					});
				}); */
				
				$(document).on("click",".cart_delete", function(e) {
					e.preventDefault();
					swal({
						title: "장바구니삭제",
						html:"삭제하시겠습니까?",
						type:"warning",
						showCloseButton:true,
						confirmButtonText:"확인",
						confirmButtonColor:"#a00",
						showCancelButton:true,
						cancelButtonText:"취소"
					});
				});
				// $(document).on("submit","#cart_itemlist", function(e) {
				// 	e.preventDefault();
					
				// 	var check_list = $(".cart_checkbox:checked");
				// 	if(check_list.length == 0) {
				// 		alert("선택된 항목이 없습니다.");
				// 		return false;
				// 	}
					
				// });
				$(document).on("change","#cart_productcount", function() {
					var count = $(this).val();
					var change_price = $(this).parents(".cart_itembox").find(".cart_item_price");
					var item_1ea = $(this).parents(".cart_itembox").find(".cart_item_1ea");
					var item_price = count * 18600;
					var item_total_price = $(this).parents(".container").find(".cart_totalprice");
					
					$(change_price).html("&#8361; " + item_price);
					$(item_total_price).html("&#8361; " + item_price);
					
					if ( count > 1) {
        				$(item_1ea).show();
        			} else {
        				$(item_1ea).hide();
        			}
				});
    		});
		</script>
		<!-- 미션2/ 총 결제금액 1개 선택해도 맞춰서 진행 -->
		<!-- 미션3/ 체크박스 선택시 금액 변동 -->
	</body>
</html>