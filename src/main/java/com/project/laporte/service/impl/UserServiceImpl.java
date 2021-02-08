package com.project.laporte.service.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.laporte.model.User;
import com.project.laporte.service.UserService;

import lombok.extern.slf4j.Slf4j;

/**회원 데이터 관리 기능을 제공하기 위한 Service 계층에 대한 구현체*/
//->import org.springframework.stereotype.Service;
@Service
@Slf4j

public class UserServiceImpl implements UserService {
	
	/**MyBatis*/
	//-->import org.apache.ibatis.session.Sqlsession
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int addUser(User input) throws Exception {
		int result = 0;
		
		try {
			result = sqlSession.insert("UserMapper.insertUser", input);
			
			if(result == 0) {
				throw new NullPointerException("result=0");
			}
		}catch(NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("저장된 데이터가 없습니다.");
		}catch(Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 저장에 실패했습니다.");
		}
		return result;
	}
	
	
}
