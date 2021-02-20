package com.project.laporte.model;

import lombok.Data;

@Data
public class Delivery {
	private int deliveryno;					// 배송번호(PK)
	private String deliverydate;			// 배송날짜
	private String deliverystatus;			// 배송상태
	private int trackingnum;				// 운송장번호
	private int userno;						// 유저번호
	private int orderno;					// 주문번호
	private String regdate;					// 저장날짜
	private String editdate;				// 수정날짜
	
	/** 2) JOIN절에 따른 추가 컬럼 */
	private int uname;						// user table 유저 이름
	private int phone;						// user table 유저 이름
	
	private int prodno;						// product table 제품 번호
	private int pname;						// product table 제품 이름
	
}