package com.project.laporte.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.laporte.helper.RegexHelper;
import com.project.laporte.helper.WebHelper;
import com.project.laporte.model.Firstimg;
import com.project.laporte.model.Prod_category1;
import com.project.laporte.model.Prod_category2;
import com.project.laporte.model.Product;
import com.project.laporte.service.ProductListService;
import com.project.laporte.service.ProductService;

@Controller
public class ProductListAjaxController {
	
	/** WebHelper 주입 */
	@Autowired  WebHelper webHelper;
	
	/** RegexHelper 주입 */
	@Autowired  RegexHelper regexHelper;
	
	/** Service 패턴 구현체 주입 */
	@Autowired ProductListService productListService;
	@Autowired ProductService productService;
	
	
	@RequestMapping(value="03_detail/allproduct2.do",method = RequestMethod.GET)
	public ModelAndView prdocutlist(Model model,
			@RequestParam(value="catno1",defaultValue ="0")int catno1,
			@RequestParam(value="catno2",defaultValue ="0")int catno2){ 
		/** 1) 유효성 검사 */
		// 이 값이 존재하지 않는다면 데이터가 조회가 불가능하므로 반드시 필수값으로 처리해야한다.
		
		if(catno1 == 0) {
			return webHelper.redirect(null, "카테고리 선택이 되지않았습니다.");
		}
		
		/** 2) 데이터 조회하기 */
		// 데이터 조회에 필요한 조건값을 Beans에 저장하기
		Product input = new Product();
		input.setCatno1(catno1);
		if(catno2 != 0) {
		input.setCatno2(catno2);
		}
		Prod_category2 cat2 = new Prod_category2();
		cat2.setCatno1(catno1);
		List<Prod_category2> category2 = null;
		/** 조회결과를 저장할 객체 선언 */
		List<Prod_category1> category1 = null;
		List<Product> output = null;
		List<Firstimg> fimg = null;
		
		try {
			// 데이터 조회
			output = productListService.getProductlistList(input);
			category1 = productService.category(null);
			category2 = productService.category2(cat2);
			fimg = productListService.getFirstimgList(null);
		}catch(Exception e) { 
			
			return webHelper.redirect(null, e.getLocalizedMessage());
			
		}
		
		// View 처리
		model.addAttribute("input",input);
		model.addAttribute("output",output);
		model.addAttribute("category1", category1);
		model.addAttribute("category2", category2);
		model.addAttribute("fimg",fimg);
		
		return new ModelAndView ("03_detail/allproduct2");
	}
	
}
