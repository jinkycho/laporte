package com.project.laporte.service.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.laporte.helper.WebHelper;
import com.project.laporte.model.User;
import com.project.laporte.service.UserService;

import lombok.extern.slf4j.Slf4j;

/** 회원 데이터 관리 기능을 제공하기 위한 Service 계층에 대한 구현체 */
//->import org.springframework.stereotype.Service;
@Service
@Slf4j

public class UserServiceImpl implements UserService {

	/** MyBatis */
	// -->import org.apache.ibatis.session.Sqlsession
	@Autowired
	SqlSession sqlSession;

	@Autowired
	WebHelper webHelper;

	/** 회원가입 정보 저장 */
	@Override
	public int addUser(User input) throws Exception {
		int result = 0;

		try {
			result = sqlSession.insert("UserMapper.insertUser", input);

			if (result == 0) {
				throw new NullPointerException("result=0");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("저장된 데이터가 없습니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 저장에 실패했습니다.");
		}
		return result;
	}

	/** 회원가입 정보 조회 */
	@Override
	public User getUserItem(User input) throws Exception {
		User result = null;

		try {
			result = sqlSession.selectOne("UserMapper.selectItem", input);

			if (result == null) {
				throw new NullPointerException("result == null");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 데이터가 없습니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		return result;
	}

	/** 아이디 중복 검사 */
	@Override
	public int getIdItem(User input) throws Exception {
		int result = 0;

		try {
			result = sqlSession.selectOne("UserMapper.idCheck", input);

			if (result > 0) {
				result = 1;
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("조회된 데이터가 없습니다.");
		}

		return result;
	}

	/** 로그인 아이디 비밀번호 검사 */
	@Override
	public User checkIdPw(User input) throws Exception {
		User result = null;
		
		try {
			result = sqlSession.selectOne("UserMapper.idPwCheck", input);

			if (result == null) {
				throw new NullPointerException("result == null");
			}
		} catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("비밀번호가 잘못 되었습니다.");
		} catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		return result;
	}
	
	/** 암호화된 비밀번호 검사 */
	@Override
	public User checkPw(User input) throws Exception {
		User result = null;
		
		try {
			result = sqlSession.selectOne("UserMapper.pwCheck", input);
			
			if(result == null) {
				throw new NullPointerException("result == null");
			}
		}catch (NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("존재하지 않는 아이디입니다.");
		}catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
		}
		return result;
	}

	/** 이메일 존재 여부 검사 */
	@Override
	public User checkEmail(User input) throws Exception {
		User result = null;
		
		try {
			result = sqlSession.selectOne("UserMapper.emailCheck", input);
			
			if(result == null) {
				throw new NullPointerException("result == null");
			}
		}catch(NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("존재하지 않는 이메일입니다.");
		}catch (Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 조회에 실패했습니다.");
	}
		return result;
}

	/** 비밀번호 변경 */
	@Override
	public int pwRevise(User input) throws Exception {
		int result = 0;
		
		try {
			result = sqlSession.update("UserMapper.pwRevise", input);
			
			if(result == 0) {
				throw new NullPointerException("result = 0");
			}
		}catch(NullPointerException e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("수정된 데이터가 없습니다.");
		}catch(Exception e) {
			log.error(e.getLocalizedMessage());
			throw new Exception("데이터 수정에 실패했습니다.");
		}
		return result;
	}
}
