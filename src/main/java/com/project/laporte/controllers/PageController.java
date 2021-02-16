package com.project.laporte.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

//이 클래스를 컨트롤러로서 지정함
//-> import org.springframework.stereotype.Controller;
@Controller
public class PageController {
	/** 페이지 링크 이동을 위한 임시 controller */
    // -> import org.springframework.web.bind.annotation.RequestMapping;
    // -> import org.springframework.web.bind.annotation.RequestMethod;
	
	@RequestMapping(value="/home.do", method=RequestMethod.GET)
    public String home() {
        // "/src/main/webapp/WEB-INF/views/home.jsp" 파일을 View로 지정한다.
        return "/home";
    }
	
	@RequestMapping(value="/02_mypage/mypage.do", method=RequestMethod.GET)
    public String mypage() {
        // "/src/main/webapp/WEB-INF/views/02_mypage/mypage.jsp" 파일을 View로 지정한다.
        return "/02_mypage/mypage";
    }
	
	@RequestMapping(value="/02_mypage/order.do", method=RequestMethod.GET)
    public String mypageOrder() {
        // "/src/main/webapp/WEB-INF/views/02_mypage/order.jsp" 파일을 View로 지정한다.
        return "/02_mypage/order";
    }
	
	@RequestMapping(value="/02_mypage/login.do", method=RequestMethod.GET)
    public String login() {
        // "/src/main/webapp/WEB-INF/views/02_mypage/login.jsp" 파일을 View로 지정한다.
        return "/02_mypage/login";
    }
	
	@RequestMapping(value="/02_mypage/pwfind.do", method=RequestMethod.GET)
    public String loginPwFind() {
        // "/src/main/webapp/WEB-INF/views/02_mypage/login_pwfind.jsp" 파일을 View로 지정한다.
        return "/02_mypage/pwfind";
    }
	
	@RequestMapping(value="/02_mypage/pwrevise.do", method=RequestMethod.GET)
    public String loginPwRevise() {
        // "/src/main/webapp/WEB-INF/views/02_mypage/login_pwrevise.jsp" 파일을 View로 지정한다.
        return "/02_mypage/pwrevise";
    }
	
	@RequestMapping(value="/03_detail/detail.do", method=RequestMethod.GET)
    public String detail() {
        // "/src/main/webapp/WEB-INF/views/03_detail/detail.jsp" 파일을 View로 지정한다.
        return "/03_detail/detail";
    }

	@RequestMapping(value="/03_detail/allproduct1.do", method=RequestMethod.GET)
    public String allproduct1() {
        // "/src/main/webapp/WEB-INF/views/03_detail/detail.jsp" 파일을 View로 지정한다.
        return "/03_detail/allproduct1";
    }
	
	@RequestMapping(value="/03_detail/allproduct2.do", method=RequestMethod.GET)
    public String allproduct2() {
        // "/src/main/webapp/WEB-INF/views/03_detail/detail.jsp" 파일을 View로 지정한다.
        return "/03_detail/allproduct2";
    }
	
	@RequestMapping(value="/03_detail/allproduct3.do", method=RequestMethod.GET)
    public String allproduct3() {
        // "/src/main/webapp/WEB-INF/views/03_detail/detail.jsp" 파일을 View로 지정한다.
        return "/03_detail/allproduct3";
    }
	
	@RequestMapping(value="/03_detail/allproduct4.do", method=RequestMethod.GET)
    public String allproduct4() {
        // "/src/main/webapp/WEB-INF/views/03_detail/detail.jsp" 파일을 View로 지정한다.
        return "/03_detail/allproduct4";
    }
	
	@RequestMapping(value="/03_detail/allproduct5.do", method=RequestMethod.GET)
    public String allproduct5() {
        // "/src/main/webapp/WEB-INF/views/03_detail/detail.jsp" 파일을 View로 지정한다.
        return "/03_detail/allproduct5";
    }
	
	@RequestMapping(value="/03_detail/allproduct6.do", method=RequestMethod.GET)
    public String allproduct6() {
        // "/src/main/webapp/WEB-INF/views/03_detail/detail.jsp" 파일을 View로 지정한다.
        return "/03_detail/allproduct6";
    }
	@RequestMapping(value="/04_review/review_modify.do", method=RequestMethod.GET)
    public String review_modify() {
        // "/src/main/webapp/WEB-INF/views/04_review/review_modify.jsp" 파일을 View로 지정한다.
        return "/04_review/review_modify";
    }
	
