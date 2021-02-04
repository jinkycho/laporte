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
	@RequestMapping(value="/02_mypage/mypage.do", method=RequestMethod.GET)
    public String mypage() {
        // "/src/main/webapp/WEB-INF/views/02_mypage/mypage.jsp" 파일을 View로 지정한다.
        return "/02_mypage/mypage";
    }
	
	@RequestMapping(value="/03_detail/detail.do", method=RequestMethod.GET)
    public String detail() {
        // "/src/main/webapp/WEB-INF/views/03_detail/detail.jsp" 파일을 View로 지정한다.
        return "/03_detail/detail";
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
	 
	 @RequestMapping(value="/10_event/event.do", method=RequestMethod.GET)
	    public String event() {
	        // "/src/main/webapp/WEB-INF/views/10_event/event.jsp" 파일을 View로 지정한다.
	        return "/10_event/event";
	    }
	 
	 @RequestMapping(value="/11_admin/admin_userlist.do", method=RequestMethod.GET)
	    public String adminUserlist() {
	        // "/src/main/webapp/WEB-INF/views/11_admin/admin_userlist.jsp" 파일을 View로 지정한다.
	        return "/11_admin/admin_userlist";
	    }
	 
	 @RequestMapping(value="/11_admin/admin_coupon.do", method=RequestMethod.GET)
	    public String adminCoupon() {
	        // "/src/main/webapp/WEB-INF/views/11_admin/admin_coupon.jsp" 파일을 View로 지정한다.
	        return "/11_admin/admin_coupon";
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
	 
	 @RequestMapping(value="/11_admin/product_add.do", method=RequestMethod.GET)
	    public String ProductAdd() {
	        // "/src/main/webapp/WEB-INF/views/11_admin/product_add.jsp" 파일을 View로 지정한다.
	        return "/11_admin/product_add";
	    }
	 
	 @RequestMapping(value="/11_admin/stock_management.do", method=RequestMethod.GET)
	    public String StockManagament() {
	        // "/src/main/webapp/WEB-INF/views/11_admin/stock_management.jsp" 파일을 View로 지정한다.
	        return "/11_admin/stock_management";
	    }
	 
	
}
