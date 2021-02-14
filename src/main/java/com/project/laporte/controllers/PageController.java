package com.project.laporte.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

//�� Ŭ������ ��Ʈ�ѷ��μ� ������
//-> import org.springframework.stereotype.Controller;
@Controller
public class PageController {
	/** ������ ��ũ �̵��� ���� �ӽ� controller */
    // -> import org.springframework.web.bind.annotation.RequestMapping;
    // -> import org.springframework.web.bind.annotation.RequestMethod;
	
	@RequestMapping(value="/home.do", method=RequestMethod.GET)
    public String home() {
        // "/src/main/webapp/WEB-INF/views/home.jsp" ������ View�� �����Ѵ�.
        return "/home";
    }
	
	@RequestMapping(value="/02_mypage/mypage.do", method=RequestMethod.GET)
    public String mypage() {
        // "/src/main/webapp/WEB-INF/views/02_mypage/mypage.jsp" ������ View�� �����Ѵ�.
        return "/02_mypage/mypage";
    }
	
	@RequestMapping(value="/02_mypage/order.do", method=RequestMethod.GET)
    public String mypageOrder() {
        // "/src/main/webapp/WEB-INF/views/02_mypage/order.jsp" ������ View�� �����Ѵ�.
        return "/02_mypage/order";
    }
	
	@RequestMapping(value="/02_mypage/login.do", method=RequestMethod.GET)
    public String login() {
        // "/src/main/webapp/WEB-INF/views/02_mypage/login.jsp" ������ View�� �����Ѵ�.
        return "/02_mypage/login";
    }
	
	@RequestMapping(value="/02_mypage/login_pwfind.do", method=RequestMethod.GET)
    public String loginPwFind() {
        // "/src/main/webapp/WEB-INF/views/02_mypage/login_pwfind.jsp" ������ View�� �����Ѵ�.
        return "/02_mypage/login_pwfind";
    }
	
	@RequestMapping(value="/02_mypage/login_pwrevise.do", method=RequestMethod.GET)
    public String loginPwRevise() {
        // "/src/main/webapp/WEB-INF/views/02_mypage/login_pwrevise.jsp" ������ View�� �����Ѵ�.
        return "/02_mypage/login_pwrevise";
    }
	
	@RequestMapping(value="/03_detail/detail.do", method=RequestMethod.GET)
    public String detail() {
        // "/src/main/webapp/WEB-INF/views/03_detail/detail.jsp" ������ View�� �����Ѵ�.
        return "/03_detail/detail";
    }

	@RequestMapping(value="/03_detail/allproduct1.do", method=RequestMethod.GET)
    public String allproduct1() {
        // "/src/main/webapp/WEB-INF/views/03_detail/detail.jsp" ������ View�� �����Ѵ�.
        return "/03_detail/allproduct1";
    }
	
	@RequestMapping(value="/03_detail/allproduct2.do", method=RequestMethod.GET)
    public String allproduct2() {
        // "/src/main/webapp/WEB-INF/views/03_detail/detail.jsp" ������ View�� �����Ѵ�.
        return "/03_detail/allproduct2";
    }
	
	@RequestMapping(value="/03_detail/allproduct3.do", method=RequestMethod.GET)
    public String allproduct3() {
        // "/src/main/webapp/WEB-INF/views/03_detail/detail.jsp" ������ View�� �����Ѵ�.
        return "/03_detail/allproduct3";
    }
	
	@RequestMapping(value="/03_detail/allproduct4.do", method=RequestMethod.GET)
    public String allproduct4() {
        // "/src/main/webapp/WEB-INF/views/03_detail/detail.jsp" ������ View�� �����Ѵ�.
        return "/03_detail/allproduct4";
    }
	
	@RequestMapping(value="/03_detail/allproduct5.do", method=RequestMethod.GET)
    public String allproduct5() {
        // "/src/main/webapp/WEB-INF/views/03_detail/detail.jsp" ������ View�� �����Ѵ�.
        return "/03_detail/allproduct5";
    }
	
	@RequestMapping(value="/03_detail/allproduct6.do", method=RequestMethod.GET)
    public String allproduct6() {
        // "/src/main/webapp/WEB-INF/views/03_detail/detail.jsp" ������ View�� �����Ѵ�.
        return "/03_detail/allproduct6";
    }
	@RequestMapping(value="/04_review/review_modify.do", method=RequestMethod.GET)
    public String review_modify() {
        // "/src/main/webapp/WEB-INF/views/04_review/review_modify.jsp" ������ View�� �����Ѵ�.
        return "/04_review/review_modify";
    }
	
