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
	    <link rel="stylesheet" type="text/css" href="../assets/css/order.css">
	
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
							<a href="${pageContext.request.contextPath}/03_detail/allproduct1.html"><span class="rec_reyword"></span>가구</a>
							<a href="${pageContext.request.contextPath}/03_detail/allproduct3.html"><span class="rec_reyword"></span>침대</a>
							<a href="${pageContext.request.contextPath}/03_detail/allproduct5.html"><span class="rec_reyword"></span>주방</a>
							<a href="${pageContext.request.contextPath}/03_detail/allproduct2.html"><span class="rec_reyword"></span>소파</a>
							<a href="${pageContext.request.contextPath}/03_detail/allproduct4.html"><span class="rec_reyword"></span>수납</a>
							<a href="${pageContext.request.contextPath}/03_detail/allproduct6.html"><span class="rec_reyword"></span>조명</a>
						</div>
					</div>
				</div>
			</div>
			<!-- 검색 끝 -->
			
			<!-- 탭 전체 박스 -->
			<div class="order_tab">
				<!-- 탭 버튼 영역 -->
				<ul class="order_tab_button clearfix">
					<li class="order_tab_item">
						<a class="order_tab_itemlink selected" id="order_tab_link01" href="#">처리중 주문</a>
					</li>
					<li class="order_tab_item">
						<a class="order_tab_itemlink" id="order_tab_link02" href="#">지난 주문</a>
					</li>
				</ul>
			</div>
			
			<!-- 공통 -->
			<div class="container">
				<div id="order_tab_page01">
					<c:choose>
						<c:when test="${output == null || fn:length(output) == 0}">
							<div>
								<div class="order_tab_pagenone">
									<p class="order_none_title">현재 진행중인 주문이 없습니다.</p>
								</div>
							</div>
							<div class="order_none">
								<span id="order_search_icon"></span>
								<div>
									<p><b>찾는 주문 내역이 없으신가요?</b></p>
									<p>매장 또는 비회원으로 주문하신 경우, 여기서 주문내역을 확인할 수 있습니다.
										<a href="#" class="order_link">주문 내역 확인</a>
									</p>
								</div>
								<div class="order_blank">
									<p>찾는 주문 내역이 없으신가요?
										<a href="#" class="order_link">고객지원센터</a> 로 문의해 주세요.
									</p>
								</div>
							</div>
						</c:when>
						<c:otherwise>
							<c:forEach var="item" items="${output }" varStatus="status">
								<c:if test="${deliveyOutput[status.index].deliverystatus==null || output[status.index].deliverystatus!='C'}" >
									<!-- 주문 목록 -->
									<div class="order_page01">
										<p>
											주문 번호 - 
											<span class="order_orderno">${item.orderno }</span><br/>
											주문 날짜 - 
											<span class="order_date">
				                               	<fmt:parseDate value="${item.regdate}" var="regdate" pattern="yyyy-MM-dd" />
				                               	<fmt:formatDate value="${regdate }" pattern="yyyy-MM-dd" />
											</span><br/>
											현황 - 
											<span class="order_condition">
												<c:if test="${item.orderstatus=='N' }">
													일반주문
												</c:if>
												<c:if test="${item.orderstatus=='CC' }">
													취소
												</c:if>
												<c:if test="${item.orderstatus=='CH' }">
													교환
												</c:if>
												<c:if test="${item.orderstatus=='RT' }">
													반품
												</c:if>
												<c:if test="${item.orderstatus=='RF' }">
													환불
												</c:if>
										   </span>
										</p>
										<a class="order_link" href="#">주문 내역 보기</a>
										<hr/>
									</div>
									
									<!-- 주문내역 -->
									<div class="order_list">
									    <div>
									        <div class="order_info01">
									            <h3>주문 내역</h3>
									            <p>주문 번호 : <span class="order_orderno">${item.orderno }</span></p>
									        </div>
									    </div>
									    <hr/>
									    <div class="order_info02">
									        <p>
									            <b>주문 날짜</b><br/>
									            <span class="order_date">
									            	<fmt:parseDate value="${item.regdate}" var="regdate" pattern="yyyy-MM-dd" />
				                               		<fmt:formatDate value="${regdate }" pattern="yyyy-MM-dd" />
								            	</span><br/>
									            <b>주문 번호</b><br/>
									            <span class="order_orderno">${item.orderno }</span><br/>
									            <b>최종 결제 금액</b><br/>
									            &#8361; <span class="order_totalprice"><fmt:formatNumber pattern="###,###,###" value='${item.totalprice }'/></span>
									        </p>
									        <div>
									            <span id="order_icon"></span>
									            <a class="order_return" href="../02_mypage/order_return.html">주문취소</a>
									        </div>
									    </div>
									    <hr/>
									    <div class="order_info03">
									        <div class="order_line">
									            <p><b>택배 배송 내역</b></p>
									            <a href="#"><b><span class="order_delivery_info">+</span></b></a>
									        </div>
									        <div class="order_line">
									            <p><b>택배 배송 제품</b></p>
									            <a href="#"><b><span class="order_delivery_product">+</span></b></a>
									        </div>
									        <div class="order_hidden">
									            <form class="order_itemlist">
									                <img class="order_item_img">
									                <div class="order_item">
									                    <span class="order_item_title">${item.pname }</span><br/>
									                    <span class="order_item_info">${item.color }, ${item.size }</span><br/>
									                    <span class="order_item_productno">${item.prodno }</span><br/>
									                    <span class="order_item_price">
									                    	&#8361; <span class="order_totalprice"><fmt:formatNumber pattern="###,###,###" value='${item.price * item.ea }'/>
									                    </span>
									                </div>
									            </form>
									        </div>
									        <div class="order_userinfo">
									            <p>
									                <b>주소</b><br/>
									                <span class="order_name">${item.name }</span><br/>
									                <span class="order_address">${item.addr1 } ${item.addr2 }</span><br/>
									                <span class="order_email">${item.email }</span><br/>
									            </p>
									        </div>
									    </div>
									    <hr/>
									    <div>
									        <p><b>결제 방법</b><br/>
									        <span class="order_payment">
									        	<c:if test="${item.paytype=='C'}">
	                                        		신용카드
	                                        	</c:if>
	                                        	<c:if test="${item.paytype=='D'}">
	                                        		무통장입금
	                                       		</c:if>
	                                       		<c:if test="${item.paytype=='M'}">
	                                        		휴대폰결제
	                                       		</c:if>
	                                       		<c:if test="${item.paytype=='D2'}">
	                                        		실시간계좌이체
	                                       		</c:if>
									        </span>
									    </div>
									    <hr/>
									    <div>
									        <div>
									            <span>
									                <b>총 주문금액</b>
									            </span>
									            <span class="pull_right">
									                <b><span class="order_price">
						                					&#8361; <span class="order_totalprice"><fmt:formatNumber pattern="###,###,###" value='${item.price * item.ea }'/>
					                				   </span></b>
									            </span>
									        </div>
									        <br/>
									        <div>
									            <span>
									                배송비
									            </span>
									            <span class="pull_right">
									               + &#8361; <span class="order_deliveryprice">${item.d_price }</span>
									            </span>
									            <br/>
									            <span>
									                쿠폰할인
									            </span>
									            <span class="pull_right">
									               - &#8361; <span class="order_deliveryprice">5000</span>
									            </span>
									            <br/>
									            <span>
									                적립금사용
									            </span>
									            <span class="pull_right">
									               - &#8361; <span class="order_deliveryprice">0</span>
									            </span>
									        </div>
									        <hr/>
									        <div>
									            <p>
									                <span>
									                    <b>최종 결제금액</b>
									                </span>
									                <span class="pull_right">
									                    <b>&#8361; <span class="order_totalprice">
									                    			  <fmt:formatNumber pattern="###,###,###" value='${item.totalprice }'/>
									                    		   </span></b>
									                </span>
									            </p>
									        </div>							
									    </div>
									</div>
									<div class="hd_gray_layer" id="hd_menu_background"></div>
									<div class="order_over_layer" id="hd_menu_front">
									    <!-- 메뉴 로고 및 아이콘 -->
									    <div>
									        <table id="order_table01"></table>
									    </div>
									    <br/>
									    <div>
									        <table id="order_table02"></table>
									    </div>
									</div>
								</c:if>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</div>
				<div id="order_tab_page02">
					<!-- 공통 -->
					<c:choose>
						<c:when test="${output == null || fn:length(output) == 0}">
							<div>
								<div class="order_tab_pagenone">
									<p class="order_none_title">현재 진행중인 주문이 없습니다.</p>
								</div>
							</div>
							<div class="order_none">
								<span id="order_search_icon"></span>
								<div>
									<p><b>찾는 주문 내역이 없으신가요?</b></p>
									<p>매장 또는 비회원으로 주문하신 경우, 여기서 주문내역을 확인할 수 있습니다.
										<a href="#" class="order_link">주문 내역 확인</a>
									</p>
								</div>
								<div class="order_blank">
									<p>찾는 주문 내역이 없으신가요?
										<a href="#" class="order_link">고객지원센터</a> 로 문의해 주세요.
									</p>
								</div>
							</div>
						</c:when>
						<c:otherwise>
							<c:forEach var="item" items="${output }" varStatus="status">
								<c:if test="${deliveyOutput[status.index].deliverystatus=='C' && item.paystatus=='Y'}" >
									<!-- 주문 목록 -->
									<div class="order_page01">
										<p>
											주문 번호 - 
											<span class="order_orderno">${item.orderno }</span><br/>
											주문 날짜 - 
											<span class="order_date">
				                               	<fmt:parseDate value="${item.regdate}" var="regdate" pattern="yyyy-MM-dd" />
				                               	<fmt:formatDate value="${regdate }" pattern="yyyy-MM-dd" />
											</span><br/>
											현황 - 
											<span class="order_condition">
												<c:if test="${item.orderstatus=='N' }">
													일반주문
												</c:if>
												<c:if test="${item.orderstatus=='CC' }">
													취소
												</c:if>
												<c:if test="${item.orderstatus=='CH' }">
													교환
												</c:if>
												<c:if test="${item.orderstatus=='RT' }">
													반품
												</c:if>
												<c:if test="${item.orderstatus=='RF' }">
													환불
												</c:if>
										   </span>
										</p>
										<a class="order_link" href="#">주문 내역 보기</a>
										<hr/>
									</div>
									
									<!-- 주문내역 -->
									<div class="order_list">
									    <div>
									        <div class="order_info01">
									            <h3>주문 내역</h3>
									            <p>주문 번호 : <span class="order_orderno">${item.orderno }</span></p>
									        </div>
									    </div>
									    <hr/>
									    <div class="order_info02">
									        <p>
									            <b>주문 날짜</b><br/>
									            <span class="order_date">
									            	<fmt:parseDate value="${item.regdate}" var="regdate" pattern="yyyy-MM-dd" />
				                               		<fmt:formatDate value="${regdate }" pattern="yyyy-MM-dd" />
								            	</span><br/>
									            <b>주문 번호</b><br/>
									            <span class="order_orderno">${item.orderno }</span><br/>
									            <b>최종 결제 금액</b><br/>
									            &#8361; <span class="order_totalprice"><fmt:formatNumber pattern="###,###,###" value='${item.totalprice }'/></span>
									        </p>
									        <div>
									            <span id="order_icon"></span>
									            <a class="order_return" href="../02_mypage/order_return.html">주문취소</a>
									        </div>
									    </div>
									    <hr/>
									    <div class="order_info03">
									        <div class="order_line">
									            <p><b>택배 배송 내역</b></p>
									            <a href="#"><b><span class="order_delivery_info">+</span></b></a>
									        </div>
									        <div class="order_line">
									            <p><b>택배 배송 제품</b></p>
									            <a href="#"><b><span class="order_delivery_product">+</span></b></a>
									        </div>
									        <div class="order_hidden">
									            <form class="order_itemlist">
									                <img class="order_item_img">
									                <div class="order_item">
									                    <span class="order_item_title">${item.pname }</span><br/>
									                    <span class="order_item_info">${item.color }, ${item.size }</span><br/>
									                    <span class="order_item_productno">${item.prodno }</span><br/>
									                    <span class="order_item_price">
									                    	&#8361; <span class="order_totalprice"><fmt:formatNumber pattern="###,###,###" value='${item.price * item.ea }'/>
									                    </span>
									                </div>
									            </form>
									        </div>
									        <div class="order_userinfo">
									            <p>
									                <b>주소</b><br/>
									                <span class="order_name">${item.name }</span><br/>
									                <span class="order_address">${item.addr1 } ${item.addr2 }</span><br/>
									                <span class="order_email">${item.email }</span><br/>
									            </p>
									        </div>
									    </div>
									    <hr/>
									    <div>
									        <p><b>결제 방법</b><br/>
									        <span class="order_payment">
									        	<c:if test="${item.paytype=='C'}">
	                                        		신용카드
	                                        	</c:if>
	                                        	<c:if test="${item.paytype=='D'}">
	                                        		무통장입금
	                                       		</c:if>
	                                       		<c:if test="${item.paytype=='M'}">
	                                        		휴대폰결제
	                                       		</c:if>
	                                       		<c:if test="${item.paytype=='D2'}">
	                                        		실시간계좌이체
	                                       		</c:if>
									        </span>
									    </div>
									    <hr/>
									    <div>
									        <div>
									            <span>
									                <b>총 주문금액</b>
									            </span>
									            <span class="pull_right">
									                <b><span class="order_price">
						                					&#8361; <span class="order_totalprice"><fmt:formatNumber pattern="###,###,###" value='${item.price * item.ea }'/>
					                				   </span></b>
									            </span>
									        </div>
									        <br/>
									        <div>
									            <span>
									                배송비
									            </span>
									            <span class="pull_right">
									               + &#8361; <span class="order_deliveryprice">${item.d_price }</span>
									            </span>
									            <br/>
									            <span>
									                쿠폰할인
									            </span>
									            <span class="pull_right">
									               - &#8361; <span class="order_deliveryprice">5000</span>
									            </span>
									            <br/>
									            <span>
									                적립금사용
									            </span>
									            <span class="pull_right">
									               - &#8361; <span class="order_deliveryprice">0</span>
									            </span>
									        </div>
									        <hr/>
									        <div>
									            <p>
									                <span>
									                    <b>최종 결제금액</b>
									                </span>
									                <span class="pull_right">
									                    <b>&#8361; <span class="order_totalprice">
									                    			  <fmt:formatNumber pattern="###,###,###" value='${item.totalprice }'/>
									                    		   </span></b>
									                </span>
									            </p>
									        </div>					
									    </div>
									</div>
								</c:if>
							</c:forEach>
						</c:otherwise>
					</c:choose>
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
			
	    	$(document).ready(function() {
	    		$("#order_tab_page02").hide();
	    		$(".order_list").hide();
	    	});
	    	
			/* 탭 - 처리중 주문 클릭시 */
			$(document).on("click", "#order_tab_link01", function(e) {
				e.preventDefault();
				
				location.reload();
				
				$(".order_page01").show();
				$(".order_list").hide();
				$("#order_tab_page02").hide();
				$("#order_tab_link01").addClass("selected");
				$("#order_tab_link02").removeClass("selected");
			});

			/* 탭 - 지난 주문 클릭시 */
			$(document).on("click", "#order_tab_link02", function(e) {
				e.preventDefault();
				
				$(".order_page02").show();
				$(".order_list").hide();
				$("#order_tab_page01").hide();
				$("#order_tab_link02").addClass("selected");
				$("#order_tab_link01").removeClass("selected");
			});

			/* 주문내역 클릭시 
			$(document).on("click", ".order_link", function(e) {
				e.preventDefault();
				$(".order_list").show();
				$(".order_page01").hide();
				$(".order_page02").hide();
			}); */

			/* 제품번호 버튼 toggle */
			$(".order_link").click(function() { $(".order_list").slideToggle(200); });
				
			
			
			
			// 처리중주문 >> 더보기 클릭시
			$(document).on("click", ".order_delivery_product", function(e) {
				e.preventDefault();

				$(".order_hidden").slideToggle(200);
				if ( $(this).html() == "+" ) {
					$(this).html("-")
					} else {
						$(this).html("+");
					}
			});

			
			
			
			// 처리중 주문 배송내용 클릭시
			$(document).on("click", ".order_delivery_info", function(e) {
				e.preventDefault();
				$("#hd_menu_background").fadeIn(300);
	        	$(".order_over_layer").fadeIn(200);

				$(document).on("click","#hd_menu_background", function(e) {
					$(this).fadeOut(300);
					$(".order_over_layer").fadeOut(200);
				});

				$.ajax({
					type:"GET",
					dataType : "json",
					url:"../api/item_info/tracking_api.json",
					success:function(req) {
						var delivery = "";
						if ( req.status == false ) {
							delivery += ('<p>' + req.msg + '<p>');
						} else {
							delivery += ('<tr>');                
							delivery += ('<th>' + "보내는사람" + '</th>');                     
							delivery += ('<th>' + req.senderName + '</th>');
							delivery += ('<th>' + "주문번호" + '</th>');                     
							delivery += ('<th>' + req.iSellno + '</th>');                     
							delivery += ('</tr>');     
							delivery += ('<tr>');                
							delivery += ('</tr>');     
							delivery += ('<tr>');
							delivery += ('<th>' + "택배회사" + '</th>');                     
							delivery += ('<th>' + req.company + '</th>');              
							delivery += ('<th>' + "송장번호" + '</th>');                     
							delivery += ('<th>' + req.invoiceNo + '</th>');                 
							delivery += ('</tr>');                                        
						}
						
						$("#order_table01").html(delivery);
						
						var trackingDetails = req.trackingDetails;
						var header ="";
						var myTracking="";
						header += ('<tr>');                
						header += ('<th>' + "시간" + '</th>');
						header += ('<th>' + "장소" + '</th>');
						header += ('<th>' + "유형" + '</th>');
						header += ('<th>' + "전화번호" + '</th>');                     
						header += ('</tr>');     
						
						$.each(trackingDetails,function(key, value) {
							myTracking += ('<tr>');                
							myTracking += ('<td class="time">' + value.timeString + '</td>');
							myTracking += ('<td class="where">' + value.where + '</td>');
							myTracking += ('<td class="kind">' + value.kind + '</td>');
							myTracking += ('<td class="telno">' + value.telno + '</td>');                     
							myTracking += ('</tr>');                                    
						});
						
						$("#order_table02").html(header + myTracking);
						
					}
				});
			});
		</script>
	</body>
</html>