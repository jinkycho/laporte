package com.project.laporte.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
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
    @RequestMapping(value = "/06_cart/cart/add.do", method = RequestMethod.POST)
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
    	input.setUserno(10002);		// session 객체가 주입예정
    	input.setProdno(prodno);
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
    
    /** 중복 상품 검사 */
    @RequestMapping(value="/06_cart/cart/prodno_check.do", method=RequestMethod.POST)
    public Map<String, Object>post(
    		@RequestParam(value = "userno", defaultValue="0") int userno,
			@RequestParam(value = "prodno", defaultValue="0") int prodno){
			
		/** 1) 상품번호 조회를 위해 Bean에 담는다*/
		Cart input = new Cart();
		input.setUserno(10002);		// session 객체가 주입예정
		input.setProdno(prodno);	// 사용자가 입력한 상품번호 주입
			
		// 조회된 결과를 확인하기 위한 객체
		int output = 0;
		
		// 중복검사
		try {
			output = cartService.countCart(input);
		} catch (Exception e) {
            return webHelper.getJsonError(e.getLocalizedMessage());
        }
		
		// 갯수 추가
		try {
			output = cartService.updateCart(input);
		} catch (Exception e) {
            return webHelper.getJsonError(e.getLocalizedMessage());
        }
		
        /** 2) JSON 출력하기 */
        Map<String, Object> data = new HashMap<String, Object>();
        data.put("item", output);
	        
        return webHelper.getJsonData(data);
    }
    
    /** 목록 페이지 */
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
    
    /** 상세 페이지 
    @RequestMapping(value = "/06_cart/cart/{prodno}", method = RequestMethod.GET)
    public Map<String, Object> get_item(@PathVariable("cartno") int cartno) {

        /** 1) 데이터 조회하기
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
        
        /** 2) JSON 출력하기 
        Map<String, Object> data = new HashMap<String, Object>();
        data.put("item", output);
        
        return webHelper.getJsonData(data);
    } */
    
    /** 수정 */
    @RequestMapping(value="/06_cart/cart", method = RequestMethod.PUT)
    public Map<String, Object> put(
    		@RequestParam(value="cartno", defaultValue="0") int cartno,
    		@RequestParam(value="ea", defaultValue="0") int ea,
    		@RequestParam(value="editdate", defaultValue="") String editdate) {
    	
    	/** 1) 사용자가 입력한 파라미터 유효성 검사 */
    	if (cartno == 0) {
    		return webHelper.getJsonWarning("장바구니번호가 없습니다.");
    	}
    	
    	if (ea == 0) {
    		return webHelper.getJsonWarning("상품수량은 1개이상이어야 합니다.");
    	}
    	
    	/** 2) 데이터 수정하기 */
    	// 수정할 값들을 Beans에 담는다.
    	Cart input = new Cart();
    	input.setEa(ea);
    	input.setEditdate(editdate);
    	
    	// 수정된 결과를 조회하기 위한 객체
    	Cart output = null;
    	
    	try {
    		// 데이터 수정
    		cartService.editCart(input);
    		// 수정 결과 조회
    		output = cartService.getCartItem(input);
    	} catch (Exception e) {
    		return webHelper.getJsonError(e.getLocalizedMessage());
    	}
    	
    	/** 3) 결과를 확인하기 위한 JSON 출력 */
    	Map<String, Object> map = new HashMap<String, Object>();
    	map.put("item", output);    	
    	return webHelper.getJsonData(map);
    }
    
    /** 삭제 */
    @RequestMapping(value = "/06_cart/cart", method = RequestMethod.DELETE)
	public Map<String, Object> delete(
			@RequestParam(value="cartno", defaultValue="0") int cartno) {
    		
		/** 1) 파라미터 유효성 검사 */
    	// 이 값이 존재하지 않는다면 데이터가 삭제가 불가능하므로 반드시 필수값으로 처리해야 한다.
    	if (cartno == 0) {
    		return webHelper.getJsonWarning("장바구니번호가 없습니다.");
    	}
    	
    	/** 2) 데이터 삭제하기 */
    	// 데이터 삭제에 필요한 조건값을 Beans에 저장하기
    	Cart input = new Cart();
    	input.setCartno(cartno);
    	
    	try {
    		cartService.deleteCart(input);	// 데이터 삭제
    	} catch (Exception e) {
    		return webHelper.getJsonError(e.getLocalizedMessage());
    	}
    	
    	/** 3) 결과를 확인하기 위한 JSON 출력 */
    	// 확인할 대상이 삭제된 결과값만 OK로 전달
    	return webHelper.getJsonData();
    }
    
}
