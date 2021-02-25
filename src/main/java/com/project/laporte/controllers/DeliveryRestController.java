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
import com.project.laporte.model.Delivery;
import com.project.laporte.model.Orderlist;
import com.project.laporte.service.DeliveryService;
import com.project.laporte.service.OrderlistService;

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
	@Autowired OrderlistService orderlistService;
	
	// -> import com.project.laporte.service.DeliveryService;
	@Autowired DeliveryService deliveryService;

	/** "/프로젝트이름" 에 해당하는 ContextPath 변수 주입 */
	// -> import org.springframework.beans.factory.annotation.Value;
	@Value("#{servletContext.contextPath}")
	String contextPath;
	
	@RequestMapping(value="/02_mypage/order_view.do", method=RequestMethod.GET)
    public String allproduct1() {
        // "/src/main/webapp/WEB-INF/views/03_detail/detail.jsp" 파일을 View로 지정한다.
        return "/02_mypage/order_view";
    }
    
	/** 상세 페이지 */
    @RequestMapping(value = "/02_mypage/order_view/{orderno}", method = RequestMethod.GET)
    public Map<String, Object> get_item(@PathVariable("orderno") int orderno) {

        /** 1) 데이터 조회하기 */
        // 데이터 조회에 필요한 조건값을 Beans에 저장하기
        Orderlist input = new Orderlist();
        input.setOrderno(orderno);

        // 조회결과를 저장할 객체 선언
        Orderlist output = null;

        try {
            // 데이터 조회
            output = orderlistService.getOrderItem(input);
        } catch (Exception e) {
            return webHelper.getJsonError(e.getLocalizedMessage());
        }
        
        /** 2) JSON 출력하기 */
        Map<String, Object> data = new HashMap<String, Object>();
        data.put("item", output);
        
        return webHelper.getJsonData(data);
    }
	
    /** 저장 */
	@RequestMapping(value = "/11_admin/admin_delivery", method = RequestMethod.POST)
    public Map<String, Object> post(
            @RequestParam(value="deliverydate", defaultValue="") String deliverydate,
            @RequestParam(value="deliverystatus", defaultValue="") String deliverystatus,
            @RequestParam(value="trackingnum", defaultValue="0") int trackingnum,
            @RequestParam(value="userno", defaultValue="0") int userno,
            @RequestParam(value="orderno", defaultValue="0") int orderno) {
        
        /** 1) 사용자가 입력한 파라미터에 대한 유효성 검사 */
        // 숫자형으로 선언된 파라미터()
        if (trackingnum == 0)                 { return webHelper.getJsonWarning("운송장번호를 입력하세요."); }
        if (trackingnum > 999999)             { return webHelper.getJsonWarning("운송장번호는 999,999보다 클 수 없습니다."); }
        if (trackingnum < 100000)             { return webHelper.getJsonWarning("운송장번호는 100,000보다 작을 수 없습니다."); }

        /** 2) 데이터 저장하기 */
        // 저장할 값들을 Beans에 담는다.
        Delivery input = new Delivery();
        input.setDeliverydate(deliverydate);
        input.setDeliverystatus(deliverystatus);
        input.setTrackingnum(trackingnum);
        input.setUserno(userno);
        input.setOrderno(orderno);

        // 저장된 결과를 조회하기 위한 객체
        List<Delivery> output = null;

        try {
            // 데이터 저장
            // --> 데이터 저장에 성공하면 파라미터로 전달하는 input 객체에 PK값이 저장된다.
            deliveryService.addDelivery(input);
            
            // 데이터 조회
            output = deliveryService.getDeliveryList(input);
        } catch (Exception e) {
            return webHelper.getJsonError(e.getLocalizedMessage());
        }

        /** 3) 결과를 확인하기 위한 JSON 출력 */
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("item", output);
        return webHelper.getJsonData(map);
    }
	
	/** 수정 */
    @RequestMapping(value="/11_admin/admin_delivery", method = RequestMethod.PUT)
    public Map<String, Object> put(
    		@RequestParam(value="orderno", defaultValue="0") int orderno,
    		@RequestParam(value="paystatus", defaultValue="N") String paystatus,
    		@RequestParam(value="orderstatus", defaultValue="N") String orderstatus,
    		@RequestParam(value="deliveryno", defaultValue="0") int deliveryno,
    		@RequestParam(value="deliverystatus", defaultValue="N") String deliverystatus) {
    	
    	/** 1) 데이터 수정하기 */
    	// 수정할 값들을 Beans에 담는다.
    	Orderlist input = new Orderlist();
    	input.setOrderno(orderno);
    	input.setPaystatus(paystatus);
    	input.setOrderstatus(orderstatus);
    	    	
    	Delivery deliveryInput = new Delivery();
    	deliveryInput.setDeliveryno(deliveryno);
    	deliveryInput.setDeliverystatus(deliverystatus);
    	
    	// 수정된 결과를 조회하기 위한 객체
    	List<Orderlist> output = null;
    	List<Delivery> deliveryOutput = null;
    	
    	if (deliveryno != 0) {
    		try {
    			deliveryService.editDelivery(deliveryInput);
    			deliveryInput.setDeliveryno(deliveryno);
    			deliveryOutput = deliveryService.getDeliveryList(deliveryInput);
    		} catch (Exception e) {
        		return webHelper.getJsonError(e.getLocalizedMessage());
        	}
    	} else {
    		try {
        		// 데이터 수정
        		orderlistService.updateOrderlist(input);
        		// 수정 결과 조회
        		input.setOrderno(orderno);
        		output = orderlistService.getOrderList(input);
        	} catch (Exception e) {
        		return webHelper.getJsonError(e.getLocalizedMessage());
        	}
    	}
    	
    	/** 3) 결과를 확인하기 위한 JSON 출력 */
    	Map<String, Object> map = new HashMap<String, Object>();
    	map.put("item", output);
    	map.put("ditem", deliveryOutput);
    	return webHelper.getJsonData(map);
    }
}