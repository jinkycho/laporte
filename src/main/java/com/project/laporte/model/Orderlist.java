package com.project.laporte.model;

import lombok.Data;

@Data
public class Orderlist {
	
	private int orderno;
	private String addr1;
	private String addr2;
	private String postcode;
	private String name;
	private String email;
	private String phoneno;
	private String loctype;
	private String servicetype;
	private String request;
	private String sizelimit;
	private String deltype;
	private String totalprice;
	private int usrcouponno;
	private int userno;
	private int deltypeno;
	private String orderstatus;
	private String regdate;
	private String editdate;
	private int cartno;
}
