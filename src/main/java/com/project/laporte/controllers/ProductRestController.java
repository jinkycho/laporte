package com.project.laporte.controllers;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.project.laporte.helper.RegexHelper;
import com.project.laporte.helper.WebHelper;
import com.project.laporte.model.Prod_category2;
import com.project.laporte.model.Product;
import com.project.laporte.service.ProductService;


@RestController
public class ProductRestController {

	/** WebHelper 주입 */
	@Autowired
	WebHelper webHelper;

	/** RegexHelper 주입 */
	@Autowired
	RegexHelper regexHelper;

	/** Service 패턴 구현체 주입 */
	@Autowired
	ProductService productService;

	/** "/프로젝트이름" 에 해당하는 ContextPath 변수 주입 */
	@Value("#{servletContext.contextPath}")
	String contextPath;

	/** 상품 등록 페이지 - 2차 카테고리(소분류) 데이터 추출하기 */
	@RequestMapping(value = "/11_admin/product_add/category", method = RequestMethod.POST)
	public Map<String, Object> get_item(@RequestParam(value = "catno1", defaultValue = "0") int catno1) {

		/** 1) 데이터 조회하기 */
		// 조회에 필요한 조건값(검색어)를 Beans에 담는다.
		Prod_category2 cat2 = new Prod_category2();
		cat2.setCatno1(catno1);

		List<Prod_category2> category2 = null; // 조회결과가 저장될 객체

		try {
			// 데이터 조회 --> 조건값을 담은 beans 넣기 bnfc
			category2 = productService.category2(cat2);
		} catch (Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}

		/** 3) JSON 출력하기 */
		Map<String, Object> data = new HashMap<String, Object>();
		data.put("catno1", catno1);
		data.put("item", category2);

		return webHelper.getJsonData(data);
	}
	
	/** 상품 등록 작성 폼에 대한 action 페이지 */
	@RequestMapping(value="/11_admin/product_add", method = RequestMethod.POST)
	public Map<String, Object> post(
			@RequestParam(value="name", defaultValue="")String name,
			@RequestParam(value="price", defaultValue="0")int price,
			@RequestParam(value="saleprice", defaultValue="0", required=false)int saleprice,
			@RequestParam(value="stock", defaultValue="0", required=false)int stock,
			@RequestParam(value="display", defaultValue="")String display,
			@RequestParam(value="color", defaultValue="")String color,
			@RequestParam(value="size", defaultValue="null", required=false)String size,
			@RequestParam(value="adminnote", defaultValue="null", required=false)String adminnote,
			@RequestParam(value="detailnote", defaultValue="")String detailnote,
			@RequestParam(value="detailsize", defaultValue="")String detailsize,
			@RequestParam(value="catno2", defaultValue="0")int catno2,
			HttpServletRequest request){
		
		//체크박스의 name 속성이 동일한 요소가 여러개인 경우 파라미터를 배열로 리턴받는다.
		String[] arr = request.getParameterValues("prd_group[]");
		
		//체크박스의 선택값이 저장괼 문자열
		// -> arr 배열의 각원소를 첫번째 파라미터로 설정한 구분값을 적용하여 하나의 문자열로 연결
		String group = String.join(", ", arr);
		System.out.println(group);
		
		/** 데이터 저장하기 */
		//저장할 값들을 Beans에 담는다.
		Product input = new Product();
		input.setName(name);
		input.setPrice(price);
		input.setSaleprice(saleprice);
		input.setStock(stock);
		input.setDisplay(display);
		input.setColor(color);
		input.setSize(size);
		input.setAdminnote(adminnote);
		input.setDetailnote(detailnote);
		input.setDetailsize(detailsize);
		input.setCatno2(catno2);
		input.setGroup(group);
		
		
		//저장된 결과를 조회하기 위한 객체
		Product output=null;
		
		try {
			//데이터 저장 
			// -> 데이터 저장에 성공하면 파라미터로 전달하는 input 객체에 PK값이 저장된다.
			productService.addProduct(input);
			
			//데이터 조회
			output= productService.getProductItem(input);
		}catch(Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		
		/** 결과를 확인하기 위한 JSON 출력 */
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("item", output);
		return webHelper.getJsonData(map);
	}
}
