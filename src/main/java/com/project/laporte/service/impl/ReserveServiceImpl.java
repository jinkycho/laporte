package com.project.laporte.service.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.laporte.model.Reserve;
import com.project.laporte.service.ReserveService;

import lombok.extern.slf4j.Slf4j;

/** 예약 데이터 관리 기능을 제공하기 위한 service 계층에 대한 구현체 */
// --> import org.springframework.stereotype.Service;
@Service
@Slf4j
public class ReserveServiceImpl implements ReserveService{
	
	/** MyBatis */
	//--> import org.apache.ibatis.session.SqlSession;
	@Autowired
	SqlSession sqlSession;
	
	/**
	 * 예약 데이터 저장하기
	 * @param Reserve 저장할 정보를 담고있는 Beans
	 * @return int
	 * @throws Exception
	 */
	@Override
	public int addReserve(Reserve input) throws Exception {
		int result = 0;
		
		try {
			result = sqlSession.insert("ReserveMapper.insertItem", input);
			
			if (result == 0) {
				throw new NullPointerException("result=0");
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

	@Override
	public int editReserve(Reserve input) throws Exception {
		int result = 0;
		
		try {
			result = sqlSession.update("ReserveMapper.updateItem",input);
			
			if(result == 0) {
				throw new NullPointerException("result=0");
			}
		}catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("수정된 데이터가 없습니다.");
		}catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 수정에 실패했습니다.");
		}
		return result;
	}

	@Override
	public int deleteReserve(Reserve input) throws Exception {
		int result = 0;
		
		try {
			result = sqlSession.update("ReserveMapper.deleteItem",input);
			
			if(result ==0) {
				throw new NullPointerException("result=0");
			}
		} catch(NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("삭제된 데이터가 없습니다.");
		}catch(Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 삭제에 실패했습니다.");
		}
		return result;
	}
	
	/**
	 * 예약 상세 조회하기
	 * @param Reserve 조회할 교수의 일련번호를 담고 있는 Beans
	 * @return 조회된 데이터가 저장된 Beans
	 * @throws Exception
	 */
	
	@Override
	public Reserve getReserveItem(Reserve input) throws Exception {
		Reserve result = null;
		
		try {
			result = sqlSession.selectOne("ReserveMapper.selectItem", input);
			
			if(result == null) {
				throw new NullPointerException("result=null");
			}
		}catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 데이터가 없습니다.");
		}catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		return result;
	}

	@Override
	public List<Reserve> getReservesList(Reserve input) throws Exception {
		List<Reserve> result = null;
		
		
		try {
			result = sqlSession.selectList("ReserveMapper.selectList", input);
			
			if(result == null) {
				throw new NullPointerException("result=null");
			}
		}catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 데이터가 없습니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		return result;
	}

	/**
	 * 
	 */
	
	@Override
	public int updateReservey(Reserve input) throws Exception {
		int result = 0;
		
		try {
			result = sqlSession.update("ReserveMapper.okitem",input);
			
			if(result ==0) {
				throw new NullPointerException("result=0");
			}
		} catch(NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("수정된 데이터가 없습니다.");
		}catch(Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 수정에 실패했습니다.");
		}
		return result;
	}

	@Override
	public List<Reserve> getReserveListw(Reserve input) throws Exception {
		List<Reserve> result = null;
		
		
		try {
			result = sqlSession.selectList("ReserveMapper.reserveListW", input);
			
			if(result == null) {
				throw new NullPointerException("result=null");
			}
		}catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 데이터가 없습니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		return result;
	}

	@Override
	public List<Reserve> getReserveListcc(Reserve input) throws Exception {
		List<Reserve> result = null;
		
		
		try {
			result = sqlSession.selectList("ReserveMapper.reserveListCC", input);
			
			if(result == null) {
				throw new NullPointerException("result=null");
			}
		}catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 데이터가 없습니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		return result;
	}

	@Override
	public List<Reserve> getReserveListcf(Reserve input) throws Exception {
		List<Reserve> result = null;
		
		
		try {
			result = sqlSession.selectList("ReserveMapper.reserveListCF", input);
			
			if(result == null) {
				throw new NullPointerException("result=null");
			}
		}catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 데이터가 없습니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		return result;
	}

}