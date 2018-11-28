package com.hk.bean;


public class UserRole {
	private String uId;
	private String rleId;
	
	public UserRole(String uId, String rleId) {
		super();
		this.uId = uId;
		this.rleId = rleId;
	}

	public String getuId() {
		return uId;
	}

	public void setuId(String uId) {
		this.uId = uId;
	}

	public String getRleId() {
		return rleId;
	}

	public void setRleId(String rleId) {
		this.rleId = rleId;
	}

	@Override
	public String toString() {
		return "UserRole [uId=" + uId + ", rleId=" + rleId + "]";
	}
	
	
}