	@RequestMapping(value="/04_review/review_write.do", method=RequestMethod.GET)
    public String review_write() {
        // "/src/main/webapp/WEB-INF/views/04_review/review_write.jsp" 파일을 View로 지정한다.
        return "/04_review/review_write";
    }
	
	@RequestMapping(value="/05_wishlist/wishlist.do", method=RequestMethod.GET)
    public String wishlist() {
        // "/src/main/webapp/WEB-INF/views/05_wishlist/wishlist.jsp" 파일을 View로 지정한다.
        return "/05_wishlist/wishlist";
    }
	
	@RequestMapping(value="/06_cart/cart.do", method=RequestMethod.GET)
    public String cart() {
        // "/src/main/webapp/WEB-INF/views/06_cart/cart.jsp" 파일을 View로 지정한다.
        return "/06_cart/cart";
    }
	
	@RequestMapping(value="/07_purchase/purchase.do", method=RequestMethod.GET)
    public String purchase() {
        // "/src/main/webapp/WEB-INF/views/07purchase/purchase.jsp" 파일을 View로 지정한다.
        return "/07_purchase/purchase";
    }
	
	@RequestMapping(value="/07_purchase/daum_pc_find.do", method=RequestMethod.GET)
    public String daum_pc_find() {
        // "/src/main/webapp/WEB-INF/views/07purchase/daum_pc_find.jsp" 파일을 View로 지정한다.
        return "/07_purchase/daum_pc_find";
    }
	
	@RequestMapping(value="/08_reserve/showroom_info.do", method=RequestMethod.GET)
	public String showroom() {
		// "/src/main/webapp/WEB-INF/views/08_reserve/showroom_info.jsp" 파일을 View로 지정한다.
		return "/08_reserve/showroom_info";
	}
    
	 @RequestMapping(value="/08_reserve/reserve.do", method=RequestMethod.GET)
	    public String reserve() {
	        // "/src/main/webapp/WEB-INF/views/08_reserve/reserve.jsp" 파일을 View로 지정한다.
	        return "/08_reserve/reserve";
	    }
	 
	 @RequestMapping(value="/08_reserve/reserve_cfm.do", method=RequestMethod.GET)
	    public String reserve_cfm() {
	        // "/src/main/webapp/WEB-INF/views/08_reserve/reserve.jsp" 파일을 View로 지정한다.
	        return "/08_reserve/reserve_cfm";
	    }
	 
	 
	 @RequestMapping(value="/09_cs/cs.do", method=RequestMethod.GET)
	    public String cs() {
	        // "/src/main/webapp/WEB-INF/views/09_cs/cs.jsp" 파일을 View로 지정한다.
	        return "/09_cs/cs";
	    }
	 
	 @RequestMapping(value="/09_cs/csmain.do", method=RequestMethod.GET)
	    public String csmain() {
	        // "/src/main/webapp/WEB-INF/views/09_cs/csmain.jsp" 파일을 View로 지정한다.
	        return "/09_cs/csmain";
	    }
	 
	 @RequestMapping(value="/09_cs/delivery.do", method=RequestMethod.GET)
	    public String delivery() {
	        // "/src/main/webapp/WEB-INF/views/09_cs/delivery.jsp" 파일을 View로 지정한다.
	        return "/09_cs/delivery";
	    }
	 
	 @RequestMapping(value="/09_cs/exchange.do", method=RequestMethod.GET)
	    public String exchange() {
	        // "/src/main/webapp/WEB-INF/views/09_cs/exchange.jsp" 파일을 View로 지정한다.
	        return "/09_cs/exchange";
	    }
	 
	 @RequestMapping(value="/09_cs/fa.do", method=RequestMethod.GET)
	    public String fa() {
	        // "/src/main/webapp/WEB-INF/views/09_cs/fa.jsp" 파일을 View로 지정한다.
	        return "/09_cs/fa";
	    }
	 
	 @RequestMapping(value="/10_event/event.do", method=RequestMethod.GET)
	    public String event() {
	        // "/src/main/webapp/WEB-INF/views/10_event/event.jsp" 파일을 View로 지정한다.
	        return "/10_event/event";
	    }
	 
