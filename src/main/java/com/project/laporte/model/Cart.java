package com.project.laporte.model;

import lombok.Data;

@Data
public class Cart {
	/** 1) 기본 컬럼 */
	private int cartno;			// 장바구니번호(PK)
	private int userno;			// 유저번호
	private int prodno;			// 상품번호
	private int ea;				// 상품수량
	private String regdate;		// 저장날짜
	private String editdate;	// 수정날짜
	
	/** 2) JOIN절에 따른 추가 컬럼 */
	private String uname;		// user table 유저 이름
	private String pname;		// product table 제품 이름
	private int price;			// product table 제품 가격
	private int saleprice;		// product table 제품 세일 가격
	private int stock;			// product table 제품 재고
	private String color;		// product table 제품 색상
	private String size;		// product table 제품 사이즈

}