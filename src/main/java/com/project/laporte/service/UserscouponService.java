package com.project.laporte.service;

import java.util.List;

import com.project.laporte.model.Userscoupon;

public interface UserscouponService {
	
	/** 회원 쿠폰 추가 */
	public int addUsersCoupon(Userscoupon input) throws Exception;
	
	/** 쿠폰 목록 조회 */
	public List<Userscoupon> getUsersCouponList(Userscoupon input) throws Exception;

}
	

