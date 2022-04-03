package com.javaclass.domain;

public class AccountVO {
	private String account_Id;
	private String account_Password;
	private String account_Name;
	private String account_Email;
	private String account_Tel;
	private String account_Addr;
	private String account_Status;
	private String account_Leave;
	
	
	public AccountVO() {
		super();
	}


	public AccountVO(String account_Id, String account_Password, String account_Name, String account_Email,
			String account_Tel, String account_Addr, String account_Status, String account_Leave) {
		super();
		this.account_Id = account_Id;
		this.account_Password = account_Password;
		this.account_Name = account_Name;
		this.account_Email = account_Email;
		this.account_Tel = account_Tel;
		this.account_Addr = account_Addr;
		this.account_Status = account_Status;
		this.account_Leave = account_Leave;
	}


	public String getAccount_Id() {
		return account_Id;
	}


	public void setAccount_Id(String account_Id) {
		this.account_Id = account_Id;
	}


	public String getAccount_Password() {
		return account_Password;
	}


	public void setAccount_Password(String account_Password) {
		this.account_Password = account_Password;
	}


	public String getAccount_Name() {
		return account_Name;
	}


	public void setAccount_Name(String account_Name) {
		this.account_Name = account_Name;
	}


	public String getAccount_Email() {
		return account_Email;
	}


	public void setAccount_Email(String account_Email) {
		this.account_Email = account_Email;
	}


	public String getAccount_Tel() {
		return account_Tel;
	}


	public void setAccount_Tel(String account_Tel) {
		this.account_Tel = account_Tel;
	}


	public String getAccount_Addr() {
		return account_Addr;
	}


	public void setAccount_Addr(String account_Addr) {
		this.account_Addr = account_Addr;
	}


	public String getAccount_Status() {
		return account_Status;
	}


	public void setAccount_Status(String account_Status) {
		this.account_Status = account_Status;
	}


	public String getAccount_Leave() {
		return account_Leave;
	}


	public void setAccount_Leave(String account_Leave) {
		this.account_Leave = account_Leave;
	}

	
	
	
}
