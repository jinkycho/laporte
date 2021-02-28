package com.project.laporte.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
import com.project.laporte.model.Orderlist;
import com.project.laporte.model.Outuser;
import com.project.laporte.model.Reserve;
import com.project.laporte.model.User;
import com.project.laporte.model.Userscoupon;
import com.project.laporte.service.OrderlistService;
import com.project.laporte.service.ReserveService;
import com.project.laporte.service.UserService;
import com.project.laporte.service.UserscouponService;

@Controller
public class UserAjaxController {

	/** WebHelper 주입 */
	@Autowired  WebHelper webHelper;
	
	/** RegexHelper 주입 */
	@Autowired  RegexHelper regexHelper;
	
	/** Service 패턴 구현체 주입 */
	@Autowired  UserService userService;
	@Autowired 	UserscouponService userscouponService;
	@Autowired	ReserveService	reserveService;
	@Autowired 	OrderlistService orderlistService;
	
	/** "/프로젝트이름" 에 해당하는 ContextPath 변수 주입 */
	@Value("#{servletContext.contextPath}")
	String contextPath;

	@RequestMapping(value="/home.out", method=RequestMethod.GET)
    public  ModelAndView home() {	
        // "/src/main/webapp/WEB-INF/views/home.jsp" 파일을 View로 지정한다.
		return new  ModelAndView("/home");
    }
	
	@RequestMapping(value="/home.do", method=RequestMethod.GET)
    public  ModelAndView sessionWrite(Model model, HttpServletRequest request) {
		/** 컨트롤러에서 세션을 식별하기 위한 처리 */
		// 세션값은 request 내장 객체를 통해서 HttpSession 객체를 생성해야 접근할 수 있다.
		HttpSession session = request.getSession();
		
		int mySession = (int) session.getAttribute("my_session");

			//추출한 값을 View에게 전달
		model.addAttribute("my_session", mySession);
		
        // "/src/main/webapp/WEB-INF/views/home.jsp" 파일을 View로 지정한다.
		return new  ModelAndView("/home");
    }
	
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
	
	@RequestMapping(value="/02_mypage/login.do", method=RequestMethod.GET)
    public String login() {
        // "/src/main/webapp/WEB-INF/views/02_mypage/login.jsp" 파일을 View로 지정한다.
        return "/02_mypage/login";
    }
	
	@RequestMapping(value="/02_mypage/pwfind.do", method=RequestMethod.GET)
	public ModelAndView loginPwFind(){
		// "/src/main/webapp/WEB-INF/views/02_mypage/login_pwfind.jsp" 파일을 View로 지정한다.
		
		return new ModelAndView("/02_mypage/pwfind");
	}
	
	@RequestMapping(value="/02_mypage/pwrevise.do", method=RequestMethod.GET)
	public ModelAndView loginPwRevise(Model model,
			//GET,POST파라미터 받기
			@RequestParam(value="userno", defaultValue="0") int userno) {
		
		User input = new User();
		input.setUserno(userno);
		
		//파라미터값을 View에게 전달한다.
		model.addAttribute("output", input);
		// "/src/main/webapp/WEB-INF/views/02_mypage/login_pwrevise.jsp" 파일을 View로 지정한다.
		return new ModelAndView("/02_mypage/pwrevise");
	}
	
	@RequestMapping(value="/02_mypage/mypage.do", method=RequestMethod.GET)
    public ModelAndView mypage(Model model, HttpServletResponse response,
    		@RequestParam(value="userno") int userno) {
        // "/src/main/webapp/WEB-INF/views/02_mypage/mypage.jsp" 파일을 View로 지정한다.
		
		/** 1) 회원정보 */
		//회원정보 조회를 위한 객체 생성
		User input = new User();
		input.setUserno(userno);
		
		//회원정보 출력을 위한 객체 초기화
		User output = null;
		
		/**2) 예약정보 */
		//예약정보 조회를 위한 객체 생성
		Reserve r_input = new Reserve();
		r_input.setUserno(userno);
		
		//예약정보 출력을 위한 객체 초기화
		int r_output = 0;
		
		//회원이 보유한 쿠폰 조회를 위한 객체 생성
		Userscoupon uc_input = new Userscoupon();
		uc_input.setUserno(userno);
		
		//회원이 보유한 쿠폰을 출력하기 위한 객체 초기화
		List<Userscoupon> uc_output = null;
		
		
		try {
			output = userService.getUserItem(input);
			
			r_output = reserveService.checkReserve(r_input);
			
			uc_output = userscouponService.getUsersCouponList(uc_input);
			
		}catch(Exception e) {e.printStackTrace();}
		
		//View 처리
		 model.addAttribute("output", output);
		 model.addAttribute("r_output", r_output);
		 model.addAttribute("uc_output", uc_output);
        return new ModelAndView("/02_mypage/mypage");
    }
	 
		@RequestMapping(value="/logout.do", method=RequestMethod.GET)
	    public ModelAndView logout(Model model) {
	        // "/src/main/webapp/WEB-INF/views/02_mypage/join2.jsp" 파일을 View로 지정한다.
	        return new ModelAndView("/logout");
	    }
		
		 @RequestMapping(value="/11_admin/admin_userlist.do", method=RequestMethod.GET)
		    public ModelAndView adminUserlist(Model model,
		    		@RequestParam(value="userno", defaultValue="0") int userno) {
			 
			 //회원 목록 조회
			 List<User> output = null;
			 
			 //회원별 정보 조회
			 User u_input = new User();
			 User u_output = null;
			 
			 //회원별 주문정보 조회
			 Orderlist o_input = new Orderlist();
			 
			 //주문정보 조회
			 List<Orderlist> o_output = null;
			 
			//회원이 보유한 쿠폰 조회를 위한 객체 생성
				Userscoupon uc_input = new Userscoupon();
				
			//회원이 보유한 쿠폰을 출력하기 위한 객체 초기화
			List<Userscoupon> uc_output = null;
			 
			
			//탈퇴 회원 목록 조회
			List<Outuser> ou_output = null;
			 
			 try {
				 
				 if(userno != 0) {
				 o_input.setUserno(userno);
				 o_output = orderlistService.getOrderListbyUserno(o_input);
				
				 u_input.setUserno(userno);
				 u_output = userService.getUserItem(u_input);
				 
				 uc_input.setUserno(userno);
				 uc_output = userscouponService.getUsersCouponList(uc_input);
				 
				 if(o_output != null) {
					 model.addAttribute("o_output", o_output);
					 }
				 
				 if(u_output != null) {
					 model.addAttribute("u_output", u_output);
					 
				 }
				 
				 if(uc_output != null) {
					model.addAttribute("uc_output", uc_output);
					
					 
				 }
				 
				 output = userService.getUserlist(null);
				 ou_output = userService.getOutuserList(null);
			 }
				 output = userService.getUserlist(null);
				 ou_output = userService.getOutuserList(null);
			 
				 	 
			 }catch(Exception e) {e.printStackTrace();}
			 
			 //View 처리
			 
			 model.addAttribute("output", output);
			 model.addAttribute("ou_output", ou_output);
			 
			 
		        // "/src/main/webapp/WEB-INF/views/11_admin/admin_userlist.jsp" 파일을 View로 지정한다.
		        return new ModelAndView("/11_admin/admin_userlist");
		    }
}
