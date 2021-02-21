package com.project.laporte.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

//이 클래스를 컨트롤러로서 지정함
//-> import org.springframework.stereotype.Controller;
@Controller
public class PageController_J {
	/** 페이지 링크 이동을 위한 임시 controller */
   	
	 @RequestMapping(value="/11_admin/admin_point.do", method=RequestMethod.GET)
	    public String adminPoint() {
	        // "/src/main/webapp/WEB-INF/views/11_admin/admin_point.jsp" 파일을 View로 지정한다.
	        return "/11_admin/admin_point";
	    }
	 
	 @RequestMapping(value="/11_admin/admin_userlist.do", method=RequestMethod.GET)
	    public String adminUserlist() {
	        // "/src/main/webapp/WEB-INF/views/11_admin/admin_userlist.jsp" 파일을 View로 지정한다.
	        return "/11_admin/admin_userlist";
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