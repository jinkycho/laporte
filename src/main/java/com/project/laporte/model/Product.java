package com.project.laporte.model;

import lombok.Data;

@Data
public class Product {

	// 1) 기본 컬럼
	private int prodno;
	private String name;
	private int price;
	private int saleprice;
	private int stock;
	private String display;
	private String color;
	private String size;
	private String adminnote;
	private String detailnote;
	private String detailsize;
	private int catno2;
	private String group;
	private String regdate;
	private String editdate;
	
	// 2) JOIN절에 따른 추가 컬럼
	private String catname1;
	private String catname2;
	private int catno1;
	private String FileUrl;
	private String thumbnailUrl;
}
