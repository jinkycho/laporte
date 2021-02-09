package com.project.laporte.model;

import lombok.Data;

@Data
public class Review {
	private int reviewno;
	private int prodno;
	private int userno;
	private String title;
	private String content;
	private int easyscore;
	private int benefitscore;
	private int qualityscore;
	private int funcscore;
	private int appearscore;
	private String recommend;
	private String regdate;
	private String editdate;
}
