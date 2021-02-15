package com.project.laporte.controllers;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.project.laporte.helper.RegexHelper;
import com.project.laporte.helper.WebHelper;
import com.project.laporte.model.User;
import com.project.laporte.service.UserService;

@RestController
public class UserRestController {
	
    /** WebHelper 주입 */
    @Autowired  WebHelper webHelper;

    /** RegexHelper 주입 */
    @Autowired  RegexHelper regexHelper;

    /** Service 패턴 구현체 주입 */
    @Autowired  UserService userService;
    
    /** Spring Security 주입 */
    @Autowired BCryptPasswordEncoder pwdEncoder;
    
    /** "/프로젝트이름" 에 해당하는 ContextPath 변수 주입 */
    @Value("#{servletContext.contextPath}")
    String contextPath;
    
	@RequestMapping(value="/02_mypage/join.do", method=RequestMethod.GET)
    public ModelAndView join() {
        // "/src/main/webapp/WEB-INF/views/02_mypage/join.jsp" 파일을 View로 지정한다.
        return new ModelAndView("/02_mypage/join");
    }
	
	/**아이디 중복 검사*/
	@RequestMapping(value="/02_mypage/id_check.do", method=RequestMethod.POST)
	public Map<String, Object>id_check(Model model,
			@RequestParam(value = "user_id", defaultValue="") String userid){
			
		/**1) 아이디 조회를 위해 Bean에 담는다*/
			User input = new User();
			input.setUserid(userid);
			
		//조회된 결과를 확인하기 위한 객체
			int output = 0;
			
			try {
				output = userService.getIdItem(input);
			}catch (Exception e) {
	            return webHelper.getJsonError(e.getLocalizedMessage());
	        }
	        
	        /** 2) JSON 출력하기 */
	        Map<String, Object> data = new HashMap<String, Object>();
	        data.put("item", output);
	        
	        return webHelper.getJsonData(data);
			
			
	}
	/** 회원가입 작성 폼에 대한 action 페이지*/
	@RequestMapping(value="/02_mypage", method=RequestMethod.POST)
	public Map<String, Object> join_post(Model model,
			@RequestParam(value="userid", defaultValue="") String userid,
			@RequestParam(value="userpwd", defaultValue="") String userpwd,
			@RequestParam(value="name", defaultValue="") String name,
			@RequestParam(value="birthdate", defaultValue="") String birthdate,
			@RequestParam(value="phoneno", defaultValue="") String phoneno,
			@RequestParam(value="gender", defaultValue="") String gender,
			@RequestParam(value="email", defaultValue="") String email,
			@RequestParam(value="addr1", defaultValue="") String addr1,
			@RequestParam(value="addr2", defaultValue="") String addr2,
			@RequestParam(value="postcode", defaultValue="") String postcode,
			@RequestParam(value="userstatus", defaultValue="") String userstatus,
			@RequestParam(value="point", defaultValue="0") int point,
			@RequestParam(value="regdate", defaultValue="") String regdate,
			@RequestParam(value="editdate", defaultValue="") String editdate
			) {
		//POST 방식으로 Join_ok에서 Join cfm
		
		/**1) 사용자가 입력한 파라미터 유효성 검사*/
		if(!regexHelper.isValue(userid))			{return webHelper.getJsonWarning("아이디를 입력하세요.");}
		if(!regexHelper.isValue(name))				{return webHelper.getJsonWarning("이름을 입력하세요.");}
		if(!regexHelper.isValue(birthdate))			{return webHelper.getJsonWarning("생년월일을 입력하세요.");}
		if(!regexHelper.isValue(phoneno))			{return webHelper.getJsonWarning("연락처를 입력하세요.");}
		if(!regexHelper.isValue(gender))			{return webHelper.getJsonWarning("성별을 입력하세요.");}
		if(!regexHelper.isValue(email))				{return webHelper.getJsonWarning("이메일을 입력하세요.");}
		if(!regexHelper.isValue(addr1))				{return webHelper.getJsonWarning("주소를 입력하세요.");}
		if(!regexHelper.isValue(addr2))				{return webHelper.getJsonWarning("주소를 입력하세요.");}
		if(!regexHelper.isValue(postcode))			{return webHelper.getJsonWarning("우편번호를 입력하세요.");}
		if(!regexHelper.isValue(userpwd))			{return webHelper.getJsonWarning("비밀번호를 입력하세요.");}
        
		/**2) 데이터 저장하기*/
		//저장할 값들을 Beans에 담는다.
		User input = new User();
		input.setUserid(userid);
		input.setUserpwd(userpwd);
		input.setName(name);
		input.setBirthdate(birthdate);
		input.setPhoneno(phoneno);
		input.setGender(gender);
		input.setEmail(email);
		input.setAddr1(addr1);
		input.setAddr2(addr2);
		input.setPostcode(postcode);
		input.setUserstatus(userstatus);
		input.setPoint(point);
		input.setRegdate(regdate);
		input.setEditdate(editdate);
		
		// 저장된 결과를 조회하기 위한 객체
		User output = null;
		
		try {
			//데이터 저장
			//비밀번호 암호화
			String inputPwd = input.getUserpwd();
			String pwdEnc = pwdEncoder.encode(inputPwd);
			input.setUserpwd(pwdEnc);
			
			//--> 데이터 저장에 성공하면 파라미터로 전달하는 input 객체에 PK값이 저장된다.
			userService.addUser(input);
			
			//데이터 조회
			output = userService.getUserItem(input);
		}catch(Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		
		/**3) 결과를 확인하기 위한 페이지 연동*/
		//저장 결과를 확인하기 위해 데이터 저장 시 생성된 PK값을 상세 페이지로 전달해야 한다.
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("item", output);
		return webHelper.getJsonData(map);
	}
		
	 //로그인 아이디, 패스워드 확인
	@RequestMapping(value="/02_mypage/login.do", method=RequestMethod.POST)
	public Map<String, Object> login_post(Model model,
			@RequestParam(value="userid", defaultValue="") String userid,
			@RequestParam(value="userpwd", defaultValue="") String userpwd) {
		
		/**1) 사용자가 입력한 파라미터 유효성 검사*/
		if(!regexHelper.isValue(userid))				{return webHelper.getJsonWarning("아이디를 입력하세요.");}
		if(!regexHelper.isValue(userpwd))				{return webHelper.getJsonWarning("비밀번호를 입력하세요.");}
		
		/**2) 입력값 일치 확인하기*/
		//저장할 값들을 Beans에 담는다.
		User input = new User();
		input.setUserid(userid);
		input.setUserpwd(userpwd);
		
		//사용자가 입력한 암호
		String inputPwd = input.getUserpwd();
		
		// 저장된 결과를 조회하기 위한 객체
		User idCheck = null;
		User output = null;

		try {
			// 아이디 존재여부 확인 및 존재할 경우 id&pw DB에서 가져온다.
			idCheck = userService.checkPw(input);
			
			//입력한 비밀번호와 DB에서 가져온 비밀번호가 일치할 경우 데이터를 조회한다.
			if(idCheck != null && pwdEncoder.matches(inputPwd, idCheck.getUserpwd())) {
			//데이터 조회
			output = userService.checkIdPw(idCheck);
			}else {
				//조회에 실패한 경우(DB에 데이터가 존재하지 않는 경우)
				return webHelper.getJsonError("비밀번호가 잘못되었습니다.");
			}
			
		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}

		
		/** 3)JSON 출력하기 */
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("item", output);		
		return webHelper.getJsonData(data);
	}
		
	
	 /** 회원정보 상세 조회 */
    @RequestMapping(value = "/02_mypage/{userno}", method = RequestMethod.GET)
    public Map<String, Object> get_item(@PathVariable("userno") int userno) {

        /** 1) 데이터 조회하기 */
        // 데이터 조회에 필요한 조건값을 Beans에 저장하기
        User input = new User();
        input.setUserno(userno);

        // 조회결과를 저장할 객체 선언
        User output = null;

        try {
            // 데이터 조회
            output = userService.getUserItem(input);
        } catch (Exception e) {
            return webHelper.getJsonError(e.getLocalizedMessage());
        }
        
        /** 2) JSON 출력하기 */
        Map<String, Object> data = new HashMap<String, Object>();
        data.put("item", output);
        
        return webHelper.getJsonData(data);
    }
    
    
    

}
