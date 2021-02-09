package com.project.laporte.service;

import com.project.laporte.model.User;

public interface UserService {
	/** 회원가입 정보 저장 */
	public int addUser(User input) throws Exception;
	
	/** 회원가입 정보 조회 */
	public User getUserItem(User input) throws Exception;

}
