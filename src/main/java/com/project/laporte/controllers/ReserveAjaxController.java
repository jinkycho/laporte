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
import com.project.laporte.model.Reserve;
import com.project.laporte.service.ReserveService;



@Controller
public class ReserveAjaxController {
	/** WebHelper 주입 */
	// --> import org.springframework.beans.factory.annotation.Autowired;
	// --> import com.project.laporte.helper.WebHelper;
	@Autowired WebHelper webHelper;
	
	/** RegexHelper 주입 */
	// --> import com.project.laporte.helper.RegexHelper;
	@Autowired RegexHelper regexHelper;
	
	/** Service 패턴 구현체 주입 */
	// --> import com.project.laporte.service.ReserveService;
	@Autowired ReserveService reserveService;
	
	/** "/프로젝트 이름" 에 해당하는 ContextPath 변수 주입  */
	// --> import org.springframework.beans.factory.annotation.Value;
	@Value("#{servletContext.contextPath}")
	String contextPath;
	/** 작성 폼 페이지 */
	@RequestMapping(value ="/08_reserve/reserve.do", method = RequestMethod.GET)
	public ModelAndView add(Model model) {return new ModelAndView("/08_reserve/reserve");}
	
	
	/** 상세 페이지 */
	@RequestMapping(value="/08_reserve/reserve_cfm.do", method = RequestMethod.GET)
	public ModelAndView view(Model model) {return null;}
}