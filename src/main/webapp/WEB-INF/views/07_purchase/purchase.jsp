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

<!-- font stylesheet -->
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
	
<!-- stylesheet -->
    <link rel="stylesheet" href="../assets/dist/css/metallic/zebra_datepicker.css" type="text/css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
  	<link rel="stylesheet" type="text/css" href="../assets/css/common.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/cart.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/purchase.css">


<!-- javascript -->
    <script src="https://code.jquery.com/jquery-3.5.0.min.js"></script>
	<script>window.jQuery || document.write('<script src="path/to/jquery-3.5.0.js"><\/script>')</script>
	 <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<!-- ajax-helper -->
    <link rel="stylesheet" href="../assets/plugins/ajax/ajax_helper.css" />
    <script src="../assets/plugins/ajax/ajax_helper.js"></script>

<!-- sweetalert -->
<link rel="stylesheet" href="../assets/plugins/sweetalert/sweetalert2.min.css">

</head>

<body>
<%@ include file="../01_home/header.jsp" %>
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
<!-- 검색 끝-->


<div id="purchase">
<!-- 주문 정보 시작 -->
	<div class="purchase_detail">
		<div class="cart_item">
    		<h4>주문 정보</h4>
   			<a class="product_revise" href="../06_cart/cart.html">수정</a>
    		<br />
    		<img class="cart_item_img">
        	 <div>
         		<a class="cart_item_title" href="#"></a><br/>
                <span class="cart_item_info"></span>
             	<span class="cart_item_num"></span>
                 
             </div>
		</div>

	<div class="purchase_msg clearfix">
		<span id="info_icon">정보</span>
		이 금액에는 배송비가 포함되어 있지 않으며, 배송지에 따라 구매가 불가 할 수 있습니다. </div>
		<hr class="clearfix">

		<div class="purchase_total_price">
			<p>총 주문 금액</p>
 			<span class="cart_item_price"></span>
		</div>

		<hr class="clearfix">
	</div>
<!-- 주문 정보 끝 -->

<!-- 우편번호 조회 시작 -->
	<div class="purchase_postcode step_line">
		<h3 class="step_label">1</h3>
		<p class="step_text">우편번호를 입력하면 정확한 재고 확인 및 배송비가 표시됩니다.</p>

 		<button id="find_pc" class="purchase_btn">우편번호 찾기
         </button>

		 <div id="daum_pc_find">
		 </div>
    </div>
 <!-- 우편번호 조회 끝 -->

 <!-- 배송방법 선택 시작 -->
<div id="purchase_del_type" class="step_line">
    <div class="delivery_pc_add">
    <span class="loc_icon">위치표시</span>
    <p>배송지:</p>
    <a id="pc_revise" class="product_revise" href="#">수정</a>
    <div id="pc_address_input"></div>
    </div>

    <div class="delivery_type_select clearfix">
    <span id="delivery_icon">배송아이콘</span>
    <p>배송</p>

    <form id="delivery_type_select_li">
    <input type="radio" name="delivery" class="delivery_type  clearfix" id="normal_del" value="normal" checked/>
    <label for="normal_del">일반배송</label>
    <span class="delivery_price">&#8361; 5,000 </span>

    <input type="radio" name="delivery" class="delivery_type clearfix" id="truck_del" value="truck" />
    <label for="truck_del">트럭배송</label>
     <span class="delivery_price">&#8361; 30,000 </span>
    </form>

    <br />

    <br class="clearfix"/>
    <p>배송 예정일</p>
    <span class="est_delivery_date" id="est_delivery_date_input"></span>
    </div>
    <hr>

    <div class="del_service_cost">
    <span>전체 서비스 비용</span>
    <span id="selected_delivery" class="delivery_price">&#8361; 5,000</span>
    </div>

 <button id="next_step" class="purchase_btn">다음</button>

</div>
<!-- 배송방법 선택 끝 -->

