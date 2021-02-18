package com.project.laporte.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;

import com.project.laporte.helper.RegexHelper;
import com.project.laporte.helper.WebHelper;
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
	
	
}
