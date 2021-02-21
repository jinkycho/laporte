package com.project.laporte.service;

import com.project.laporte.model.Orderlist;

public interface OrderlistService {

	/** 새로운 구매 저장 */
	public int addPurchase(Orderlist input) throws Exception;
	
	/** 구매 정보 조회 */
	public Orderlist getPurchase(Orderlist input) throws Exception;
	
	
}
