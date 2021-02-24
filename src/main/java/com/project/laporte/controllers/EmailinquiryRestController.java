package com.project.laporte.controllers;


import java.util.HashMap;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.project.laporte.helper.MailHelper;
import com.project.laporte.helper.RegexHelper;
import com.project.laporte.helper.UploadItem;
import com.project.laporte.helper.WebHelper;

import com.project.laporte.model.Email_inquiry;
import com.project.laporte.service.EmailinquiryService;

@RestController
public class EmailinquiryRestController {
	
	 /** WebHelper 주입 */
    @Autowired  WebHelper webHelper;

    /** RegexHelper 주입 */
    @Autowired  RegexHelper regexHelper;
    
    /** MailHlper 주입 */
    @Autowired MailHelper mailHelper;
    
    /** Service 패턴 구현체 주입 */
    @Autowired EmailinquiryService emailinquiryService;


    /** "/프로젝트이름" 에 해당하는 ContextPath 변수 주입 */
    @Value("#{servletContext.contextPath}")
    String contextPath;
    
    /** 새로운 이메일 문의 추가*/
    @RequestMapping(value="/09_cs", method=RequestMethod.POST)
    public Map<String, Object>add_email_inquiry(Model model, HttpServletRequest request,
    		@RequestParam(value="name", defaultValue="") String name,
    		@RequestParam(value="email", defaultValue="") String email,
    		@RequestParam(value="category", defaultValue="") String category,
    		@RequestParam(required=false) MultipartFile file,
    		@RequestParam(value="content", defaultValue="") String content
    		){
    	
    	/**1) 사용자가 입력한 파라미터 유효성 검사*/
		//유효성 검사 프론트에서 구현
    	if(!regexHelper.isValue(name)) 				{webHelper.getJsonWarning("이름을 입력해주세요."); }
    	if(!regexHelper.isValue(email)) 			{webHelper.getJsonWarning("이메일을 입력해주세요."); }
    	if(!regexHelper.isValue(category)) 			{webHelper.getJsonWarning("카테고리를 선택해주세요."); }
    	if(!regexHelper.isValue(content)) 			{webHelper.getJsonWarning("문의 내용을 입력해주세요."); }
    	
		/** 2) 데이터 저장하기 */
		//저장할 값들을 Beans에 담는다.
		Email_inquiry input = new Email_inquiry();
		input.setName(name);
		input.setEmail(email);
		input.setCategory(category);
		input.setContent(content);
		
		
		//저장된 결과를 조회하기 위한 객체
		Email_inquiry output = null;
		
		//업로드 된 결과를 저장하기 위한 객체 생성		
		UploadItem uploadFile = new UploadItem();
		
		try {
			//업로드 결과가 저장된 Beans를 리턴받는다.
			uploadFile = webHelper.saveMultipartFile(file);
			
			String fileUrl = uploadFile.getFileUrl();
			input.setFile(fileUrl);
			
			//데이터 저장에 성공하면 파라미터로 전달하는 input 객체에 PK값이 저장된다.
			emailinquiryService.addEmailInquiry(input);
			
			//데이터 조회
			output = emailinquiryService.getEmailInquiry(input);
			

		}catch(Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		
		/** 결과를 확인하기 위한 페이지 연동 */
		//저장 결과를 확인하기 위해 데이터 저장 시 생성된 PK값을 상세 페이지로 전달해야 한다.
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("item", output);
	
		
		return webHelper.getJsonData();
    }
    
    /** 새로운 이메일 문의 추가*/
    @RequestMapping(value="/09_cs", method=RequestMethod.PUT)
    public Map<String, Object>answer_email_inquiry(Model model,    		
    		@RequestParam(value="emailno", defaultValue="0") int emailno,
    		@RequestParam(value="answer", defaultValue="") String answer
    		){
    	
    	/**1) 사용자가 입력한 파라미터 유효성 검사*/
		//유효성 검사 프론트에서 구현
    	
		/** 2) 데이터 저장하기 */
		//저장할 값들을 Beans에 담는다.
		Email_inquiry input = new Email_inquiry();
		input.setEmailno(emailno);
		input.setAnswer(answer);
		
		Email_inquiry output = null;
		
		try {
			//데이터 수정
			emailinquiryService.answerEmailInquiry(input);
			
			//수정 결과 조회
			output = emailinquiryService.getEmailInquiry(input);
			
			//DB 에 답변 저장 후 이메일 보내기
			
			if(output != null) {
				try {
				String subject = "la porte 고객센터 입니다.";
				String content = "<div style = 'width : 75%; background-color: #cebea7; margin:auto; padding:30px;'>" +
						 "<h2> 안녕하세요. la porte 입니다 </h2>" +
						 "<p> 고객님께서 문의 해주신 </p>" +
						 output.getContent()+
						 "<p>에 대한 답변 입니다.</p>"+						 
						 "<br />" + 
						 
						 "<p> laporte 고객센터 답변 </p>" +
						 output.getAnswer()+
						 "<br />" +
						 "</div>";
				
				mailHelper.sendMail(output.getEmail(), subject, content);
				}catch(Exception e) {
					return webHelper.getJsonError(e.getLocalizedMessage());
				}
			}
		}
		catch(Exception e) {
			return webHelper.getJsonError(e.getLocalizedMessage());
		}
		
		/** 결과를 확인하기 위한 JSON 출력 */
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("item", output);
		return webHelper.getJsonData(map);
    }
}
