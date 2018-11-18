package com.hk.bean;

import java.io.Serializable;

public class Role implements Serializable{
	private String rleId;
	private String rleName;
	private String rleDescribe;
	private String rleCode;
	public String getRleId() {
		return rleId;
	}
	public void setRleId(String rleId) {
		this.rleId = rleId;
	}
	public String getRleName() {
		return rleName;
	}
	public void setRleName(String rleName) {
		this.rleName = rleName;
	}
	public String getRleDescribe() {
		return rleDescribe;
	}
	public void setRleDescribe(String rleDescribe) {
		this.rleDescribe = rleDescribe;
	}
	public String getRleCode() {
		return rleCode;
	}
	public void setRleCode(String rleCode) {
		this.rleCode = rleCode;
	}
	@Override
	public String toString() {
		return "Role [rleId=" + rleId + ", rleName=" + rleName + ", rleDescribe=" + rleDescribe + ", rleCode=" + rleCode
				+ "]";
	}
	
	
	
}
