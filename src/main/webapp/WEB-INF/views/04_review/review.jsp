<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html>

<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<link rel="stylesheet" type="text/css" href="../assets/css/review.css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="../assets/css/common.css">

    <meta charset="UTF-8" />
    <title>Hello JSP</title>
    
</head>

<body>
	<!--리뷰 모달창 -->
	<div id="review_big_box" class="clearfix">
		<div class="review_title_top">
			<h3>상품평</h3>
			<div class="avg_all_star" data-rate="5">
				<i class="fas fa-star"></i>
				<i class="fas fa-star"></i>
				<i class="fas fa-star"></i>
				<i class="fas fa-star"></i>
				<i class="fas fa-star"></i>	
				<span class="review_count">(5)</span>
			</div>
		</div>
		<!-- 평균 고객 평가시작 -->
		<div class="avg_custom_result">
			<h4>평균 고객평가</h4>
			<div class="avg_custom_result_output">
				<div class="avg_custom_star clearfix">
					<div class="pull-left score_row">전반적으로</div>
					<div class="pull-right">
						<div class="avg_all_star" data-rate="3">
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>
							<i class="fas fa-star"></i>	
						</div>
					</div>
				</div>
				<div class="avg_score_group">
					<div class="score_row clearfix position-r">
						<div class="pull-left score_name">손쉬운 조립</div>
						<div class="pull-right position-a">
							<span class="range_box position-r">
								<input type="range" class="range-css avg_easysccore" min="0" max="5" step="1" value="1" disabled/>
								<span class="avg_easy_num star_num position-p">5</span>
							</span>
						</div>
					</div>
					<div class="score_row clearfix position-r">
						<div class="pull-left score_name">제품 가성비</div>
						<div class="pull-right position-a">
							<span class="range_box position-r">
								<input type="range" class="range-css avg_benesccore" min="0" max="5" step="1" value="1" disabled/>
								<span class="avg_bene_num star_num position-p"></span>
							</span>
						</div>
					</div>
					<div class="score_row clearfix position-r">
						<div class="pull-left score_name">제품 품질</div>
						<div class="pull-right position-a">
							<span class="range_box position-r">
								<input type="range" class="range-css avg_qualsccore" min="0" max="5" step="1" value="1" disabled/>
								<span class="avg_qual_num star_num position-p"></span>
							</span>
						</div>
					</div>
					<div class="score_row clearfix position-r">
						<div class="pull-left score_name">제품 외관</div>
						<div class="pull-right position-a">
							<span class="range_box position-r">
								<input type="range" class="range-css avg_apearsccore" min="0" max="5" step="1" value="1" disabled/>
								<span class="avg_apear_num star_num position-p"></span>
							</span>
						</div>
					</div>
					<div class="score_row clearfix position-r">
						<div class="pull-left score_name">제품 기능</div>
						<div class="pull-right position-a">
							<span class="range_box position-r">
								<input type="range" class="range-css avg_funcsccore" min="0" max="5" step="1" value="1" disabled/>
								<span class="avg_func_num star_num position-p"></span>
							</span>
						</div>
					</div>
					
				</div>
			</div>
		</div>
		<!-- 평균 고개평가 끝 -->
		<!-- 리뷰 반복문시작 -->
		<div class="custom_result">
			<div class="clearfix">
				<div class="avg_all_star pull-left" data-rate="3">
					<i class="fas fa-star"></i>
					<i class="fas fa-star"></i>
					<i class="fas fa-star"></i>
					<i class="fas fa-star"></i>
					<i class="fas fa-star"></i>	
				</div>
				<div class="date pull-right">
					2020-11-30
				</div>
			</div>
			<div class="clearfix">
				<div class="revtitle pull-left">good</div>
				<div class="pull-right edit_box">
					<a href="#" class="revdelete"><span class="delete_img"></span>삭제</a>
					<a href="#" class="revedit">수정</a>
				</div>
			</div>
			
			<div class="revcontent">contents</div>
			<div class="revcommend">추천</div>
			<div class="custom_result_output">
				<div class="avg_score_group">
					<div class="score_row clearfix position-r">
						<div class="pull-left score_name">손쉬운 조립</div>
						<div class="pull-right position-a">
							<span class="range_box position-r">
								<input type="range" class="range-css avg_easysccore" min="0" max="5" step="1" value="1" disabled/>
								<span class="avg_easy_num star_num position-p"></span>
							</span>
						</div>
					</div>
					<div class="score_row clearfix position-r">
						<div class="pull-left score_name">제품 가성비</div>
						<div class="pull-right position-a">
							<span class="range_box position-r">
								<input type="range" class="range-css avg_benesccore" min="0" max="5" step="1" value="1" disabled/>
								<span class="avg_bene_num star_num position-p"></span>
							</span>
						</div>
					</div>
					<div class="score_row clearfix position-r">
						<div class="pull-left score_name">제품 품질</div>
						<div class="pull-right position-a">
							<span class="range_box position-r">
								<input type="range" class="range-css avg_qualsccore" min="0" max="5" step="1" value="1" disabled/>
								<span class="avg_qual_num star_num position-p"></span>
							</span>
						</div>
					</div>
					<div class="score_row clearfix position-r">
						<div class="pull-left score_name">제품 외관</div>
						<div class="pull-right position-a">
							<span class="range_box position-r">
								<input type="range" class="range-css avg_apearsccore" min="0" max="5" step="1" value="1" disabled/>
								<span class="avg_apear_num star_num position-p"></span>
							</span>
						</div>
					</div>
					<div class="score_row clearfix position-r">
						<div class="pull-left score_name">제품 기능</div>
						<div class="pull-right position-a">
							<span class="range_box position-r">
								<input type="range" class="range-css avg_funcsccore" min="0" max="5" step="1" value="1" disabled/>
								<span class="avg_func_num star_num position-p"></span>
							</span>
						</div>
					</div>
					
				</div>
			</div>
		</div>
		<!-- 리뷰 반복문 끝 -->
		<div class="add_review pull-right">
			<a href="#">상품평 작성하기</a>
		</div>
	</div>
	
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js"></script>
	<script type="text/javascript">
	$(function(){
		var rating = $(".avg_all_star");
		rating.each(function(){
			var targetScore=$(this).attr('data-rate');
			$(this).find('svg:nth-child(-n+'+targetScore+')').css({color:'#172f50'});
		});
	});
		
	</script>

</body>

</html>