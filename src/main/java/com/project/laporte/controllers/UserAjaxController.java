package com.project.laporte.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
	
	@RequestMapping(value="/home.do", method=RequestMethod.GET)
    public String sessionWrite(Model model, HttpServletRequest request) {
		/** 컨트롤러에서 세션을 식별하기 위한 처리 */
		// 세션값은 request 내장 객체를 통해서 HttpSession 객체를 생성해야 접근할 수 있다.
		HttpSession session = request.getSession();
		String mySession = (String) session.getAttribute("my_session");
		if(mySession == null) {
			session.invalidate();
		}
		
		//추출한 값을 View에게 전달
		model.addAttribute("my_session", mySession);
		
        // "/src/main/webapp/WEB-INF/views/home.jsp" 파일을 View로 지정한다.
		return "/home";
    }
	
	@RequestMapping(value="/logout.do", method=RequestMethod.GET)
    public ModelAndView logout(Model model) {
        // "/src/main/webapp/WEB-INF/views/02_mypage/join2.jsp" 파일을 View로 지정한다.
        return new ModelAndView("/logout");
    }
	
	@RequestMapping(value="/02_mypage/join2.do", method=RequestMethod.GET)
    public ModelAndView join2(Model model) {
        // "/src/main/webapp/WEB-INF/views/02_mypage/join2.jsp" 파일을 View로 지정한다.
        return new ModelAndView("/02_mypage/join2");
    }
	
	@RequestMapping(value="/02_mypage/pwfind.do", method=RequestMethod.GET)
    public String loginPwFind() {
        // "/src/main/webapp/WEB-INF/views/02_mypage/login_pwfind.jsp" 파일을 View로 지정한다.
        return "/02_mypage/pwfind";
    }
	
	@RequestMapping(value="/02_mypage/pwrevise.do", method=RequestMethod.GET)
    public String loginPwRevise(Model model,
    		//GET,POST파라미터 받기
    		@RequestParam(value="userno", defaultValue="0") int userno) {
		
		//파라미터값을 View에게 전달한다.
		model.addAttribute("userno", userno);
        // "/src/main/webapp/WEB-INF/views/02_mypage/login_pwrevise.jsp" 파일을 View로 지정한다.
        return "/02_mypage/pwrevise";
    }
	
	
}
