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
        <link rel="stylesheet" type="text/css" href="../css/common.css">
        <link rel="stylesheet" type="text/css" href="../css/cs.css">

	<!-- javascript -->
        <script src="http://code.jquery.com/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

	<!-- ajax-helper -->
        <link rel="stylesheet" href="../plugins/ajax/ajax_helper.css" />
        <script src="../plugins/ajax/ajax_helper.js"></script>
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
            
            <!-- 여기가 현재 페이지를 의미합니다. - active클래스 적용됨 -->

			<!-- 검색제외 본문영역 -->
            <div class="container">
                <div class="page-header">
                    <ol class="breadcrumb">
                        <li><a href="../01_home/home.html">홈</a></li>
                        <!-- 여기가 현재 페이지를 의미합니다. - active클래스 적용됨 -->
                        <li class="active"><a href="../09_cs/cs.html">고객 지원</a></li>
                    </ol>
                </div>
                <!--페이지 경로 끝-->
                <div>
                    <div>
                        <h2 class="cs_title">고객 지원</h2>
                    </div>
                    <div class="cs_explain_box">
                        <p>
                            혹시 도움이 필요하신가요? laporte 에서의 경험이 만족스러운
                            기억으로 남도록 안내 및 지원 서비스가
                            항상 준비되어 있습니다.
                        </p>
                    </div>
                    <div class="cs_content_box">
                        <div class="cs_content">
                            <a href="#" class="cs_content_link">
                                <h4>laporte 온라인 구매방법</h4>
                                <span class="cs_arrow_icon"></span>
                                <div class="cs_img_box">
                                    <span class="cs_icon_img" id="cs_shopping"></span>
                                </div>
                            </a>
                        </div>
                        <div class="cs_content">
                            <a href="../09_cs/fa.html" class="cs_content_link">
                                <h4>자주 묻는 질문</h4>
                                <span class="cs_arrow_icon"></span>
                                <div class="cs_img_box">
                                    <span class="cs_icon_img" id="cs_fa"></span>
                                </div>
                            </a>
                        </div>
                        <div class="cs_content">
                            <a href="../09_cs/csmain.html" class="cs_content_link">
                                <h4>La porte 고객지원센터</h4>
                                <span class="cs_arrow_icon"></span>
                                <div class="cs_img_box">
                                    <span class="cs_icon_img" id="cs_center"></span>
                                </div>
                            </a>
                        </div>
                        <div class="cs_content">
                            <a href="../09_cs/delivery.html" class="cs_content_link">
                                <h4>배송조회 및 관리</h4>
                                <span class="cs_arrow_icon"></span>
                                <div class="cs_img_box">
                                    <span class="cs_icon_img" id="cs_delivery"></span>
                                </div>
                            </a>
                        </div>
                        <div class="cs_content">
                            <a href="../09_cs/exchange.html" class="cs_content_link">
                                <h4>교환환불</h4>
                                <span class="cs_arrow_icon"></span>
                                <div class="cs_img_box">
                                    <span class="cs_icon_img" id="cs_return"></span>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>

            </div>
		</section>
		<%@ include file="../01_home/footer.jsp" %>

        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="../js/home.js"></script>
        <script type="text/javascript">
			$(document).ready(function() {
				$("header").load("../01_home/header.html");
				$("footer").load("../01_home/footer.html");
			});
		</script>
	</body>
</html>