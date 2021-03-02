package com.project.laporte;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.project.laporte.helper.WebHelper;
import com.project.laporte.model.Coupon;
import com.project.laporte.service.CouponService;

import lombok.extern.slf4j.Slf4j;

/** Lombok의 Log4j 객체 */
//import lombok.extern.slf4j.Slf4j;
@Slf4j
/** JUnit에 의한 테스트 클래스로 정의 */
//import org.junit.runner.RunWith;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
@RunWith(SpringJUnit4ClassRunner.class)
/** Spring의 설정 파일들을 읽어들이도록 설정 (**은 `모든` 이라는 의미) */
//import org.springframework.test.context.ContextConfiguration;
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/*-context.xml" })
/** 웹 어플리케이션임을 명시 */
//import org.springframework.test.context.web.WebAppConfiguration;
@WebAppConfiguration
/** 메서드 이름순서로 실행하도록 설정 (설정하지 않을 경우 무작위 순서로 실행됨) */
//import org.junit.FixMethodOrder;
@FixMethodOrder(MethodSorters.NAME_ASCENDING)

public class CouponTest {
	
	/** 쿠폰 서비스 주입 */
	@Autowired CouponService couponService;
	@Autowired WebHelper webHelper;
	
	@Test
	public void testA() {
	/** 날짜 파라미터 처리 */
	Calendar c = Calendar.getInstance();
	c.add(Calendar.DAY_OF_MONTH, -1);
	
	String date = String.format("%04d-%02d-%02d", c.get(Calendar.YEAR), c.get(Calendar.MONTH)+1, c.get(Calendar.DAY_OF_MONTH));
	
	List<Coupon> couponList = null;
	Coupon couponItem = null;
	
	try {
		couponList = couponService.getCouponList(null);
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		
		for(int i = 0; i<couponList.size(); i++) {
			couponItem = couponList.get(i);
			String couponItemDate = couponItem.getEnddate();
			
			Date today = dateFormat.parse(date);
			Date couponDate = dateFormat.parse(couponItemDate);
			
			System.out.println("오늘날짜:" + today);
			System.out.println("쿠폰날짜:" + couponDate);
			
			if(couponDate.before(today)) {
				couponService.expireCoupon(couponItem);
			}
			
		}	
		}catch (Exception e) {
            System.out.println(e);
        }
	}
	
}
