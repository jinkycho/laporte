package com.project.laporte.controllers;

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
import com.project.laporte.service.DeliveryService;
import com.project.laporte.service.ProductService;
import com.project.laporte.service.UserService;
import com.project.laporte.service.UserscouponService;

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
	// -> import com.project.laporte.service.DeliveryService;
	@Autowired DeliveryService deliveryService;
	
	// -> import study.spring.springhelper.service.UserService;
	@Autowired UserService userService;
	
	// -> import study.spring.springhelper.service.ProductService;
	@Autowired ProductService productService;
	
	// -> import com.project.laporte.service.UserscouponService;
	@Autowired 	UserscouponService userscouponService;
	
	/** "/프로젝트이름" 에 해당하는 ContextPath 변수 주입 */
	// -> import org.springframework.beans.factory.annotation.Value;
	@Value("#{servletContext.contextPath}")
	String contextPath;
    
	/** 목록 페이지 */
    @RequestMapping(value = "/11_admin/admin_delivery.do", method = RequestMethod.GET)
    public ModelAndView list(Model model,
            @RequestParam(value="deliveryno", defaultValue="0") int deliveryno,
            // 검색어
            @RequestParam(value="keyword", required=false) String keyword,
            // 페이지 구현에서 사용할 현재 페이지 번호
            @RequestParam(value="page", defaultValue="1") int nowPage) {
    	
    	/** 1) 페이지 구현에 필요한 변수값 생성 */
        int totalCount = 0;              // 전체 게시글 수
        int listCount  = 10;             // 한 페이지당 표시할 목록 수
        int pageCount  = 5;              // 한 그룹당 표시할 페이지 번호 수
    	
    	/** 2) 유효성 검사 */
    	if(deliveryno == 0) {
			return webHelper.redirect(null, "배송정보가 없습니다.");
		}
        
        /** 3) 데이터 조회하기 */
        // 조회에 필요한 조건값(검색어)를 Beans에 담는다.
        Delivery input = new Delivery();
        input.setDeliveryno(deliveryno);
        
        List<Delivery> output = null;   // 조회결과가 저장될 객체
        PageData pageData = null;		// 페이지 번호를 계산한 결과가 저장될 객체

        try {
        	// 전체 게시글 수 조회
         //   totalCount = deliveryService.getDeliveryPageCount(input);
            // 페이지 번호 계산 --> 계산결과를 로그로 출력될 것이다.
            pageData = new PageData(nowPage, totalCount, listCount, pageCount);
            
            // SQL의 LIMIT절에서 사용될 값을 Beans의 static 변수에 저장
            Delivery.setOffset(pageData.getOffset());
            Delivery.setListCount(pageData.getListCount());
            
        	output = deliveryService.getDeliveryList(input);
        } catch (Exception e) {
            return webHelper.redirect(null, e.getLocalizedMessage());
        }

        /** 4) View 처리 */
        model.addAttribute("output", output);

        return new ModelAndView("11_admin/admin_delivery");
    }
}
