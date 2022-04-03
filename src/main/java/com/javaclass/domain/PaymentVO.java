package com.javaclass.domain;

public class PaymentVO {
	int order_number;
	int payment_number;
	String id;
	String sender_name;
	String sender_email;
	String sender_tel;
	String sender_zonecode;
	String sender_address;
	String sender_daddress;
	String receiver_name;
	String receiver_email;
	String receiver_tel;
	String receiver_zonecode;
	String receiver_address;
	String receiver_daddress;
	String user_require;
	int buylist_number;
	int price;
	String state;
	
	
	public int getOrder_number() {
		return order_number;
	}
	public void setOrder_number(int order_number) {
		this.order_number = order_number;
	}
	public int getPayment_number() {
		return payment_number;
	}
	public void setPayment_number(int payment_number) {
		this.payment_number = payment_number;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getSender_name() {
		return sender_name;
	}
	public void setSender_name(String sender_name) {
		this.sender_name = sender_name;
	}
	public String getSender_email() {
		return sender_email;
	}
	public void setSender_email(String sender_email) {
		this.sender_email = sender_email;
	}
	public String getSender_tel() {
		return sender_tel;
	}
	public void setSender_tel(String sender_tel) {
		this.sender_tel = sender_tel;
	}
	public String getSender_zonecode() {
		return sender_zonecode;
	}
	public void setSender_zonecode(String sender_zonecode) {
		this.sender_zonecode = sender_zonecode;
	}
	public String getSender_address() {
		return sender_address;
	}
	public void setSender_address(String sender_address) {
		this.sender_address = sender_address;
	}
	public String getSender_daddress() {
		return sender_daddress;
	}
	public void setSender_daddress(String sender_daddress) {
		this.sender_daddress = sender_daddress;
	}
	public String getReceiver_name() {
		return receiver_name;
	}
	public void setReceiver_name(String receiver_name) {
		this.receiver_name = receiver_name;
	}
	public String getReceiver_email() {
		return receiver_email;
	}
	public void setReceiver_email(String receiver_email) {
		this.receiver_email = receiver_email;
	}
	public String getReceiver_tel() {
		return receiver_tel;
	}
	public void setReceiver_tel(String receiver_tel) {
		this.receiver_tel = receiver_tel;
	}
	public String getReceiver_zonecode() {
		return receiver_zonecode;
	}
	public void setReceiver_zonecode(String receiver_zonecode) {
		this.receiver_zonecode = receiver_zonecode;
	}
	public String getReceiver_address() {
		return receiver_address;
	}
	public void setReceiver_address(String receiver_address) {
		this.receiver_address = receiver_address;
	}
	public String getReceiver_daddress() {
		return receiver_daddress;
	}
	public void setReceiver_daddress(String receiver_daddress) {
		this.receiver_daddress = receiver_daddress;
	}
	public String getUser_require() {
		return user_require;
	}
	public void setUser_require(String user_require) {
		this.user_require = user_require;
	}
	public int getBuylist_number() {
		return buylist_number;
	}
	public void setBuylist_number(int buylist_number) {
		this.buylist_number = buylist_number;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
}