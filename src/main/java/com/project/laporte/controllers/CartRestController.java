package com.project.laporte.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.project.laporte.helper.RegexHelper;
import com.project.laporte.helper.WebHelper;
import com.project.laporte.model.Cart;
import com.project.laporte.service.CartService;
import com.project.laporte.service.ProductService;
import com.project.laporte.service.UserService;

@RestController
public class CartRestController {
	
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
    
    /** 저장 */
    @RequestMapping(value = "/06_cart/cart", method = RequestMethod.POST)
    public Map<String, Object> post(
    		@RequestParam(value="cartno", defaultValue="0") int cartno,
    		@RequestParam(value="userno", defaultValue="0") int userno,
    		@RequestParam(value="prodno", defaultValue="0") int prodno,
    		@RequestParam(value="ea", defaultValue="1") int ea,
    		@RequestParam(value="regdate", defaultValue="") String regdate,
    		@RequestParam(value="editdate", defaultValue="") String editdate) {
    	
    	  	
    	/** 1) 데이터 저장하기 */
    	// 저장할 값들을 Beans에 담는다.
    	Cart input = new Cart();
    	input.setUserno(10001);
    	input.setProdno(20001);
    	input.setEa(ea);
    	input.setRegdate(regdate);
    	input.setEditdate(editdate);
    	
    	// 저장된 결과를 조회하기 위한 객체
		Cart output = null;
    			
    	try {
			// 데이터 저장
			// --> 데이터 저장에 성공하면 파라미터로 전달하는 input 객체에 PK값이 저장된다.
			cartService.addCart(input);
			
			// 데이터 조회
			output = cartService.getCartItem(input);
		} catch(Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
    	
    	/** 2) 결과를 확인하기 위한 페이지 연동*/
		// 저장 결과를 확인하기 위해 데이터 저장 시 생성된 PK값을 상세 페이지로 전달해야 한다.
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("item", output);
		return webHelper.getJsonData(map);
    }
    
    /** 목록 */
    @RequestMapping(value = "/06_cart/cart", method = RequestMethod.GET)
    public Map<String, Object> get_list(
    		@RequestParam(value="cartno", defaultValue="0") int cartno) {

        /** 1) 데이터 조회하기 */
        Cart input = new Cart();
        input.setCartno(cartno);

        List<Cart> output = null;   // 조회결과가 저장될 객체

        try {
            // 데이터 조회하기
            output = cartService.getCartList(input);
        } catch (Exception e) {
            return webHelper.getJsonError(e.getLocalizedMessage());
        }

        /** 2) JSON 출력하기 */
        Map<String, Object> data = new HashMap<String, Object>();
        data.put("item", output);

        return webHelper.getJsonData(data);
    }
    
    /** 상세 페이지 */
    @RequestMapping(value = "/03_detail/{prodno}", method = RequestMethod.GET)
    public Map<String, Object> get_item(@PathVariable("cartno") int cartno) {

        /** 1) 데이터 조회하기 */
        // 데이터 조회에 필요한 조건값을 Beans에 저장하기
        Cart input = new Cart();
        input.setCartno(cartno);

        // 조회결과를 저장할 객체 선언
        Cart output = null;

        try {
            // 데이터 조회
            output = cartService.getCartItem(input);
        } catch (Exception e) {
            return webHelper.getJsonError(e.getLocalizedMessage());
        }
        
        /** 2) JSON 출력하기 */
        Map<String, Object> data = new HashMap<String, Object>();
        data.put("item", output);
        
        return webHelper.getJsonData(data);
    }
    
}
