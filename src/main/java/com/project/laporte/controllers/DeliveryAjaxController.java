package com.project.laporte.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.laporte.helper.PageData;
import com.project.laporte.helper.RegexHelper;
import com.project.laporte.helper.WebHelper;
import com.project.laporte.model.Delivery;
import com.project.laporte.model.Orderlist;
import com.project.laporte.service.DeliveryService;
import com.project.laporte.service.OrderlistService;

@Controller
public class DeliveryAjaxController {

    /** Webhelper 주입 */
    // -> import org.springframework.beans.factory.annotation.Autowired;
    // -> import study.spring.springhelper.helper.WebHelper;
    @Autowired WebHelper webHelper;
    
    /** RegexHelper 주입 */
    // -> import study.spring.springhelper.helper.RegexHelper;
    @Autowired RegexHelper regexHelper;
    
    /** Service 패턴 구현체 주입 */
    // -> import com.project.laporte.service.OrderlistService;
    @Autowired OrderlistService OrderlistService;
    
    // -> import com.project.laporte.service.DeliveryService;
    @Autowired DeliveryService deliveryService;
    
    /** "/프로젝트이름" 에 해당하는 ContextPath 변수 주입 */
    // -> import org.springframework.beans.factory.annotation.Value;
    @Value("#{servletContext.contextPath}")
    String contextPath;
    
    /** 주문관리 목록 페이지 */
    @RequestMapping(value = "/11_admin/admin_order.do", method = RequestMethod.GET)
    public ModelAndView list(Model model,
            // 검색어
            @RequestParam(value="keyword", required=false) String keyword,
            // 페이지 구현에서 사용할 현재 페이지 번호
            @RequestParam(value="page", defaultValue="1") int nowPage) {
        
        /** 1) 페이지 구현에 필요한 변수값 생성 */
        int totalCount = 0;              // 전체 게시글 수
        int listCount  = 10;             // 한 페이지당 표시할 목록 수
        int pageCount  = 5;              // 한 그룹당 표시할 페이지 번호 수
        
        /** 2) 데이터 조회하기 */
        // 조회에 필요한 조건값(검색어)를 Beans에 담는다.
        Orderlist input = new Orderlist();
        input.setName(keyword);
        Delivery deliveryInput = null;
        
        List<Orderlist> output = null;          					// 조회결과가 저장될 객체
        PageData pageData = null;               					// 페이지 번호를 계산한 결과가 저장될 객체
        List<Delivery> deliveryOutput = new ArrayList<Delivery>();  // 조회결과가 저장될 객체   

        try {
            // 전체 게시글 수 조회
            totalCount = OrderlistService.getOrderlistCount(input);
            // 페이지 번호 계산 --> 계산결과를 로그로 출력될 것이다.
            pageData = new PageData(nowPage, totalCount, listCount, pageCount);
            
            // SQL의 LIMIT절에서 사용될 값을 Beans의 static 변수에 저장
            Orderlist.setOffset(pageData.getOffset());
            Orderlist.setListCount(pageData.getListCount());
            
            output = OrderlistService.getOrderList(input);
            deliveryOutput = deliveryService.getDeliveryList(deliveryInput);
        } catch (Exception e) {
            return webHelper.redirect(null, e.getLocalizedMessage());
        }

        /** 4) View 처리 */
        model.addAttribute("output", output);
        model.addAttribute("pageData", pageData);
        model.addAttribute("deliveryOutput", deliveryOutput);
        model.addAttribute("keyword", keyword);

        return new ModelAndView("11_admin/admin_order");
    }
    
    /** 배송관리 목록 페이지 */
    @RequestMapping(value = "/11_admin/admin_delivery.do", method = RequestMethod.GET)
    public ModelAndView DeliveryList(Model model,
    		// 페이지 구현에서 사용할 현재 페이지 번호
            @RequestParam(value="page", defaultValue="1") int nowPage) {
        
        /** 1) 페이지 구현에 필요한 변수값 생성 */
        int totalCount = 0;              // 전체 게시글 수
        int listCount  = 10;             // 한 페이지당 표시할 목록 수
        int pageCount  = 5;              // 한 그룹당 표시할 페이지 번호 수
        
        /** 2) 데이터 조회하기 */
        // 조회에 필요한 조건값를 Beans에 담는다.
        Delivery input = new Delivery();
        Orderlist orderlistInput = null;
        
        List<Delivery> output = null;          							// 조회결과가 저장될 객체
        PageData pageData = null;               						// 페이지 번호를 계산한 결과가 저장될 객체
        List<Orderlist> orderlistOutput = new ArrayList<Orderlist>();	// 조회결과가 저장될 객체

        try {
            // 전체 게시글 수 조회
            totalCount = deliveryService.getDeliveryCount(input);
            // 페이지 번호 계산 --> 계산결과를 로그로 출력될 것이다.
            pageData = new PageData(nowPage, totalCount, listCount, pageCount);
            
            // SQL의 LIMIT절에서 사용될 값을 Beans의 static 변수에 저장
            Delivery.setOffset(pageData.getOffset());
            Delivery.setListCount(pageData.getListCount());
            
            output = deliveryService.getDeliveryList(input);
            orderlistOutput = OrderlistService.getOrderList(orderlistInput);
        } catch (Exception e) {
            return webHelper.redirect(null, e.getLocalizedMessage());
        }

        /** 4) View 처리 */
        model.addAttribute("output", output);
        model.addAttribute("orderlistOutput", orderlistOutput);
        model.addAttribute("pageData", pageData);

        return new ModelAndView("11_admin/admin_delivery");
    }
    
    /** 취소관리 목록 페이지 */
    @RequestMapping(value = "/11_admin/admin_cancel.do", method = RequestMethod.GET)
    public ModelAndView cancelList(Model model,
            // 페이지 구현에서 사용할 현재 페이지 번호
            @RequestParam(value="page", defaultValue="1") int nowPage) {
        
        /** 1) 페이지 구현에 필요한 변수값 생성 */
        int totalCount = 0;              // 전체 게시글 수
        int listCount  = 10;             // 한 페이지당 표시할 목록 수
        int pageCount  = 5;              // 한 그룹당 표시할 페이지 번호 수
        
        /** 2) 데이터 조회하기 */
        // 조회에 필요한 조건값(검색어)를 Beans에 담는다.
        Orderlist input = new Orderlist();
        Delivery deliveryInput = null;
        
        List<Orderlist> output = null;          					// 조회결과가 저장될 객체
        PageData pageData = null;               					// 페이지 번호를 계산한 결과가 저장될 객체
        List<Delivery> deliveryOutput = new ArrayList<Delivery>();  // 조회결과가 저장될 객체   

        try {
            // 전체 게시글 수 조회
            totalCount = OrderlistService.getOrderlistCount(input);
            // 페이지 번호 계산 --> 계산결과를 로그로 출력될 것이다.
            pageData = new PageData(nowPage, totalCount, listCount, pageCount);
            
            // SQL의 LIMIT절에서 사용될 값을 Beans의 static 변수에 저장
            Orderlist.setOffset(pageData.getOffset());
            Orderlist.setListCount(pageData.getListCount());
            
            output = OrderlistService.getOrderList(input);
            deliveryOutput = deliveryService.getDeliveryList(deliveryInput);
        } catch (Exception e) {
            return webHelper.redirect(null, e.getLocalizedMessage());
        }

        /** 4) View 처리 */
        model.addAttribute("output", output);
        model.addAttribute("pageData", pageData);
        model.addAttribute("deliveryOutput", deliveryOutput);

        return new ModelAndView("11_admin/admin_cancel");
    }
    
}
