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
	 
	 @RequestMapping(value="/11_admin/admin_userlist.do", method=RequestMethod.GET)
	    public String adminUserlist() {
	        // "/src/main/webapp/WEB-INF/views//11_admin/admin_userlist.jsp" 파일을 View로 지정한다.
	        return "/11_admin/admin_userlist";
	    }
	 
	 @RequestMapping(value="/11_admin/admin_coupon.do", method=RequestMethod.GET)
	    public String adminCoupon() {
	        // "/src/main/webapp/WEB-INF/views//11_admin/admin_coupon.jsp" 파일을 View로 지정한다.
	        return "/11_admin/admin_coupon";
	    }
	 
	 @RequestMapping(value="/11_admin/admin_point.do", method=RequestMethod.GET)
	    public String adminPoint() {
	        // "/src/main/webapp/WEB-INF/views//11_admin/admin_point.jsp" 파일을 View로 지정한다.
	        return "/11_admin/admin_point";
	    }
	 
	 @RequestMapping(value="/11_admin/admin_resvappv.do", method=RequestMethod.GET)
	    public String adminResvAppv() {
	        // "/src/main/webapp/WEB-INF/views//11_admin/admin_resvappv.jsp" 파일을 View로 지정한다.
	        return "/11_admin/admin_resvappv";
	    }
	
}
