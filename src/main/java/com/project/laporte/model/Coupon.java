package com.project.laporte.model;

import lombok.Data;

@Data
public class Coupon {

	private int couponno;
	private String name;
	private String startdate;
	private String enddate;
	private int discount;
	private String distype;
	private String dupliuse;
	private String link;
	private String regdate;
	private String editdate;
	private String expire;
}
