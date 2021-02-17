package com.project.laporte.dao;

import org.apache.ibatis.session.SqlSession;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.project.laporte.model.Cart;

import lombok.extern.slf4j.Slf4j;

/** Lombok의 Log4j 객체 */
// import lombok.extern.slf4j.Slf4j;
@Slf4j
/** JUnit에 의한 테스트 클래스로 정의 */
// import org.junit.runner.RunWith;
// import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
@RunWith(SpringJUnit4ClassRunner.class)
/** Spring의 설정 파일들을 읽어들이도록 설정 (**은 `모든` 이라는 의미) */
// import org.springframework.test.context.ContextConfiguration;
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/*-context.xml" })
/** 웹 어플리케이션임을 명시 */
// import org.springframework.test.context.web.WebAppConfiguration;
@WebAppConfiguration
/** 메서드 이름순서로 실행하도록 설정 (설정하지 않을 경우 무작위 순서로 실행됨) */
// import org.junit.FixMethodOrder;
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class CartTest {

    /** MyBatis의 SQL세션 주입 설정 */
    // -> import org.springframework.beans.factory.annotation.Autowired;
    @Autowired
    private SqlSession sqlSession;
    
    /** 데이터 저장 테스트 */
    @Test
    public void testA() {
    	Cart input = new Cart();
    	input.setEa(1);
    	input.setUserno(10001);
    	input.setProdno(20003);
    	sqlSession.insert("CartMapper.insertCartItem",input);
    }
    
    /** 데이터 삭제 테스트 */
    @Test
    public void testB() {
    	Cart input = new Cart();
    	input.setCartno(3004);
    	sqlSession.delete("CartMapper.deleteCartItem", input);
    }
    
    /** 데이터 수정 테스트 */
    @Test
    public void testC() {
    	Cart input = new Cart();
    	input.setCartno(3002);
    	input.setEa(4);
    	input.setUserno(10002);
    	input.setProdno(20003);
    	input.setEditdate("2000-12-31");
    	sqlSession.update("CartMapper.updateCartItem", input);
    }
    
    /** Join 을 활용한 데이터 수 조회 */
    @Test
    public void testD() {
    	Cart input = new Cart();
    	input.setUserno(10001);
    	sqlSession.selectList("CartMapper.selectCartList", input);
    }
    
    /** 데이터 수량 테스트 */
    @Test
    public void testE() {
    	Cart input = new Cart();
    	input.setUserno(10001);
    	input.setProdno(20003);
    	sqlSession.selectOne("CartMapper.countCart", input);
    }
    
    /** 데이터 수량증가 테스트 */
    @Test
    public void testF() {
    	Cart input = new Cart();
    	input.setUserno(10001);
    	input.setProdno(20003);
    	sqlSession.update("CartMapper.updateCartList", input);
    }
}
    
