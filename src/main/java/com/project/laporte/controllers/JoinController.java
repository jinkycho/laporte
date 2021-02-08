package com.project.laporte.controllers;

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
import com.project.laporte.model.User;
import com.project.laporte.service.UserService;

@Controller
public class JoinController {
	
    /** WebHelper 주입 */
    @Autowired  WebHelper webHelper;

    /** RegexHelper 주입 */
    @Autowired  RegexHelper regexHelper;

    /** Service 패턴 구현체 주입 */
    @Autowired  UserService userService;
    
    /** "/프로젝트이름" 에 해당하는 ContextPath 변수 주입 */
    @Value("#{servletContext.contextPath}")
    String contextPath;
    
	@RequestMapping(value="/02_mypage/join.do", method=RequestMethod.GET)
    public ModelAndView join() {
        // "/src/main/webapp/WEB-INF/views/02_mypage/join.jsp" 파일을 View로 지정한다.
        return new ModelAndView("/02_mypage/join");
    }
	
	@RequestMapping(value="/02_mypage/join2.do", method=RequestMethod.GET)
    public ModelAndView join2(Model model) {
        // "/src/main/webapp/WEB-INF/views/02_mypage/join2.jsp" 파일을 View로 지정한다.
        return new ModelAndView("/02_mypage/join2");
    }
	
	/** 회원가입 작성 폼엥 대한 action 페이지*/
	@RequestMapping(value="/02_mypage/join_ok.do", method=RequestMethod.POST)
	public ModelAndView join_ok(Model model,
			@RequestParam(value="userid", defaultValue="") String userid,
			@RequestParam(value="userpwd", defaultValue="") String userpwd,
			@RequestParam(value="name", defaultValue="") String name,
			@RequestParam(value="birthdate", defaultValue="") String birthdate,
			@RequestParam(value="phoneno", defaultValue="") String phoneno,
			@RequestParam(value="gender", defaultValue="") String gender,
			@RequestParam(value="addr1", defaultValue="") String addr1,
			@RequestParam(value="addr2", defaultValue="") String addr2,
			@RequestParam(value="postcode", defaultValue="") String postcode,
			@RequestParam(value="userstatus", defaultValue="") String userstatus,
			@RequestParam(value="regdate", defaultValue="") String regdate,
			@RequestParam(value="editdate", defaultValue="") String editdate,
			@RequestParam(value="point", defaultValue="0") int point) {
		//POST 방식으로 Join_ok에서 Join cfm
		
		/**1) 사용자가 입력한 파라미터 유효성 검사*/
		/**2) 데이터 저장하기*/
		//저장할 값들을 Beans에 담는다.
		User input = new User();
		input.setUserid(userid);
		input.setUserpwd(userpwd);
		input.setName(name);
		input.setBirthdate(birthdate);
		input.setPhoneno(phoneno);
		input.setGender(gender);
		input.setAddr1(addr1);
		input.setAddr2(addr2);
		input.setPostcode(postcode);
		input.setUserstatus(userstatus);
		input.setRegdate(regdate);
		input.setEditdate(editdate);
		input.setPoint(point);
		
		try {
			//데이터 저장
			//--> 데이터 저장에 성공하면 파라미터로 전달하는 input 객체에 PK값이 저장된다.
			userService.addUser(input);
		}catch(Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		/**3) 결과를 확인하기 위한 페이지 연동*/
		//저장 결과를 확인하기 위해 데이터 저장 시 생성된 PK값을 상세 페이지로 전달해야 한다.
		String redirectUrl = contextPath + "/home.do?userno=" + input.getUserno();
		return webHelper.redirect(redirectUrl, input.getName() + "님 회원가입을 축하드립니다.");
	}
	

}
