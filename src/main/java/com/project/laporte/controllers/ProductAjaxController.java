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

import com.project.laporte.helper.RegexHelper;
import com.project.laporte.helper.WebHelper;
import com.project.laporte.model.Prod_category1;
import com.project.laporte.model.Prod_category2;
import com.project.laporte.model.Product;
import com.project.laporte.service.ProductService;

@Controller
public class ProductAjaxController {
	/** WebHelper 주입 */
	// --> import org.springframework.beans.factory.annotation.Autowired;
	// --> import study.spring.springhelper.helper.WebHelper;
	@Autowired
	WebHelper webHelper;

	/** RegexHelper 주입 */
	// --> import study.spring.helper.RegexHelper;
	@Autowired
	RegexHelper regexHelper;
	
	/** Service 패턴 구현체 주입 */
	@Autowired 
	ProductService productService;
	
	/** "/프로젝트이름"에 해당하는 ContextPath 변수 주입 */
	// --> import org.springframework.beans.factory.annotation.Value;
	@Value("#{servletContext.contextPath}")
	String contextPath;

	/** 상품 등록 페이지 */
	@RequestMapping(value="/11_admin/product_add.do", method= {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView productAdd(Model model,
			@RequestParam(value="catno1", defaultValue="0")int catno1) {
		
		/** 데이터 조회하기 **/
		//카테고리 대분류 목록 조회 결과를 저장할 객체 선언
		List<Prod_category1> category1 = null;
		
		//카테고리 소분류 목록 조회 결과를 저장할 객체 선언
		//catno1을 Prod_category2 Beans에 넣어서 2차 카테고리 추출
		Prod_category2 cat2 = new Prod_category2();
		cat2.setCatno1(catno1);
		List<Prod_category2> category2 = null;
		
		//상품 목록 조회 결과를 저장할 객체 선언
		//List<Product> output = null;
		
		try {
			//데이터 조회 --> 검색조건 없이 모든 카테고리 조회
			category1 = productService.category(null);
			//2차 카테고리 -> catno1을 넣은 Beans를 파라미터로 넣고 카테고리 데이터 조회
			category2 = productService.category2(cat2);
			//데이터 조회 -> 검색조건 없이 모든 상품 조회
			//output = productService.getProductList(null);
		}catch(Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		/** View 처리 **/
		model.addAttribute("category1", category1);
		model.addAttribute("category2", category2);
		model.addAttribute("catno1", catno1);
		//model.addAttribute("output", output);
		
		return new ModelAndView("11_admin/product_add");
	}
	
	/** 상품 정보 페이지 (관리자) */
	@RequestMapping(value="/11_admin/product_view.do", method=RequestMethod.GET)
	public ModelAndView view(Model model,
			@RequestParam(value="prodno", defaultValue="0")int prodno) {
		/** 1) 유효성 검사 */
		// 이 값이 존재하지 않는다면 데이터 조회가 불가능하므로 반드시 필수값으로 처리해야 한다.
		if(prodno == 0) {
			return webHelper.redirect(null, "상품 번호가 없습니다");
		}
		
		/** 2) 데이터 조회하기 */
		// 데이터 조회에 필요한 조건값을 Beans에 저장하기
		Product input = new Product();
		input.setProdno(prodno);
		
		// 조회결과를 저장할 객체 선언
		Product output = null;
		
		try {
			//데이터 조회 --> 검색조건 없이 모든 학과 조회
			output = productService.getProductItem(input);
		}catch(Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		/** 3) View 처리하기 */
		model.addAttribute("output", output);
		return new ModelAndView("11_admin/product_view");
	}
	

}
