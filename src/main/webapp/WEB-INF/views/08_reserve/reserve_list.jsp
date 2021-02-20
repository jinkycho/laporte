<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html>

<head>
    <meta charset="UTF-8" />
    <title>Hello JSP</title>
</head>

<body>
    <table border="1">
    	<thead>
    		<tr>
    			<th width="80" align="center">예약번호</th>
    			<th>예약상태</th>
    	    	<th>매장</th>
    			<th>예약 날짜</th>
    			<th>성함</th>
    			<th>email</th>
    			<th>휴대폰번호</th>
    			<th>방문시간</th>
    			<th>컨설팅 영역</th>
    		</tr>
   		</thead>
   		<tbody>
  
   				<c:forEach var="item" items="${output}" varStatus="status">
   					<c:url value="/08_reserve/reserve_cfm.do" var="viewUrl">
   						<c:param name="reserveno" value="${item.reserveno}" />
   					</c:url>
   					
   					<c:set var="reserveno" value="${item.reserveno}" />
   					<tr>
   						<td><a href="${viewUrl}">${reserveno}</a></td>
   						<td>${item.status}</td>
   						<td>${item.showroom}</td>
   						<td>${item.date}</td>
   						<td>${item.name}</td>
   						<td>${item.email}</td>
   						<td>${item.phoneno}</td>
   						<td>${item.time}</td>
   						<td>${item.area}</td>
   					</tr>
   				</c:forEach>

   		</tbody>
    </table>
</body>

</html>