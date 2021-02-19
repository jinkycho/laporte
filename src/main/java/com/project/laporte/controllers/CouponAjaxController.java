package com.project.laporte.controllers;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.laporte.helper.RegexHelper;
import com.project.laporte.helper.WebHelper;
import com.project.laporte.model.Coupon;
import com.project.laporte.service.CouponService;

@Controller
public class CouponAjaxController {

	/** WebHelper 주입 */
	@Autowired  WebHelper webHelper;
	
	/** RegexHelper 주입 */
	@Autowired  RegexHelper regexHelper;
	
	/** Service 패턴 구현체 주입 */
	@Autowired  CouponService couponService;
	
	/** "/프로젝트이름" 에 해당하는 ContextPath 변수 주입 */
	@Value("#{servletContext.contextPath}")
	String contextPath;
	
	/** 쿠폰 목록 */
	 @RequestMapping(value="/11_admin/admin_coupon.do", method=RequestMethod.GET)
	    public String adminCoupon(Model model, HttpServletResponse response) {
		 
		 List<Coupon> output = null;
		 
		 try {
			 //데이터 조회하기
			 output = couponService.getCouponList(null);
			 
		 }catch(Exception e) {e.printStackTrace();}
		 
		 //View 처리
		 model.addAttribute("output", output);
	     return "11_admin/admin_coupon";
	    }
	 
	 /** 쿠폰 수정 폼 */
	 @RequestMapping(value="/11_admin/admin_coupon_rev.do", method=RequestMethod.GET)
	    public String revise_coupon(Model model, HttpServletResponse response,
	    		@RequestParam(value="couponno") int couponno) {
		 
		 //데이터 조회에 필요한 조건값을 Beans에 저장하기
		 Coupon input = new Coupon();
		 input.setCouponno(couponno);
		 
		 //수정할 데이터의 원본 조회하기
		 Coupon output = null;
		 
		 try {
			 //데이터 조회하기
			 output = couponService.getCoupon(input);
		 }catch(Exception e) {e.printStackTrace();}
		 
		 //View 처리
		 model.addAttribute("output", output);
	     return "11_admin/admin_coupon_rev";
	    }
}
