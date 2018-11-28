package com.hk.bean;


public class User{
	private String uId;
	private String uName;
	private String uPassword;
	private String uPasswordSalt;
	private String uDate;
	
	public String getuId() {
		return uId;
	}
	public void setuId(String uId) {
		this.uId = uId;
	}
	public String getuName() {
		return uName;
	}
	public void setuName(String uName) {
		this.uName = uName;
	}
	public String getuPassword() {
		return uPassword;
	}
	public void setuPassword(String uPassword) {
		this.uPassword = uPassword;
	}
	public String getuPasswordSalt() {
		return uPasswordSalt;
	}
	public void setuPasswordSalt(String uPasswordSalt) {
		this.uPasswordSalt = uPasswordSalt;
	}
	public String getuDate() {
		return uDate;
	}
	public void setuDate(String uDate) {
		this.uDate = uDate;
	}
	@Override
	public String toString() {
		return "User [uId=" + uId + ", uName=" + uName + ", uPassword=" + uPassword + ", uPasswordSalt=" + uPasswordSalt
				+ ", uDate=" + uDate + "]";
	}
	


}
