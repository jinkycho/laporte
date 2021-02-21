package com.project.laporte.model;

import lombok.Data;

@Data
public class Delivery {
	private int deliveryno;					// 배송 번호(PK)
	private String deliverydate;			// 배송 날짜
	private String deliverystatus;			// 배송 상태
	private int trackingnum;				// 운송장 번호
	private int userno;						// 유저 번호 (FK)
	private int orderno;					// 주문 번호 (FK)
	private String regdate;					// 저장 날짜
	private String editdate;				// 수정 날짜
	
	/** 2) JOIN절에 따른 추가 컬럼 */
	// user table
	private int uname;						// 유저 이름 ( 주문자 )
	
	// orderlist table
	private String addr1;					// 배송지 주소 ( 기본값 유저주소)
	private String addr2;					// 배송지 상세주소 ( 기본값 유저상세주소 )
	private String oname;					// 배송받는 사람 ( 기본값 유저이름 )
	private String email;					// 배송받는 사람 이메일 ( 기본값 유저이메일 )
	private String phoneno;					// 배송받는 사람 연락처 ( 기본값 유저연락처 )
	private String servicetype;				// 배송 서비스 유/무 ( 기본값 N )
	private String request;					// 배송 요청사항 ( 기본값 null )
	private String deldate;					// 배송 희망날짜
	private String paytype;					// 결제 수단 ( 신용카드 C, 무통장입금 D, 휴대폰결제 M, 실시간계좌이체 D2 )
	private int totalprice;					// 총 결제 금액
	private String orderstatus;				// 주문 상태 ( 주문 N, 취소 CC, 교환 CH, 반품 RT, 환불 RF )
	private String paystatus;				// 결제 상태 ( 결제완료 Y, 결제전 N )

	// product table
	private String pname;					// 상품 이름
	
	// deltype table
	private int deltypeno;					// 배송 유형번호
	private String dname;					// 배송 유형이름 ( 일반배송, 트럭배송 )
	private int dprice;						// 배송비
	
	// coupon table
	private String usrcouponno;				// 쿠폰 번호
	private String cname;					// 쿠폰 이름
	private int discount;					// 할인율
	private String distype;					// 할인 유형 ( %, - )
	
}