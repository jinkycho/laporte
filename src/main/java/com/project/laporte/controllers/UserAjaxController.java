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
import com.project.laporte.service.UserService;

@Controller
public class UserAjaxController {

	/** WebHelper 주입 */
	@Autowired  WebHelper webHelper;
	
	/** RegexHelper 주입 */
	@Autowired  RegexHelper regexHelper;
	
	/** Service 패턴 구현체 주입 */
	@Autowired  UserService userService;
	
	/** "/프로젝트이름" 에 해당하는 ContextPath 변수 주입 */
	@Value("#{servletContext.contextPath}")
	String contextPath;
	
	@RequestMapping(value="/02_mypage/join2.do", method=RequestMethod.GET)
    public ModelAndView join2(Model model) {
        // "/src/main/webapp/WEB-INF/views/02_mypage/join2.jsp" 파일을 View로 지정한다.
        return new ModelAndView("/02_mypage/join2");
    }
	
}
