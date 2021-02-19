package com.project.laporte.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.laporte.helper.RegexHelper;
import com.project.laporte.helper.WebHelper;
import com.project.laporte.model.DetailImg;
import com.project.laporte.model.Firstimg;
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
	@RequestMapping(value = "/11_admin/product_add.do", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView productAdd(Model model, @RequestParam(value = "catno1", defaultValue = "0") int catno1) {

		/** 데이터 조회하기 **/
		// 카테고리 대분류 목록 조회 결과를 저장할 객체 선언
		List<Prod_category1> category1 = null;

		// 카테고리 소분류 목록 조회 결과를 저장할 객체 선언
		// catno1을 Prod_category2 Beans에 넣어서 2차 카테고리 추출
		Prod_category2 cat2 = new Prod_category2();
		cat2.setCatno1(catno1);
		List<Prod_category2> category2 = null;

		// 상품 목록 조회 결과를 저장할 객체 선언
		// List<Product> output = null;

		try {
			// 데이터 조회 --> 검색조건 없이 모든 카테고리 조회
			category1 = productService.category(null);
			// 2차 카테고리 -> catno1을 넣은 Beans를 파라미터로 넣고 카테고리 데이터 조회
			category2 = productService.category2(cat2);
			// 데이터 조회 -> 검색조건 없이 모든 상품 조회
			// output = productService.getProductList(null);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}

		/** View 처리 **/
		model.addAttribute("category1", category1);
		model.addAttribute("category2", category2);
		model.addAttribute("catno1", catno1);
		// model.addAttribute("output", output);

		return new ModelAndView("11_admin/product_add");
	}

	/** 수정 폼 페이지 */
	@RequestMapping(value = "/11_admin/product_edit.do", method = RequestMethod.GET)
	public ModelAndView edit(Model model,
							 @RequestParam(value = "prodno", defaultValue = "0") int prodno) {

		/** 1) 파라미터 유효성 검사 */
		// 이 값이 존재하지 않는다면 데이터 조회가 불가능하므로 반드시 필수값으로 처리해야 한다.
		if (prodno == 0) {
			return webHelper.redirect(null, "상품 번호가 없습니다");
		}

		/** 2) 데이터 조회하기 */
		// 데이터 조회에 필요한 조건값을 Beans에 저장하기
		Product input = new Product();
		Firstimg img = new Firstimg();
		input.setProdno(prodno);
		img.setProdno(prodno);

		// 조회결과를 저장할 객체 선언
		Product output = null;
		Firstimg imgoutput = null;
		
		try {
			output = productService.getProductItem(input);
			imgoutput = productService.getProductFirstImg(img);
			
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		int catno1=output.getCatno1();
		System.out.println(catno1);
		
		// 카테고리 대분류 목록 조회 결과를 저장할 객체 선언
		List<Prod_category1> category1 = null;

		// 카테고리 소분류 목록 조회 결과를 저장할 객체 선언
		// catno1을 Prod_category2 Beans에 넣어서 2차 카테고리 추출
		Prod_category2 cat2 = new Prod_category2();
		cat2.setCatno1(catno1);
		List<Prod_category2> category2 = null;
		
		try {
			// 데이터 조회 --> 검색조건 없이 모든 카테고리 조회
			category1 = productService.category(null);
			// 2차 카테고리 -> catno1을 넣은 Beans를 파라미터로 넣고 카테고리 데이터 조회
			category2 = productService.category2(cat2);
			// 데이터 조회
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}

		/** 3) View 처리하기 */
		model.addAttribute("output", output);
		model.addAttribute("imgoutput", imgoutput);
		model.addAttribute("category1", category1);
		model.addAttribute("category2", category2);
		model.addAttribute("catno1", catno1);
		return new ModelAndView("11_admin/product_edit");
	}

	/** 상품 정보 페이지 (관리자) */
	@RequestMapping(value = "/11_admin/product_view.do", method = RequestMethod.GET)
	public ModelAndView view(Model model, @RequestParam(value = "prodno", defaultValue = "0") int prodno) {
		/** 1) 유효성 검사 */
		// 이 값이 존재하지 않는다면 데이터 조회가 불가능하므로 반드시 필수값으로 처리해야 한다.
		if (prodno == 0) {
			return webHelper.redirect(null, "상품 번호가 없습니다");
		}

		/** 2) 데이터 조회하기 */
		// 데이터 조회에 필요한 조건값을 Beans에 저장하기
		Product input = new Product();
		Firstimg img = new Firstimg();
		input.setProdno(prodno);
		img.setProdno(prodno);

		// 조회결과를 저장할 객체 선언
		Product output = null;
		Firstimg imgoutput = null;

		try {
			// 데이터 조회
			output = productService.getProductItem(input);
			imgoutput = productService.getProductFirstImg(img);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}

		/** 3) View 처리하기 */
		model.addAttribute("output", output);
		model.addAttribute("imgoutput", imgoutput);
		return new ModelAndView("11_admin/product_view");
	}

	/** 상품 상세 이미지 추가 */
	@RequestMapping(value = "/11_admin/product_img.do", method = RequestMethod.GET)
	public ModelAndView imageadd(Model model, @RequestParam(value = "prodno", defaultValue = "0") int prodno) {
		/** 1) 유효성 검사 */
		// 이 값이 존재하지 않는다면 데이터 조회가 불가능하므로 반드시 필수값으로 처리해야 한다.
		if (prodno == 0) {
			return webHelper.redirect(null, "상품 번호가 없습니다");
		}

		/** 2) 데이터 조회하기 */
		// 데이터 조회에 필요한 조건값을 Beans에 저장하기
		DetailImg img = new DetailImg();
		img.setProdno(prodno);

		// 조회결과를 저장할 객체 선언
		List<DetailImg> imgList = null;

		try {
			// 데이터 조회
			imgList = productService.getDeailImgList(img);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}

		/** 3) View 처리하기 */
		model.addAttribute("img", img);
		model.addAttribute("imgList", imgList);
		return new ModelAndView("11_admin/product_img");
	}
	
	/** 상품 상세 페이지 - 사용자 */
	@RequestMapping(value = "/03_detail/detail.do", method = RequestMethod.GET)
	public ModelAndView detail(Model model, @RequestParam(value = "prodno", defaultValue = "0") int prodno,
											HttpServletResponse response,
											HttpServletRequest request,
											@CookieValue(value="my_cookie", defaultValue="") String myCookie) {
		/** 1) 유효성 검사 */
		// 이 값이 존재하지 않는다면 데이터 조회가 불가능하므로 반드시 필수값으로 처리해야 한다.
		if (prodno == 0) {
			return webHelper.redirect(null, "상품 번호가 없습니다");
		}

		/** 2) 데이터 조회하기 */
		// 데이터 조회에 필요한 조건값을 Beans에 저장하기
		DetailImg dimg = new DetailImg();
		dimg.setProdno(prodno);
		Product input = new Product();
		input.setProdno(prodno);
		List<Product> similar = new ArrayList<Product>();
		Firstimg fimg = new Firstimg();
		fimg.setProdno(prodno);

		// 조회결과를 저장할 객체 선언
		Product output = null;
		Product category = null;
		Firstimg imgoutput = null;
		List<DetailImg> imgList = null;

		try {
			// 데이터 조회
			output = productService.getProductItem(input);
			imgoutput = productService.getProductFirstImg(fimg);
			imgList = productService.getDeailImgList(dimg);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		try {
			// 데이터 조회
			category =  productService.getCategotyName(output);
			similar = productService.getSimilarList(output);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		/**쿠키 저장 **/
		Cookie cookie = new Cookie("prodno"+prodno, String.valueOf(prodno)); // 저장할 쿠키 객체 생성.
		cookie.setPath("/"); // 쿠키의 유효 경로 --> 사이트 전역에 대한 설정.
		cookie.setDomain("localhost"); // 쿠키의 유효 도메인

		if (String.valueOf(prodno).equals("")) { // 쿠키 시간을 설정하지 않으면 브라우저가 동작하는 동안 유효
			cookie.setMaxAge(0); // 쿠키 설정시간이 0이면 즉시 삭제된다.
		} else {
			cookie.setMaxAge(60 * 60); // 값이 있다면 60초 동안 쿠키 저장
		}

		response.addCookie(cookie); // 쿠키 저장
		
		/** 쿠키 꺼내기 **/
		Cookie[] cookies = request.getCookies();
		
		List<Firstimg> cookie_img = new ArrayList<Firstimg>();
		
		Firstimg cookie_img_output = new Firstimg();
		
		if (cookies != null) {
			for (int i = 0; i < cookies.length; i++) {
				Cookie cookie2 = cookies[i];
				if (cookie2.getName().contains("prodno")) {
					myCookie = cookie2.getValue();
					int cookie_prodno=Integer.parseInt(myCookie);
					Firstimg cookie_output = new Firstimg();
					cookie_output.setProdno(cookie_prodno);
					try {
						cookie_img_output=productService.getProductFirstImg(cookie_output);
					}catch (Exception e) {
						return webHelper.redirect(null, e.getLocalizedMessage());
					}
					cookie_img.add(cookie_img_output);
					//System.out.println("Hello " + cookie_img);
				}
			}
			// 추출한 값을 View에게 전달
			model.addAttribute("my_cookie", cookie_img);
		} else {
			try {
				Firstimg cookie_output = new Firstimg();
				cookie_output.setProdno(Integer.parseInt(myCookie));
				cookie_img_output=productService.getProductFirstImg(cookie_output);
			}catch (Exception e) {
				return webHelper.redirect(null, e.getLocalizedMessage());
			}
			model.addAttribute("my_cookie", cookie_img_output);
		}
		
		
		/** 3) View 처리하기 */
		model.addAttribute("imgoutput", imgoutput);
		model.addAttribute("similar", similar);
		model.addAttribute("imgList", imgList);
		model.addAttribute("category", category);
		model.addAttribute("output", output);
		return new ModelAndView("03_detail/detail");
	}
	
	

}