<!-- 배송 요약 정보 -->
<div id="mydelinfo_summary" class="step_line">
    <h4>배송정보</h4>
    <a id="del_revise" class="product_revise" href="#">수정</a>
    <span>일반 배송(택배는 아래 선택한 배송 날짜로 부터 3-5일 소요되며, 제품 특성에 따라 
        2박스 이상으로 분리배송 될 수 있습니다.</span>
    <ul class="my_del_summary_li clearfix">
        <span class="loc_icon">위치아이콘</span>
        <li id="pc_address_input1"></li>
    </ul>
    

    <ul class="my_del_summary_li clearfix">
        <span class="cal_icon">달력아이콘</span>
        <li id="date_input"><p>2020.12.30 09:00-13:00</p></li>
    </ul>
        
</div>
    


<!-- 구매-배송지입력 시작 -->
<div class="purchase_delivery step_line">

    <div id="step_sec">
        <h3 class="step_label">2</h3>
        <p class="step_text">배송지 정보를 입력해주세요.</p>
    </div>

    <div id="purchase_delivery_first" class="purchase_delivery_first1">

    <li class="delivery_address_li">
    <p>이름</p>
    <input type="text" id="delivery_name" class="delivery_address">
    </li>

    <li class="delivery_address_li">
    <p>이메일</p>
    <input type="text" id="delivery_email" class="delivery_address">
    </li>

    <li class="delivery_address_li">
    <p>전화번호(국가번호없이 전화번호 11자리만 입력해주세요.예:01012345678)</p>
    <input type="text" id="delivery_phone" class="delivery_address" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');">
    </li>

    <li class="delivery_address_li">
    <p>주소(한국어 주소만 가능/Please write in Korean only)</p>
    <input type="text" id="delivery_address01" class="delivery_address" disabled>
    </li>

    <li class="delivery_address_li">
    <p>상세주소</p>
    <input type="text" id="delivery_address02" class="delivery_address" disabled>
    </li>

    <button id="purchase_con" class="purchase_btn">계속</button>
</div>




<div id="purchase_delivery_sec">
    <p>배송지 유형은 어떻게 되나요?</p>
    <li class="delivery_type_li">
    <input type="radio" name="building_type" class="purchase_type select"><span>아파트</span>
    </li>
    <br />
    <li class="delivery_type_li">
    <input type="radio" name="building_type" class="purchase_type select"><span>사무실</span>
    </li>
    <br />
    <li class="delivery_type_li">
    <input type="radio" name="building_type" class="purchase_type select"><span>단독주택</span>
    </li>

    <p>엘레베이터 없이 호수 기준으로 4층 이상으로 배송시 사다리차가 필요합니다. 사다리차가 서비스(9만원)가 필요한가요?</p>
    <li class="delivery_type_li">
    <input type="radio" name="add_service" class="purcahse_type select"><span>아니요</span>
    </li>
    <br/>
    <li class="delivery_type_li">
    <input type="radio" name="add_service" class="purcahse_type select"><span>네</span>
    </li>
    <br/>

    <p>배송기사님이 배송 전 꼭 알아야 하는 정보가 있나요?(예:주차제한, 출입 가능 시간 제한 등)</p>
    <p>자세한 내용을 알려주세요.</p>
    <input type="text" class="purchase_type detail_text">

    <br />

    <p>배송 중 제품이 안전하게 옮겨질 수 있도록 계단 및 복도의 폭이 150cm 이상이거나 현관문의 폭이 90cm 이상인가요?</p>
    <li class="delivery_type_li">
    <input type="radio" name="size_limit" class="purcahse_type select"><span>아니요</span>
    </li>
    <br />
    <li class="delivery_type_li">
    <input type="radio" name="size_limit" class="purcahse_type select"><span>해당 없음</span>
    </li>
    <br />
    <li class="delivery_type_li">
    <input type="radio" name="size_limit" class="purcahse_type select"><span>네</span>
    </li>
    <br />
    <button id="purchase_save" name="size_limit" class="purchase_btn">답변 저장하기</button>
</div>


 <div id="purchase_delivery_third">
    <div id="step_sec">
        <h3 class="step_label">2</h3>
        <p class="step_text">배송일 정보를 입력해주세요.</p>
    </div>

	<div class="purchase_calendar">
         <span id="delivery_icon2">트럭아이콘</span>
		  <h4>배송</h4>
          <br/>

          <li class="purchase_service_cost">
            <p class="delivery_final_type">일반배송</p>
            <p>배송: 4-10일</p>
            <span class="delivery_price_1 clearfix">&#8361; 5,000</span>
          </li>
            <br />

			<span class="est_delivery_date_title">서비스 이용일</span>
             <span class="est_delivery_date">2020.12.30 09:00-13:00</span>
            <hr>
			<div id="container" style="margin: 10px 0 15px 0; height: 255px; position: relative"></div>
				<input id="datepicker-always-visible" type="text" class="form-control" data-zdp_readonly_element="false"
					placeholder="캘린더에서 날짜를 선택하세요.">
                <br />
                <li class="delivery_time_li">
				<input type="radio" name="delivery_time" class="delivery_time select"><span>13:00-17:00</span>
                </li>
                <li class=delivery_time_li>
				<input type="radio" name="delivery_time" class="delivery_time select"><span>17:00-21:00</span>
                </li>

	</div>
   <hr>
    <div class="purchase_summary">
        <li class="purchase_total_cost">
            <span>전체 서비스 비용</span>
            <span class="delivery_final_price">5000</span>
            <span class="price_won">&#8361;</span>
        </li>
    <hr>
        <li class="purchase_total_cost">
            <span>주문 금액</span>
            <span class="purchase_final_price"></span>
            <span class="price_won">&#8361;</span>
        </li>
        <li class="purchase_total_cost">
    <hr>
            <span>쿠폰 / 적립금</span>
            <label class="purchase_summary_coupon">보너스 쿠폰</label>
                 <select id="coupon_select">
                    <option value="">쿠폰을 선택 해주세요.</option>
                    <option id="join_coupon" value="5">회원가입 쿠폰 5%</option>
                    <option id="bday_coupon" value="10">생일쿠폰 쿠폰 10%</option>
                </select>
            <label class="purchase_summary_point">적립금</label>
            <input id="point_input" type="text" placeholder="0">
            <button class="point_useall">모두 사용</button>
            <p class="point_left">적립 마일리지</p>
            <p class="point_left" id="user_point">0p</p>
            <p class="point_info">-할인쿠폰 제외 상품이 포함되어 있는 경우, 해당 제품을 제외하고 할인이 적용됩니다</p>
            <p class="point_info">-쿠폰에 따라 최대 쿠폰 사용 금액이 제한될 수 있습니다.</p>
            <hr>
            <span>총 결제 금액</span>
            <span id="delandpur_final_price"></span>
            <span class="price_won">&#8361;</span>

        </li>
    <hr>
    </div>

    <button id="purchase_next" class="purchase_btn">다음</button>

    </div>
</div>


<div id="myinfo_summary" class="step_line">
    <h4>나의 세부 정보</h4>
    <a id="myinfo_revise" class="product_revise" href="#">수정</a>
    <li class="my_summary_li clearfix">
        <span id="my_icon">사람아이콘</span>
        <span id="customer_name"></span>
    </li>
    
    <li class="my_summary_li clearfix">
        <span id="email_icon">이메일아이콘</span>
        <span id="customer_email"></span>
    </li>
    
    <li class="my_summary_li clearfix">
        <span id="phone_icon">전화아이콘</span>
        <span id="customer_phone"></span>
    </li>

    <li class="my_summary_li clearfix">
        <span class="loc_icon">위치아이콘</span>
        <span id="customer_address"></span>
    </li>


</div>

<div class="purchase_payment step_line">
    <h3 class="step_label">3</h3>
    <p class="step_text">어떤 방법으로 결제하시겠어요?</p>
    
    <div class="payment_type_btn">
        <button>신용/체크카드</button>
        <button>무통장입금(가상계좌)</button>
        <button>휴대폰결제</button>
        <button>실시간계좌이체</button>
    </div>


</div>
</div>
<%@ include file="../01_home/footer.jsp" %>

<!-- swweetalert -->
<script src="../assets/plugins/sweetalert/sweetalert2.all.min.js"></script>
<script src="../assets/js/home.js"></script>

<script type="text/javascript">
$(document).ready(function() {

    //장바구니 상품 정보 가져오기 
    $.get('../assets/api/item_info/example.json', function(req) {
	    $(".cart_item_img").attr('src', req.img);
		$(".cart_item_title").html(req.name);
        $(".cart_item_info").html(req.type);
		$(".cart_item_num").html(req.num);
        $(".cart_item_price").html("&#8361; "+ req.price);
		$(".purchase_final_price").html(req.price);
        
        });
                    
    //구매 첫번째를 제외한 단계 숨기기
    $('#purchase_del_type').hide()
	$('#purchase_delivery_first').hide()
    $('#purchase_delivery_sec').hide()
    $('#purchase_delivery_third').hide()
    $('#mydelinfo_summary').hide()
    $('#myinfo_summary').hide()
    $('.payment_type_btn').hide()


	//달력 불러오기
	$('#datepicker-always-visible').Zebra_DatePicker({
        always_visible: $('#container'),
        direction: [1,14],
        disabled_dates: ['* * * 0']
    });
});


    //우편번호 찾기
    $('#find_pc').click(function(e){
        e.preventDefault();
        //다음 API 불러오기
        $.get("${pageContext.request.contextPath}/07_purchase/daum_pc_find.do", {html}, function(req){
        //이미 있는 요소는 비운다.
        $("#daum_pc_find").empty();
        // 준비된 요소에게 읽어온 내용을 출력한다.
        $("#daum_pc_find").append(req);
        },"html");
        $("#find_pc").hide()

        //배송 예상 날짜 계산하기 , 오늘 날짜 +5
        var date= new Date();
        date.setDate(date.getDate()+5);

        var yy= date.getFullYear() ;
        var mm= date.getMonth()+1;
        var dd=date.getDate();

        //배송 유형 선택 단계에 예상 날짜 전달
        var estDelDate = yy + "." + ("0" + mm).slice(-2)+ "." 
        + ("0" + dd).slice(-2)+ " 09:00 ~ 13:00";
        var p = $("<p>");
        p.html(estDelDate);
        $('.est_delivery_date').html(p);

        //배송 날짜 배송 정보 요약 단계로 전달
        var estDelDate1 = yy + "." + ("0" + mm).slice(-2)+ "." 
        + ("0" + dd).slice(-2)+ " 09:00 ~ 13:00";
        var p1 = $("<p>");
        p1.html(estDelDate1);
        $('#date_input').html(p1);
    });
    });

    //배송 선택 단계에서 수정 클릭 시
    $('#pc_revise').click(function(e){
        e.preventDefault();
        //배송 선택 단계 숨기기
        $('#purchase_del_type').hide()
        //우편번호 찾기 보이기
        $('.purchase_postcode').show()
    });

    //배송 선택 시
    $('.delivery_type').change(function(e){
        e.preventDefault();
        var deliveryType = $("input[name='delivery']:checked").val();
    
        //일반배송 선택 시 
        if(deliveryType == "normal"){
            //배송정보가 필요한 단계에 배송 정보 전달
            $('#selected_delivery').html("&#8361; 5,000");
            $('.delivery_final_type').html("일반배송");
            $('.delivery_price_1').html("&#8361; 5,000");
            $('.delivery_final_price').html("5000");

        }
        
        //트럭배송 선택 시
        else if(deliveryType == "truck"){
            //배송정보가 필요한 단계에 배송 정보 전달
            $('#selected_delivery').html("&#8361; 30,000");
            $('.delivery_final_type').html("트럭배송");
            $('.delivery_price_1').html("&#8361; 30,000");
            $('.delivery_final_price').html("30000");
        }
    });

   
    

    //배송 선택 단계 다음버튼 클릭 시
    $('#next_step').click(function(e){
        e.preventDefault();
        $('#purchase_del_type').hide()
        $('#purchase_delivery_first').show()
        $('#mydelinfo_summary').show()

        });


     //배송정보 요약에서 수정 클릭 시
     $('#del_revise').click(function(e){
        e.preventDefault();
        //배송 요약 단계 숨기기
        $('#mydelinfo_summary').hide()
        //우편번호 찾기 보이기
        $('.purchase_postcode').show()
    });

    //배송지 정보 입력 후 ->입력값 나의 세부 정보로 넘어감
    $('#purchase_con').click(function(e){
        e.preventDefault();
        var delName= $('#delivery_name').val();
        var delEmail= $('#delivery_email').val(); 
        var delPhoneNo = $('#delivery_phone').val();
        var delHomeAddress= $('#delivery_address01').val();
    

        if(!delName){
            swal('확인','이름을 입력 해주세요.','warning');
            $('#delivery_name').focus();
            return false;
        }

        if(!delEmail){
            swal('확인','이메일을 입력 해주세요.','warning');
            $('#delivery_emiail').focus();
            return false;
        }


        if(!delPhoneNo){
            swal('확인','핸드폰 번호를 입력 해주세요.','warning');
            $('#delivery_phone').focus();
            return false;
        }
        
        var NameP = $("<p>");
        NameP.html(delName);
        
        var emailP = $("<p>");
        emailP.html(delEmail);
        
        var phoneP = $("<p>");
        phoneP.html(delPhoneNo);

        var addressP = $("<p>");
        addressP.html(delHomeAddress);

        $('#customer_name').html(NameP);
        $('#customer_email').html(emailP);
        $('#customer_phone').html(phoneP);
        $('#customer_address').html(addressP);
        
        $('#purchase_delivery_first').hide()
        $('#purchase_delivery_first').next().show()
    });

    //배송지 유형의 질문을 선택하지 않았을때, alert 창이 뜨도록 설정
    $('#purchase_save').click(function(e){
        e.preventDefault();

        var delFprice = $('.delivery_final_price').html();
        var purFprice = $('.purchase_final_price').html();
        var delandpurFprice = parseInt(delFprice) + parseInt(purFprice);
            
        $('#delandpur_final_price').html(delandpurFprice);

        var builType = $("input[name='building_type']:checked").val();
        if(!builType){
            swal('확인','배송지 유형을 선택해주세요.','warning');
            return false;
        }
        var serviceAdd = $("input[name='add_service']:checked").val();
        if(!serviceAdd){
            swal('확인','사다리차 서비스 필요 여부를 선택해주세요.','warning');
            return false;
        }

        var sizeLimit = $("input[name='size_limit']:checked").val();
        if(!sizeLimit){
            swal('확인','계단 및 복도의 폭에 대한 정보를 선택해주세요.','warning');
            return false;
        }

     $('#purchase_delivery_sec').hide()
     $('#step_sec').hide()
     $('#purchase_delivery_sec').next().show()

    });

    //배송일과 시간 선택하지 않았을 때, alert창이 뜨도록 설정
    $('#purchase_next').click(function(e){
         e.preventDefault();

         var datePick = $("#datepicker-always-visible").val();
         if(!datePick){
             swal('확인','배송일을 선택해주세요.','warning');
             return false;
         }


         var deliveryTime = $("input[name='delivery_time']:checked").val();
         if(!deliveryTime){
             swal('확인','배송시간을 선택해주세요.','warning');
             return false;
         }

        $('#purchase_delivery_third').hide()
        $('.purchase_delivery').hide()
        $('#myinfo_summary').show()
        $('.payment_type_btn').show()

    });

    //쿠폰선택 시 총 결제 금액에 적용
    $('#coupon_select').change(function(e){
        e.preventDefault();
        var couponSelect = $('#coupon_select').val();
        var couponIdx = $('#coupon_select').index();
        var couponDiscount = (100-parseInt(couponSelect))/100;

        var delFprice = $('.delivery_final_price').html();
        var purFprice = $('.purchase_final_price').html();
        var delandpurFprice = (parseInt(delFprice) + parseInt(purFprice)) * couponDiscount;
        
        $('#delandpur_final_price').html(delandpurFprice);

        if(couponIdx == 1){    
            $(this).children('#join_coupon').remove();
        }else if(couponIdx == 2){
            $(this).children('#bday_coupon').remove();
        }
    });

    //적립금 사용 시 총 결제 금액에 적용
    $('.point_useall').click(function(e){
        e.preventDefault();
        var pointInput = $('#point_input').val();
        var pointDiscount = parseInt(pointInput);
        var delandpurFprice = $('#delandpur_final_price').html();
        var delandpurFprice1 = parseInt(delandpurFprice) - pointDiscount;

        
         $('#delandpur_final_price').html(delandpurFprice1).prop('disabled','true');
    });

     //나의 세부 정보 수정 클릭 시
        $('#myinfo_revise').click(function(e){
            e.preventDefault();
            //나의 세부 정보 숨기기
            $('#myinfo_summary').hide()
            //배송지 정보 입력 단계로 이동
            $('.purchase_delivery').show()
            $('#step_sec').show()
            $('#purchase_delivery_first').show()

        });



        /* header fixed */
            // 스크롤 체크 변수 선언
            var didScroll;
            var lastScrollTop = 0;
            var delta = 5; // 동작의 구현이 시작되는 위치
            var navbarHeight = $("header").outerHeight(); // 영향을 받을 요소
            // 스크롤시에 사용자가 스크롤했다는 것을 알림
            $(window).scroll(function(event) {
                didScroll = true;
            });
            // hasScrolled()를 실행하고 didScroll 상태를 재설정
            setInterval(function() {
                if (didScroll) {
                    hasScrolled();
                    didScroll = false;
                }
            }, 250);

            function hasScrolled() {
                var st = $(this).scrollTop();
                if (Math.abs(lastScrollTop - st) <= delta)
                    return;

                if (st > lastScrollTop && st > navbarHeight) {
                    // 스크롤 내릴때
                    $("header").removeClass("nav-down").addClass("nav-up");
                } else {
                    // 스크롤 올릴때
                    if(st + $(window).height() < $(document).height()) {
                        $("header").removeClass("nav-up").addClass("nav-down");
                    }
                }
                lastScrollTop = st;
            }

        $(function() {
        /* header - menu modalwindow*/
            $("#hd_menu_icon").click(function(e) {
                e.preventDefault();
                $("#hd_menu_background").fadeIn(300);
                $("#hd_menu_front").fadeIn(200);
            });
            // 배경을 클릭한 경우
            $("#hd_menu_background").click(function() {
                $(this).fadeOut(300);
                $("#hd_menu_front").fadeOut(200);
            });
            // x버튼 (self.close << 쓰는게 깔끔)
            $("#hd_menu_close").click(function(e) {
                e.preventDefault();
                $("#hd_menu_front").fadeOut(200);
                $("#hd_menu_background").fadeOut(100);
            });
       /* --------------------search modalwindow------------------ */
            $("#search_text").focus(function(e) {
                e.preventDefault();
                $("#hd_search_background").fadeIn(300);
                $("#hd_search_front").fadeIn(200);
                $("#modal_search_text").focus();
            });
            // 배경을 클릭한 경우
            $("#hd_search_background").click(function() {
                $(this).fadeOut(300);
                $("#hd_search_front").fadeOut(200);
            });
            // 왼쪽 x버튼 (self.close << 쓰는게 깔끔)
            $("#search_close_icon").click(function(e) {
                e.preventDefault();
                $("#hd_search_front").fadeOut(200);
                $("#hd_search_background").fadeOut(100);
            });
        /* ----------------- 함수 입력시 여기지우고부터 작성 시작 ------------------ */
    });
    </script>
 <script src="../assets/dist/zebra_datepicker.src.js"></script>

</body>
</html>