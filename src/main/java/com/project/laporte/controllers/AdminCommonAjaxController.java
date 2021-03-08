package com.project.laporte.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.project.laporte.helper.RegexHelper;
import com.project.laporte.helper.WebHelper;

@Controller
public class AdminCommonAjaxController {

	/** WebHelper 주입 */
	@Autowired  WebHelper webHelper;
	
	/** RegexHelper 주입 */
	@Autowired  RegexHelper regexHelper;
	
	/** "/프로젝트이름" 에 해당하는 ContextPath 변수 주입 */
	@Value("#{servletContext.contextPath}")
	String contextPath;

	@RequestMapping(value="/11_admin/admin_login.do", method=RequestMethod.GET)
    public  ModelAndView home(Model model) {	
		
		
		//model.addAttribute("output", output);
		return new  ModelAndView("/11_admin/admin_login");
    }
	
	

}
