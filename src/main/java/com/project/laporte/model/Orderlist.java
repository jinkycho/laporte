package com.project.laporte.model;

import lombok.Data;

@Data
public class Orderlist {
	
	//1) 기본 컬럼
	private int orderno;
	private String addr1;
	private String addr2;
	private String postcode;
	private String name;
	private String email;
	private String phoneno;
	private String loctype;
	private String servicetype;
	private String request;
	private String sizelimit;
	private String deltype;
	private String totalprice;
	private int usrcouponno;
	private int userno;
	private int deltypeno;
	private String orderstatus;
	private String regdate;
	private String editdate;
	private int cartno;
	
	//2) deltype(배송 유형) 테이블과 조인
	private String dname;
	private int dprice;
	
	
	//3) coupon(쿠폰) 테이블과 조인
	private String cname;
	private int discount;
	private String distype;
	
}
