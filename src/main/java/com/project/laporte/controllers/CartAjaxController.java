package com.project.laporte.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.laporte.helper.RegexHelper;
import com.project.laporte.helper.WebHelper;
import com.project.laporte.model.Cart;
import com.project.laporte.model.Product;
import com.project.laporte.service.CartService;
import com.project.laporte.service.ProductListService;
import com.project.laporte.service.ProductService;
import com.project.laporte.service.UserService;

@Controller
public class CartAjaxController {

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
	
	// -> import com.project.laporte.service.ProductListService;
	@Autowired ProductListService productListService;
	
	/** "/프로젝트이름" 에 해당하는 ContextPath 변수 주입 */
	// -> import org.springframework.beans.factory.annotation.Value;
	@Value("#{servletContext.contextPath}")
	String contextPath;
	
	/** 목록 페이지 */
    @RequestMapping(value = "/06_cart/cart.do", method = RequestMethod.GET)
    public ModelAndView list(Model model, HttpServletRequest request,
            @RequestParam(value="userno", defaultValue="0") int userno,
            @CookieValue(value="my_wish", defaultValue="0", required=false)int my_wish) {

    	/** 1) 데이터 조회하기 */
        // 조회에 필요한 조건값를 Beans에 담는다.
        Cart input = new Cart();
        Product productInput = new Product();
        
        List<Cart> output = null;   // 조회결과가 저장될 객체
        List<Product> productOutput = new ArrayList<Product>();
        
        try {
        	if(userno == 0) {
        		input.setUserno(userno);
        		output = cartService.getCartList(input);
        		productOutput = productListService.getProductlistList(productInput);
        		
        	// 데이터 조회하기
        	} else { 
        		HttpSession session = request.getSession();
        		userno = (int) session.getAttribute("my_session");
        		
        		input.setUserno(userno);
        		output = cartService.getCartList(input);
        		productOutput = productListService.getProductlistList(productInput);
    		}
        	
        } catch (Exception e) {
            return webHelper.redirect(null, e.getLocalizedMessage());
        }
        
        

        /** 3) View 처리 */
        model.addAttribute("output", output);
        model.addAttribute("output", output);
        model.addAttribute("my_wish", my_wish);

        return new ModelAndView("06_cart/cart");
    }
    
}
