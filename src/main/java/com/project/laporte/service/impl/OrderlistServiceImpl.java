package com.project.laporte.service.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.laporte.helper.WebHelper;
import com.project.laporte.model.Orderlist;
import com.project.laporte.service.OrderlistService;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j

public class OrderlistServiceImpl implements OrderlistService {

	/** MyBatis */
	@Autowired
	SqlSession sqlSession;

	@Autowired
	WebHelper webHelper;
	
	/** 새로운 구매 저장 */
	@Override
	public int addPurchase(Orderlist input) throws Exception {
		int result = 0;
		
		try {
			result = sqlSession.insert("OrderlistMapper.insertPurchase", input);
			
			if(result == 0) {
				throw new NullPointerException("result == 0");
			}
		}catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("저장된 데이터가 없습니다.");
		}catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 저장에 실패했습니다.");
		}
		return result;
	}

	/** 구매 정보 조회 */
	@Override
	public Orderlist getPurchase(Orderlist input) throws Exception {
		Orderlist result = null;
		
		try {
			result = sqlSession.selectOne("OrderlistMapper.selectPurchase", input);
			
			if(result == null) {
				throw new NullPointerException("result == null");
			}
				}catch (NullPointerException e) {
					log.error(e.getLocalizedMessage());
					throw new Exception("조회된 데이터가 없습니다.");
				}catch(Exception e) {
					log.error(e.getLocalizedMessage());
					throw new Exception("데이터 조회에 실패했습니다.");
				}
				return result;

	}
}