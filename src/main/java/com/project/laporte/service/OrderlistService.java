package com.project.laporte.service;

import java.util.List;

import com.project.laporte.model.Orderlist;

public interface OrderlistService {

	/** 새로운 구매 저장 */
	public int addPurchase(Orderlist input) throws Exception;

	/** 구매 정보 조회 */
	public Orderlist getPurchase(Orderlist input) throws Exception;

	/** 주문 목록 조회 */
	public List<Orderlist> getOrderList(Orderlist input) throws Exception;

	/** 주문 데이터가 저장되어 있는 갯수 조회 */
	public int getOrderlistCount(Orderlist input) throws Exception;

	/** 주문정보 수정 */
	public int updateOrderlist(Orderlist input) throws Exception;

}
