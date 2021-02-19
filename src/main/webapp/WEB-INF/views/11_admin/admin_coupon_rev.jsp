<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>la porte</title>

<!-- font stylesheet -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto&display=swap"
	rel="stylesheet">

<!-- stylesheet -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
<link rel="stylesheet" href="../assets/css/admin_common.css">
<link rel="stylesheet" href="../assets/css/admin_coupon.css">

<!-- javascript -->
<script src="http://code.jquery.com/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<!-- ajax-helper -->
<link rel="stylesheet" href="../assets/plugins/ajax/ajax_helper.css" />
<script src="../assets/plugins/ajax/ajax_helper.js"></script>

</head>
<body>
	<div class="coupon_li_revise">
		<div class="coupon_rev_border">

			<form id='revcoupon-form'
				action='${pageContext.request.contextPath}/11_admin/admin_coupon'>
				<input type="hidden" name="couponno" value= "${output.couponno}" />
				<table class="coupon_reg_card">
					<tr class="coupon_reg_li">
						<td class="coupon_reg">쿠폰명</td>
						<td class="coupon_reg_input">
							<div class="form-inline">
								<div class="form-group">
									<input id="coupon_name" type="text" name="name" value= "${output.name}"
										class="form-control" />
								</div>
							</div>
						</td>
					</tr>

					<tr class="coupon_reg_li">
						<td class="coupon_reg">기간</td>
						<td class="coupon_reg_input">

							<div class="form-inline">
								<div class="form-group">
									<input type="date" class="coupon_date form-control"
										id="coupon_date1" name="startdate" value= "${output.startdate}" /> ~ <input type="date"
										class="coupon_date form-control" id="coupon_date2"
										name="enddate" value= "${output.enddate}" />
								</div>
							</div>
						</td>
					</tr>

					<tr class="coupon_reg_li">
						<td class="coupon_reg">쿠폰금액/할인률</td>
						<td class="coupon_reg_input">
							<div class="form-inline">
								<div class="form-group">
									<input type="text" id="coupon_discount" class="form-control"
										name="discount" value= "${output.discount}"> <input type="radio"
										class="discount_type" name="distype" value="P" value= "${output.distype}" /><span>%퍼센트</span>
									<input type="radio" class="discount_type" name="distype"
										value= "${output.distype}"/><span>원</span>
								</div>
							</div>
						</td>
					</tr>

					<tr class="coupon_reg_li">
						<td class="coupon_reg">중복사용여부</td>
						<td class="coupon_reg_input"><input type="radio"
							name="dupliuse" class="dupli_use" value= "${output.dupliuse}"><span>중복사용가능</span>
							<input type="radio" name="dupliuse" class="dupli_use" value= "${output.dupliuse}"><span>중복사용불가</span></td>
					</tr>


					<tr class="coupon_reg_li">
						<div class="form-group">
							<td class="coupon_reg">쿠폰링크</td>
							<td class="coupon_reg_input">
								<div class="form-inline">
									<div class="form-group">
										<input type="text" id="coupon_link" name="link"
											class="form-control" value= "${output.link}">
									</div>
								</div>
							</td>
						</div>
					</tr>
				</table>

				<button type="reset" id="coupon_rev_cancel">수정취소</button>
				<button type="submit" id="coupon_revise">수정완료</button>
			</form>
		</div>
	</div>
	
		<script
		src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<!--Google CDN 서버로부터 jQuery 참조 -->
	<!-- jQuery Ajax Form plugin CDN -->
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery.form/4.2.2/jquery.form.min.js"></script>
	<!-- jQuery Ajax Setup -->
	<script
		src="${pageContext.request.contextPath}/assets/plugins/ajax/ajax_helper.js"></script>
	
	
	<script type="text/javascript">
	$('#revcoupon-form').ajaxForm({
				//전송 메서드 지정
				method : "PUT",
				//서버에서 200 응답을 전달한 경우 실행됨
				success : function(json) {
					console.log(json);

					//json 결과가 OK일 시 현재 페이지로 새로고침된다.
					if (json.rt == "OK") {
						alert("쿠폰이 수정되었습니다.");
						window.location = "${pageContext.request.contextPath}/11_admin/admin_coupon.do";
					}
				}
			});
	</script>
</body>
</html>