	 @RequestMapping(value="/11_admin/admin_cancle.do", method=RequestMethod.GET)
	    public String adminCancel() {
	        // "/src/main/webapp/WEB-INF/views/11_admin/admin_cancel.jsp" 파일을 View로 지정한다.
	        return "/11_admin/admin_cancel";
	    }
	 
	 @RequestMapping(value="/11_admin/admin_coupon.do", method=RequestMethod.GET)
	    public String adminCoupon() {
	        // "/src/main/webapp/WEB-INF/views/11_admin/admin_coupon.jsp" 파일을 View로 지정한다.
	        return "/11_admin/admin_coupon";
	    }
	 
	 @RequestMapping(value="/11_admin/admin_delivery.do", method=RequestMethod.GET)
	    public String adminDelivery() {
	        // "/src/main/webapp/WEB-INF/views/11_admin/admin_delivery.jsp" 파일을 View로 지정한다.
	        return "/11_admin/admin_delivery";
	    }
	 
	 @RequestMapping(value="/11_admin/admin_order.do", method=RequestMethod.GET)
	    public String adminOrder() {
	        // "/src/main/webapp/WEB-INF/views/11_admin/admin_order.jsp" 파일을 View로 지정한다.
	        return "/11_admin/admin_order";
	    }
	 
	 @RequestMapping(value="/11_admin/admin_point.do", method=RequestMethod.GET)
	    public String adminPoint() {
	        // "/src/main/webapp/WEB-INF/views/11_admin/admin_point.jsp" 파일을 View로 지정한다.
	        return "/11_admin/admin_point";
	    }
	 
	 @RequestMapping(value="/11_admin/admin_resvappv.do", method=RequestMethod.GET)
	    public String adminResvAppv() {
	        // "/src/main/webapp/WEB-INF/views//11_admin/admin_resvappv.jsp" 파일을 View로 지정한다.
	        return "/11_admin/admin_resvappv";
	    }
	 
	 @RequestMapping(value="/11_admin/admin_home.do", method=RequestMethod.GET)
	    public String adminHome() {
	        // "/src/main/webapp/WEB-INF/views/11_admin/admin_home.jsp" 파일을 View로 지정한다.
	        return "/11_admin/admin_home";
	    }
	 
	 @RequestMapping(value="/11_admin/admin_review_answer.do", method=RequestMethod.GET)
	    public String adminReviewAnswer() {
	        // "/src/main/webapp/WEB-INF/views/11_admin/admin_review_answer.jsp" 파일을 View로 지정한다.
	        return "/11_admin/admin_review_answer";
	    }
	 
	 @RequestMapping(value="/11_admin/admin_review.do", method=RequestMethod.GET)
	    public String adminReview() {
	        // "/src/main/webapp/WEB-INF/views/11_admin/admin_review.jsp" 파일을 View로 지정한다.
	        return "/11_admin/admin_review";
	    }
	 
	 @RequestMapping(value="/11_admin/admin_userlist.do", method=RequestMethod.GET)
	    public String adminUserlist() {
	        // "/src/main/webapp/WEB-INF/views/11_admin/admin_userlist.jsp" 파일을 View로 지정한다.
	        return "/11_admin/admin_userlist";
	    }
	 
	 @RequestMapping(value="/11_admin/stock_management.do", method=RequestMethod.GET)
	    public String StockManagament() {
	        // "/src/main/webapp/WEB-INF/views/11_admin/stock_management.jsp" 파일을 View로 지정한다.
	        return "/11_admin/stock_management";
	    }
	 
	 @RequestMapping(value="/11_admin/admin_fanda.do", method=RequestMethod.GET)
	    public String fanda() {
	        // "/src/main/webapp/WEB-INF/views/11_admin/admin_fanda.jsp" 파일을 View로 지정한다.
	        return "/11_admin/admin_fanda";
	    }
	 
	 @RequestMapping(value="/11_admin/admin_qanda.do", method=RequestMethod.GET)
	    public String qanda() {
	        // "/src/main/webapp/WEB-INF/views/11_admin/admin_qanda.jsp" 파일을 View로 지정한다.
	        return "/11_admin/admin_qanda";
	    }
}