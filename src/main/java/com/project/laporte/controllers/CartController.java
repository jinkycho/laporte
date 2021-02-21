package com.project.laporte.controllers;

import java.util.List;

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
import com.project.laporte.model.Cart;
import com.project.laporte.service.CartService;
import com.project.laporte.service.ProductService;
import com.project.laporte.service.UserService;

@Controller
public class CartController {

	/** Webhelper 주입 */
	// -> import org.springframework.beans.factory.annotation.Autowired;
	// -> import study.spring.springhelper.helper.WebHelper;
	@Autowired WebHelper webHelper;
	
	/** RegexHelper 주입 */
	// -> import study.spring.springhelper.helper.RegexHelper;
	@Autowired RegexHelper regexHelper;
	
	/** Service 패턴 구현체 주입 */
	// -> import study.spring.springhelper.service.CartService;
	@Autowired CartService cartService;
	
	// -> import study.spring.springhelper.service.UserService;
	@Autowired UserService userService;
	
	// -> import study.spring.springhelper.service.ProductService;
	@Autowired ProductService productService;
	
	/** "/프로젝트이름" 에 해당하는 ContextPath 변수 주입 */
	// -> import org.springframework.beans.factory.annotation.Value;
	@Value("#{servletContext.contextPath}")
	String contextPath;
	
	/** 목록 페이지 */
    @RequestMapping(value = "/06_cart/cartlist.do", method = RequestMethod.GET)
    public ModelAndView list(Model model, HttpServletRequest request,
            @RequestParam(value="userno", defaultValue="0") int userno) {
        
        /** 1) 데이터 조회하기 */
        // 조회에 필요한 조건값(검색어)를 Beans에 담는다.
        Cart input = new Cart();
        
        List<Cart> output = null;   // 조회결과가 저장될 객체

        try {
        	HttpSession session = request.getSession();
        	userno = (int) session.getAttribute("my_session");
        	
        	if(userno == 0) {       		
        		output = cartService.getCartList(input);
        		
        	// 데이터 조회하기
        	} else { 
        		input.setUserno(userno);
        		output = cartService.getCartList(input);
    		}
        } catch (Exception e) {
            return webHelper.redirect(null, e.getLocalizedMessage());
        }

        /** 3) View 처리 */
        model.addAttribute("output", output);

        return new ModelAndView("06_cart/cartlist");
    }
    
}
