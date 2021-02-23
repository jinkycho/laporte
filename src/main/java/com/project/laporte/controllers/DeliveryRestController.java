package com.project.laporte.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.project.laporte.helper.RegexHelper;
import com.project.laporte.helper.WebHelper;
import com.project.laporte.model.Cart;
import com.project.laporte.model.Orderlist;
import com.project.laporte.service.OrderlistService;
import com.project.laporte.service.ProductService;
import com.project.laporte.service.UserService;

@RestController
public class DeliveryRestController {
	
	/** Webhelper 주입 */
	// -> import org.springframework.beans.factory.annotation.Autowired;
	// -> import study.spring.springhelper.helper.WebHelper;
	@Autowired WebHelper webHelper;
	
	/** RegexHelper 주입 */
	// -> import study.spring.springhelper.helper.RegexHelper;
	@Autowired RegexHelper regexHelper;
	
	/** Service 패턴 구현체 주입 */
	// -> import com.project.laporte.service.OrderlistService;
	@Autowired OrderlistService orderService;
	
	// -> import study.spring.springhelper.service.UserService;
	@Autowired UserService userService;
	
	// -> import study.spring.springhelper.service.ProductService;
	@Autowired ProductService productService;
	
	/** "/프로젝트이름" 에 해당하는 ContextPath 변수 주입 */
	// -> import org.springframework.beans.factory.annotation.Value;
	@Value("#{servletContext.contextPath}")
	String contextPath;
    
    /** 저장 */
	
	/** 수정 */
    @RequestMapping(value="/11_admin/admin_delivery", method = RequestMethod.PUT)
    public Map<String, Object> put(
    		@RequestParam(value="orderno", defaultValue="0") int orderno,
    		@RequestParam(value="paytype", defaultValue="") String paytype) {
    	
    	/** 1) 데이터 수정하기 */
    	// 수정할 값들을 Beans에 담는다.
    	Orderlist input = new Orderlist();
    	input.setOrderno(orderno);
    	input.setPaytype(paytype);
    	
    	// 수정된 결과를 조회하기 위한 객체
    	List<Orderlist> output = null;
    	
    	try {
    		// 데이터 수정
    		OrderlistService.updateOrderlistPay(input);
    		// 수정 결과 조회
    		input.setOrderno(orderno);
    		output = OrderlistService.getOrderList(input);
    	} catch (Exception e) {
    		return webHelper.getJsonError(e.getLocalizedMessage());
    	}
    	
    	/** 3) 결과를 확인하기 위한 JSON 출력 */
    	Map<String, Object> map = new HashMap<String, Object>();
    	map.put("item", output);    	
    	return webHelper.getJsonData(map);
    }
}