<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
		<footer>
			<div class="container">
				<div class="ft_collapse">
					<a href="#content1, #content2, #content3, #content4, #content5">
						<p class="collapse-title">고객문의</p>
						<span id="ft_dropdown_icon"></span>
					</a>
				</div>
				<div id="content1" class="content">
					<a href="${pageContext.request.contextPath}/09_cs/cs.do">고객지원</a>
				</div>
				<div id="content2" class="content">
					<a href="<%=request.getContextPath()%>/09_cs/fa.do">자주 묻는 질문</a>
				</div>
				<div id="content3" class="content">
					<a href="<%=request.getContextPath()%>/09_cs/csmain.do">문의하기</a>
				</div>
				<div id="content4" class="content">
					<a href="${pageContext.request.contextPath}/09_cs/delivery.do">배송조회 및 관리</a>
				</div>
				<div id="content5" class="content">
					<a href="<%=request.getContextPath()%>/09_cs/exchange.do">교환환불</a>
				</div>
				<div class="ft_collapse">
					<a href="#content6">
						<p class="collapse-title">쇼핑하기</p>
						<span id="ft_dropdown_icon"></span>
					</a>
				</div>
				<div id="content6" class="content">
					<a href="<%=request.getContextPath()%>/03_detail/allproduct1.do">쇼핑하기</a>
				</div>
				<div class="ft_collapse">
					<a href="#content7, #content8">
						<p class="collapse-title">서비스</p>
						<span id="ft_dropdown_icon"></span>
					</a>
				</div>
				
				<div id="content8" class="content">
					<a href="${pageContext.request.contextPath}/08_reserve/showroom_info.do">홈 퍼니싱 플래닝 서비스</a>
				</div>
				<ul class="ft_iconbox">
					<li class="ft_app_icon"><a href="#" id="ft_app_box"></a></li>
					<li class="ft_share_icon"><a href="#" id="ft_share_box"></a></li>
				</ul>
				<div class="ft_interikea">
					<div class="ft_legalLinks">
						<ul class="ft_accessterms">
							<li><a href="#">개인정보처리방침</a></li>
							<li><a href="#">웹 사이트 이용약관</a></li>
							<li><a href="${pageContext.request.contextPath}/11_admin/admin_userlist.do">관리자</a></li>
						</ul>
					</div>
					<div class="ft_legalinformation">
						<p>la porte<br/>
						주소 : 서울특별시 서초구 서초대로77길 55<br/>
						만든사람 : 조진경 장명승 김혜지 김연우</p>
					</div>
				</div>
			</div>
		</footer>