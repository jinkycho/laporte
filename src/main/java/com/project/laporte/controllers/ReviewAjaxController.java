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
import com.project.laporte.model.RevComment;
import com.project.laporte.model.Review;
import com.project.laporte.service.ReviewService;

@Controller
public class ReviewAjaxController {
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
	ReviewService reviewService;

	/** "/프로젝트이름"에 해당하는 ContextPath 변수 주입 */
	// --> import org.springframework.beans.factory.annotation.Value;
	@Value("#{servletContext.contextPath}")
	String contextPath;

	/** 리뷰 목록 페이지 */
	@RequestMapping(value = "/11_admin/admin_review.do", method = RequestMethod.GET)
	public ModelAndView adminReview(Model model,
			@RequestParam(value="page", defaultValue="1")int nowPage,
			@RequestParam(value = "keyword", defaultValue = "", required=false) String keyword) {

		/** 1) 리뷰에 대한 정보 리스트 */
		List<Review> list = new ArrayList<Review>();

		/** 페이지 구현에 필요한 변수값 생성 */
		int totalCount = 0;		// 전체 게시글 수 
		int listCount = 10;		// 한 페이지당 표시할 목록 수
		int pageCount = 5;		// 한 그룹당 표시할 페이지 번호 수
		
		PageData pageData = null;
		
		try {
			// 데이터 조회
			totalCount = reviewService.getProductCountAdmin(null);
			pageData = new PageData(nowPage, totalCount, listCount, pageCount);
			Review.setOffset(pageData.getOffset());
			Review.setListCount(pageData.getListCount());
			list = reviewService.admintReviewList(null);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}

		/** 2) 리뷰에 대한 답변에 대한 정보 리스트 */
		List<RevComment> revcomment = new ArrayList<RevComment>();
		if (list.size() != 0) {
			for (int i = 0; i < list.size(); i++) {
				Review item = list.get(i);

				RevComment revcomoutput = new RevComment();
				revcomoutput.setReviewno(item.getReviewno());
				
				RevComment revcomitem = new RevComment();
				try {
					// 데이터 조회
					revcomitem = reviewService.admintRevcommentList(revcomoutput);
					if(revcomitem!=null) {
						revcomment.add(revcomitem);
					}
					
				} catch (Exception e) {
					return webHelper.redirect(null, e.getLocalizedMessage());
				}
			}
		}

		/** View 처리하기 */
		model.addAttribute("item", list);
		model.addAttribute("revcom", revcomment);
		model.addAttribute("pageData", pageData);
		return new ModelAndView("11_admin/admin_review");
	}
	
	/** 리뷰 답변 남기기 페이지 */
	@RequestMapping(value = "/11_admin/admin_review_answer.do", method = RequestMethod.GET)
	public ModelAndView adminReviewComment(Model model, @RequestParam(value = "reviewno", defaultValue = "0") int reviewno) {
		if (reviewno == 0) {
			return webHelper.redirect(null, "리뷰 번호가 없습니다");
		}
		Review input = new Review();
		input.setReviewno(reviewno);
		
		Review output = new Review();
		
		try {
			// 데이터 조회
			output = reviewService.selectReview(input);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		model.addAttribute("item", output);
		return new ModelAndView("11_admin/admin_review_answer");
	}
	
	/** 리뷰에 남긴 답변 수정 페이지 */
	@RequestMapping(value = "/11_admin/admin_review_edit.do", method = RequestMethod.GET)
	public ModelAndView adminReviewEdit(Model model, @RequestParam(value = "reviewno", defaultValue = "0") int reviewno) {
		if (reviewno == 0) {
			return webHelper.redirect(null, "리뷰 번호가 없습니다");
		}
		Review input = new Review();
		input.setReviewno(reviewno);
		RevComment commentinput  = new RevComment();
		commentinput.setReviewno(reviewno);
		
		Review output = new Review();
		RevComment commentoutput = new RevComment();
		
		try {
			// 데이터 조회
			output = reviewService.selectReview(input);
			commentoutput = reviewService.admintRevcommentList(commentinput);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		model.addAttribute("item", output);
		model.addAttribute("comitem", commentoutput);
		return new ModelAndView("11_admin/admin_review_edit");
	}
	
	/** 리뷰에 남긴 답변 확인 페이지 */
	@RequestMapping(value = "/11_admin/admin_review_view.do", method = RequestMethod.GET)
	public ModelAndView adminReviewView(Model model, @RequestParam(value = "reviewno", defaultValue = "0") int reviewno) {
		if (reviewno == 0) {
			return webHelper.redirect(null, "리뷰 번호가 없습니다");
		}
		Review input = new Review();
		input.setReviewno(reviewno);
		RevComment commentinput  = new RevComment();
		commentinput.setReviewno(reviewno);
		
		Review output = new Review();
		RevComment commentoutput = new RevComment();
		
		try {
			// 데이터 조회
			output = reviewService.selectReview(input);
			commentoutput = reviewService.admintRevcommentList(commentinput);
		} catch (Exception e) {
			return webHelper.redirect(null, e.getLocalizedMessage());
		}
		
		model.addAttribute("item", output);
		model.addAttribute("comitem", commentoutput);
		return new ModelAndView("11_admin/admin_review_view");
	}
}
