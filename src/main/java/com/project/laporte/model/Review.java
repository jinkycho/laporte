package com.project.laporte.model;

import lombok.Data;

@Data
public class Review {
	// 1) 기본 컬럼
	private int reviewno;
	private int prodno;
	private int userno;
	private int orderno;
	private String title;
	private String content;
	private int easyscore;
	private int benefitscore;
	private int qualityscore;
	private int funcscore;
	private int appearscore;
	private int avgscore;
	private String recommend;
	private String regdate;
	private String editdate;
	
	// 2) Use테이블과 Join
	private String name;
	
	// 3) Fristimg 테이블과 Join
	private String thumbnailUrl;
}
