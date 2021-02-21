package com.project.laporte.controllers;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.project.laporte.helper.RegexHelper;
import com.project.laporte.helper.WebHelper;
import com.project.laporte.model.Coupon;
import com.project.laporte.model.Orderlist;
import com.project.laporte.service.CouponService;
import com.project.laporte.service.OrderlistService;

@RestController
public class OrderlistRestController {
	
	 /** WebHelper 주입 */
    @Autowired  WebHelper webHelper;

    /** RegexHelper 주입 */
    @Autowired  RegexHelper regexHelper;
    
    /** Service 패턴 구현체 주입 */
    @Autowired  CouponService couponService;
    @Autowired 	OrderlistService orderlistService;

    /** "/프로젝트이름" 에 해당하는 ContextPath 변수 주입 */
    @Value("#{servletContext.contextPath}")
    String contextPath;
    
    /** 새로운 구매 생성 */
    @RequestMapping(value="/07_purchase", method=RequestMethod.POST)
    public Map<String, Object>add_coupon(Model model,
    		@RequestParam(value="addr1", defaultValue="") String addr1,
    		@RequestParam(value="addr2", defaultValue="") String addr2,
    		@RequestParam(value="postcode", defaultValue="") String postcode,
    		@RequestParam(value="name", defaultValue="") String name,
    		@RequestParam(value="email", defaultValue="") String email,
    		@RequestParam(value="phoneno", defaultValue="") String phoneno,
    		@RequestParam(value="loctype", defaultValue="") String loctype,
    		@RequestParam(value="servicetype", defaultValue="") String servicetype,
    		@RequestParam(value="request", defaultValue="") String request,
    		@RequestParam(value="sizelimit", defaultValue="") String sizelimit,
    		@RequestParam(value="deldate", defaultValue="") String deldate,
    		@RequestParam(value="paytype", defaultValue="") String paytype,
    		@RequestParam(value="totalprice", defaultValue="") String totalprice,
    		@RequestParam(value="usrcouponno", defaultValue="0") int usrcouponno,
    		@RequestParam(value="userno", defaultValue="0") int userno,
    		@RequestParam(value="deltypeno", defaultValue="0") int deltypeno
    		){
    	
    	/**1) 사용자가 입력한 파라미터 유효성 검사*/
		//유효성 검사 프론트에서 구현
    	
		/** 2) 데이터 저장하기 */
		//저장할 값들을 Beans에 담는다.
		Orderlist input = new Orderlist();
		input.setAddr1(addr1);
		input.setAddr2(addr2);
		input.setPostcode(postcode);
		input.setName(name);
		input.setEmail(email);
		input.setPhoneno(phoneno);
		input.setLoctype(loctype);
		input.setServicetype(servicetype);
		input.setRequest(request);
		input.setSizelimit(sizelimit);
		input.setDeldate(deldate);
		input.setPaytype(paytype);
		input.setTotalprice(totalprice);
		input.setUsrcouponno(usrcouponno);;
		input.setUserno(userno);
		input.setDeltypeno(deltypeno);
		
		//저장된 결과를 조회하기 위한 객체
		Orderlist output = null;
		
		try {
			//데이터 저장에 성공하면 파라미터로 전달하는 input 객체에 PK값이 저장된다.
			orderlistService.addPurchase(input);
			
			//데이터 조회
			output = orderlistService.getPurchase(input);
		}catch(Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		
		/** 결과를 확인하기 위한 페이지 연동 */
		//저장 결과를 확인하기 위해 데이터 저장 시 생성된 PK값을 상세 페이지로 전달해야 한다.
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("item", output);
		return webHelper.getJsonData();
    }
}