	@RequestMapping(value="/04_review/review_write.do", method=RequestMethod.GET)
    public String review_write() {
        // "/src/main/webapp/WEB-INF/views/04_review/review_write.jsp" ������ View�� �����Ѵ�.
        return "/04_review/review_write";
    }
	
	@RequestMapping(value="/05_wishlist/wishlist.do", method=RequestMethod.GET)
    public String wishlist() {
        // "/src/main/webapp/WEB-INF/views/05_wishlist/wishlist.jsp" ������ View�� �����Ѵ�.
        return "/05_wishlist/wishlist";
    }
	
	@RequestMapping(value="/06_cart/cart.do", method=RequestMethod.GET)
    public String cart() {
        // "/src/main/webapp/WEB-INF/views/06_cart/cart.jsp" ������ View�� �����Ѵ�.
        return "/06_cart/cart";
    }
	
	@RequestMapping(value="/07_purchase/purchase.do", method=RequestMethod.GET)
    public String purchase() {
        // "/src/main/webapp/WEB-INF/views/07purchase/purchase.jsp" ������ View�� �����Ѵ�.
        return "/07_purchase/purchase";
    }
	
	@RequestMapping(value="/07_purchase/daum_pc_find.do", method=RequestMethod.GET)
    public String daum_pc_find() {
        // "/src/main/webapp/WEB-INF/views/07purchase/daum_pc_find.jsp" ������ View�� �����Ѵ�.
        return "/07_purchase/daum_pc_find";
    }
	
	@RequestMapping(value="/08_reserve/showroom_info.do", method=RequestMethod.GET)
	public String showroom() {
		// "/src/main/webapp/WEB-INF/views/08_reserve/showroom_info.jsp" ������ View�� �����Ѵ�.
		return "/08_reserve/showroom_info";
	}
    
	 @RequestMapping(value="/08_reserve/reserve.do", method=RequestMethod.GET)
	    public String reserve() {
	        // "/src/main/webapp/WEB-INF/views/08_reserve/reserve.jsp" ������ View�� �����Ѵ�.
	        return "/08_reserve/reserve";
	    }
	 
	 @RequestMapping(value="/08_reserve/reserve_cfm.do", method=RequestMethod.GET)
	    public String reserve_cfm() {
	        // "/src/main/webapp/WEB-INF/views/08_reserve/reserve.jsp" ������ View�� �����Ѵ�.
	        return "/08_reserve/reserve_cfm";
	    }
	 
	 
	 @RequestMapping(value="/09_cs/cs.do", method=RequestMethod.GET)
	    public String cs() {
	        // "/src/main/webapp/WEB-INF/views/09_cs/cs.jsp" ������ View�� �����Ѵ�.
	        return "/09_cs/cs";
	    }
	 
	 @RequestMapping(value="/09_cs/csmain.do", method=RequestMethod.GET)
	    public String csmain() {
	        // "/src/main/webapp/WEB-INF/views/09_cs/csmain.jsp" ������ View�� �����Ѵ�.
	        return "/09_cs/csmain";
	    }
	 
	 @RequestMapping(value="/09_cs/delivery.do", method=RequestMethod.GET)
	    public String delivery() {
	        // "/src/main/webapp/WEB-INF/views/09_cs/delivery.jsp" ������ View�� �����Ѵ�.
	        return "/09_cs/delivery";
	    }
	 
	 @RequestMapping(value="/09_cs/exchange.do", method=RequestMethod.GET)
	    public String exchange() {
	        // "/src/main/webapp/WEB-INF/views/09_cs/exchange.jsp" ������ View�� �����Ѵ�.
	        return "/09_cs/exchange";
	    }
	 
	 @RequestMapping(value="/09_cs/fa.do", method=RequestMethod.GET)
	    public String fa() {
	        // "/src/main/webapp/WEB-INF/views/09_cs/fa.jsp" ������ View�� �����Ѵ�.
	        return "/09_cs/fa";
	    }
	 
	 @RequestMapping(value="/10_event/event.do", method=RequestMethod.GET)
	    public String event() {
	        // "/src/main/webapp/WEB-INF/views/10_event/event.jsp" ������ View�� �����Ѵ�.
	        return "/10_event/event";
	    }
	 
	 @RequestMapping(value="/11_admin/admin_cancle.do", method=RequestMethod.GET)
	    public String adminCancel() {
	        // "/src/main/webapp/WEB-INF/views/11_admin/admin_cancel.jsp" ������ View�� �����Ѵ�.
	        return "/11_admin/admin_cancel";
	    }
	 
