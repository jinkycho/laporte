package com.project.laporte.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
import com.project.laporte.model.Wish_prod;
import com.project.laporte.model.Wishlist;
import com.project.laporte.service.WishlistService;

@Controller
public class WishlistAjaxController {
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
	WishlistService wishlistService;

	/** "/프로젝트이름"에 해당하는 ContextPath 변수 주입 */
	// --> import org.springframework.beans.factory.annotation.Value;
	@Value("#{servletContext.contextPath}")
	String contextPath;

	/** 위시리스트 페이지  */
	@RequestMapping(value = "/05_wishlist/wishlist.do", method = RequestMethod.GET)
	public ModelAndView view(Model model, 
							HttpServletRequest request,
							@RequestParam(value = "userno", defaultValue = "0", required=false) int userno,
							@RequestParam(value = "wishno", defaultValue = "0", required=false) int wishno) {
		/** 1) 유효성 검사 */
        	
		
		// 세션값 확인해서 세션값이 있으면 userno에 넣기
		if (userno == 0) {
			HttpSession session = request.getSession();
        	if(session.getAttribute("my_session")!=null) {
        		userno = (int) session.getAttribute("my_session");
        	}
		}

		/** 2) 데이터 조회하기 */
		// 데이터 조회에 필요한 조건값을 Beans에 저장하기
		//위시리스트를 선택하지 않은경우
		Wishlist basicwish = new Wishlist();
		List<Wish_prod> basicwishprod = new ArrayList<Wish_prod>(); //기본위시리스트에 담긴 상품조회 리스트
		
		if(wishno==0 && userno!=0) { //로그인은 했지만 아무 위시리스트도 선택하지 않았을 때 (기본 위시리스트)
			Wishlist input = new Wishlist();
			input.setUserno(userno);

			// 조회결과를 저장할 객체 선언
			Wishlist basicoutput = null;
			List<Wishlist> wishlist = new ArrayList<Wishlist>();

			try {
				// 데이터 조회
				basicoutput = wishlistService.selectBasicWish(input);
				wishlist = wishlistService.getWishList(input);
			} catch (Exception e) {
				return webHelper.redirect(null, e.getLocalizedMessage());
			}
			
			int basicno = basicoutput.getWishno();
			
			basicwish.setWishno(basicno);
			
			try {
				// 데이터 조회
				basicwishprod = wishlistService.getWishitemList(basicwish);
			} catch (Exception e) {
				return webHelper.redirect(null, e.getLocalizedMessage());
			}
			System.out.println("중간확인================"+basicwishprod);
			model.addAttribute("basicwishprod", basicwishprod);
			model.addAttribute("nowwilist", basicoutput);
			model.addAttribute("wishlist", wishlist);
		}else if(wishno!=0 && userno!=0) { //로그인도 했고, 다른 위시리스트도 선택했을 경우
			
		}else { //로그인을 안한 경우
			basicwishprod = null;
			model.addAttribute("basicwishprod", basicwishprod);
		}
		
		
		
		//위시리스트에 담겨있는 상품 데이터 조회
		

		/** 3) View 처리하기 */
		model.addAttribute("userno", userno);
		return new ModelAndView("05_wishlist/wishlist");
	}
}
