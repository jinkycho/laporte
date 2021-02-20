<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


     <div class="col-md-12">
            <div class="card">
              <div class="card-header border-0">
                  <h3 class="card-title">예약취소
                  </h3>
                  <br>
             
                      <li class="appv_before_head">
                        <span>예약매장</span>
                        <span>예약자</span>
                        <span>예약자연락처</span>
                        <span>예약시간</span>
                        <span>컨설팅영역</span>
                        <span>요청사항</span>
                        <span>변경</span>
                      </li>
                      
                    


                    <div id="appv_before_top">
                    	<c:choose>
                    		<%-- 조회결과가 없는경우 --%>
                    		<c:when test="${outputcc==null || fn:length(outputcc)==0 }">
                    		 	<div id="no_res_mssg">
                      				<p> 취소된 예약이 없습니다.</p>
                    			</div>
                    		</c:when>
                    		<%-- 조회결과가 있는 경우 --%>
                    		<c:otherwise>
                    			<%-- 조회 결과에 따른 반복 처리 --%>
                    			<c:forEach var="itemcc" items="${outputcc}" varStatus="status">
                    				<li class="appv_before_li">
                    					<span class="reserveno">${itemcc.reserveno}</span>
                       					<c:if test="${itemcc.showroom=='A'}"><span>강남점</span></c:if>
                       					<c:if test="${itemcc.showroom=='B'}"><span>광명점</span></c:if>
                       					<c:if test="${itemcc.showroom=='C'}"><span>대구점</span></c:if>
                        				<span>${itemcc.name}</span>
                       					<span>${itemcc.phoneno}</span>
                        				<c:if test="${itemcc.time=='9'}"><span>오전 9시</span></c:if>
                        				<c:if test="${itemcc.time=='10'}"><span>오전 10시</span></c:if>
                        				<c:if test="${itemcc.time=='11'}"><span>오전 11시</span></c:if>
                        				<c:if test="${itemcc.time=='12'}"><span>오전 12시</span></c:if>
                        				<c:if test="${itemcc.time=='1'}"><span>오후 1시</span></c:if>
                        				<c:if test="${itemcc.time=='2'}"><span>오후 2시</span></c:if>
                        				<c:if test="${itemcc.time=='3'}"><span>오후 3시</span></c:if>
                        				<c:if test="${itemcc.time=='4'}"><span>오후 4시</span></c:if>
                        				<c:if test="${itemcc.time=='5'}"><span>오후 5시</span></c:if>
                        				
                        				<c:if test="${itemcc.area=='F'}"><span>가구</span></c:if>
                        				<c:if test="${itemcc.area=='C'}"><span>소파/암체어</span></c:if>
                        				<c:if test="${itemcc.area=='B'}"><span>침대</span></c:if>
                        				<c:if test="${itemcc.area=='D'}"><span>수납/정리</span></c:if>
                        				<c:if test="${itemcc.area=='K'}"><span>주방가구/용품</span></c:if>
                        				<c:if test="${itemcc.area=='L'}"><span>조명</span></c:if>
                        				<span>${itemcc.request}</span>
               
                        	  
                      				  </li>
                    			</c:forEach>
                    		</c:otherwise>
                    	</c:choose>
              
                      

               
                  </div>
                </div> 
              </div>
            </div>