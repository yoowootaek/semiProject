package com.javaclass.domain;

public class MyPageOrderModifyVO {
	
	private int order_seq;
	private String order_time;
	private String order_payselect;
	private String order_uesrreq;
	private String account_id;
	private int product_seq;
	private String coupon_number;
	
	
	public MyPageOrderModifyVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MyPageOrderModifyVO(int order_seq, String order_time, String order_payselect, String order_uesrreq,
			String account_id, int product_seq, String coupon_number) {
		super();
		this.order_seq = order_seq;
		this.order_time = order_time;
		this.order_payselect = order_payselect;
		this.order_uesrreq = order_uesrreq;
		this.account_id = account_id;
		this.product_seq = product_seq;
		this.coupon_number = coupon_number;
	}
	public int getOrder_seq() {
		return order_seq;
	}
	public void setOrder_seq(int order_seq) {
		this.order_seq = order_seq;
	}
	public String getOrder_time() {
		return order_time;
	}
	public void setOrder_time(String order_time) {
		this.order_time = order_time;
	}
	public String getOrder_payselect() {
		return order_payselect;
	}
	public void setOrder_payselect(String order_payselect) {
		this.order_payselect = order_payselect;
	}
	public String getOrder_uesrreq() {
		return order_uesrreq;
	}
	public void setOrder_uesrreq(String order_uesrreq) {
		this.order_uesrreq = order_uesrreq;
	}
	public String getAccount_id() {
		return account_id;
	}
	public void setAccount_id(String account_id) {
		this.account_id = account_id;
	}
	public int getProduct_seq() {
		return product_seq;
	}
	public void setProduct_seq(int product_seq) {
		this.product_seq = product_seq;
	}
	public String getCoupon_number() {
		return coupon_number;
	}
	public void setCoupon_number(String coupon_number) {
		this.coupon_number = coupon_number;
	}
	
	
	

}	
	
	
	