	 @RequestMapping(value="/11_admin/admin_coupon.do", method=RequestMethod.GET)
	    public String adminCoupon() {
	        // "/src/main/webapp/WEB-INF/views/11_admin/admin_coupon.jsp" ������ View�� �����Ѵ�.
	        return "/11_admin/admin_coupon";
	    }
	 
	 @RequestMapping(value="/11_admin/admin_delivery.do", method=RequestMethod.GET)
	    public String adminDelivery() {
	        // "/src/main/webapp/WEB-INF/views/11_admin/admin_delivery.jsp" ������ View�� �����Ѵ�.
	        return "/11_admin/admin_delivery";
	    }
	 
	 @RequestMapping(value="/11_admin/admin_order.do", method=RequestMethod.GET)
	    public String adminOrder() {
	        // "/src/main/webapp/WEB-INF/views/11_admin/admin_order.jsp" ������ View�� �����Ѵ�.
	        return "/11_admin/admin_order";
	    }
	 
	 @RequestMapping(value="/11_admin/admin_point.do", method=RequestMethod.GET)
	    public String adminPoint() {
	        // "/src/main/webapp/WEB-INF/views/11_admin/admin_point.jsp" ������ View�� �����Ѵ�.
	        return "/11_admin/admin_point";
	    }
	 
	 @RequestMapping(value="/11_admin/admin_resvappv.do", method=RequestMethod.GET)
	    public String adminResvAppv() {
	        // "/src/main/webapp/WEB-INF/views//11_admin/admin_resvappv.jsp" ������ View�� �����Ѵ�.
	        return "/11_admin/admin_resvappv";
	    }
	 
	 @RequestMapping(value="/11_admin/admin_home.do", method=RequestMethod.GET)
	    public String adminHome() {
	        // "/src/main/webapp/WEB-INF/views/11_admin/admin_home.jsp" ������ View�� �����Ѵ�.
	        return "/11_admin/admin_home";
	    }
	 
	 @RequestMapping(value="/11_admin/admin_review_answer.do", method=RequestMethod.GET)
	    public String adminReviewAnswer() {
	        // "/src/main/webapp/WEB-INF/views/11_admin/admin_review_answer.jsp" ������ View�� �����Ѵ�.
	        return "/11_admin/admin_review_answer";
	    }
	 
	 @RequestMapping(value="/11_admin/admin_review.do", method=RequestMethod.GET)
	    public String adminReview() {
	        // "/src/main/webapp/WEB-INF/views/11_admin/admin_review.jsp" ������ View�� �����Ѵ�.
	        return "/11_admin/admin_review";
	    }
	 
<<<<<<< HEAD
=======
	 @RequestMapping(value="/11_admin/product_add.do", method=RequestMethod.GET)
	    public String ProductAdd() {
	        // "/src/main/webapp/WEB-INF/views/11_admin/product_add.jsp" ������ View�� �����Ѵ�.
	        return "/11_admin/product_add";
	    }
	 
>>>>>>> 1b1d38c0440899a7ff6a559e1c23e6e319588b57
	 @RequestMapping(value="/11_admin/admin_userlist.do", method=RequestMethod.GET)
	    public String adminUserlist() {
	        // "/src/main/webapp/WEB-INF/views/11_admin/admin_userlist.jsp" ������ View�� �����Ѵ�.
	        return "/11_admin/admin_userlist";
	    }
	 
	 @RequestMapping(value="/11_admin/stock_management.do", method=RequestMethod.GET)
	    public String StockManagament() {
	        // "/src/main/webapp/WEB-INF/views/11_admin/stock_management.jsp" ������ View�� �����Ѵ�.
	        return "/11_admin/stock_management";
	    }
	 
	 @RequestMapping(value="/11_admin/admin_fanda.do", method=RequestMethod.GET)
	    public String fanda() {
	        // "/src/main/webapp/WEB-INF/views/11_admin/admin_fanda.jsp" ������ View�� �����Ѵ�.
	        return "/11_admin/admin_fanda";
	    }
	 
	 @RequestMapping(value="/11_admin/admin_qanda.do", method=RequestMethod.GET)
	    public String qanda() {
	        // "/src/main/webapp/WEB-INF/views/11_admin/admin_qanda.jsp" ������ View�� �����Ѵ�.
	        return "/11_admin/admin_qanda";
	    }
}
