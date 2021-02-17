package com.project.laporte.controllers;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.project.laporte.helper.RegexHelper;
import com.project.laporte.helper.WebHelper;
import com.project.laporte.model.Reserve;
import com.project.laporte.service.ReserveService;

@RestController
public class ReserveRestController {
	/** WebHelper 주입 */
	// --> import org.springframework.beans.factory.annotation.Autowired;
	// --> import com.project.laporte.helper.WebHelper;
	@Autowired WebHelper webHelper;
	
	/** RegexHelper 주입 */
	// --> import com.project.laporte.helper.RegexHelper;
	@Autowired RegexHelper regexHelper;
	
	/** Service 패턴 구현체 주입 */
	// --> import com.project.laporte.service.ReserveService;
	@Autowired ReserveService reserveService;
	
	/** 작성 폼에 대한 action 페이지 */
	@RequestMapping(value = "/08_reserve", method = RequestMethod.POST)
	public Map<String,Object>post(
			@RequestParam(value = "showroom", defaultValue="A")String showroom,
			@RequestParam(value = "date", defaultValue = "")String date,
			@RequestParam(value = "name",defaultValue = "")String name,
			@RequestParam(value = "email", defaultValue = "")String email,
			@RequestParam(value = "phoneno",defaultValue = "")String phoneno,
			@RequestParam(value = "time",defaultValue="")String time,
			@RequestParam(value="area",defaultValue="")String area,
			@RequestParam(value="request",defaultValue="")String request,
			@RequestParam(value="userno",defaultValue="0")int userno
			
			){
		// 일반 문자열 입력 컬럼 --> String으로 파라미터가 선언되어 있는 경우 값이 입력되지 않으면 빈 문자열로 처리된다.
				if(!regexHelper.isValue(showroom))	{return webHelper.getJsonWarning(" 매장 을 선택 해주세요.");}
				if(!regexHelper.isValue(date)) {return webHelper.getJsonWarning("날짜 선택을 해주세요.");}
				if(!regexHelper.isValue(name))	{return webHelper.getJsonWarning("이름을 입력해주세요");}
				if(!regexHelper.isKor(name)) {return webHelper.getJsonWarning("이름은 한글만 가능합니다.");}
				if(!regexHelper.isValue(email))	{return webHelper.getJsonWarning("이메일을 입력해주세요.");}
				if(!regexHelper.isEmail(email))	{return webHelper.getJsonWarning("이메일 형식으로 입력해주세요.");}
				if(!regexHelper.isValue(phoneno))	{return webHelper.getJsonWarning("휴대폰 번호를 입력해주세요.");}
				if(!regexHelper.isCellPhone(phoneno)) {return webHelper.getJsonWarning("휴대폰 번호 형식으로 입력해주세요.");}
				if(!regexHelper.isValue(time)) {return webHelper.getJsonWarning("예약 시간을 선택해주세요.");}
				if(!regexHelper.isValue(area))	{return webHelper.getJsonWarning("컨설팅 영역을 선택해주세요.");}
				
				/** 2) 데이터 저장하기 */
				Reserve input = new Reserve();
				
				input.setShowroom(showroom);
				input.setDate(date);
				input.setName(name);
				input.setEmail(email);
				input.setPhoneno(phoneno);
				input.setTime(time);
				input.setArea(area);
				input.setRequest(request);
				input.setUserno(10001);
				
				// 저장된 결과를 조회하기 위한 객체
				Reserve output = null;
				try {
					// 데이터 저장
					// --> 데이터 저장에 성공하면 파라미터로 전달하는 input 객체에 pk값이 저장된다.
					reserveService.addReserve(input);
					
					//데이터 조회
					output = reserveService.getReserveItem(input);
				} catch (Exception e) {
					return webHelper.getJsonError(e.getLocalizedMessage());
				} 
				
				/** 3) 결과를 확인하기 위한 Json 출력 */
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("item",output);
				return webHelper.getJsonData(map);
	}
}
