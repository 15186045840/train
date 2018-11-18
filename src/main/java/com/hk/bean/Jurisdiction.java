package com.hk.bean;

import java.io.Serializable;

public class Jurisdiction implements Serializable{
	private String jId;
	private String jDescribe;
	private String jUrl;
	private String jNavigation;
	private String jCode;
	public String getjId() {
		return jId;
	}
	public void setjId(String jId) {
		this.jId = jId;
	}
	public String getjDescribe() {
		return jDescribe;
	}
	public void setjDescribe(String jDescribe) {
		this.jDescribe = jDescribe;
	}
	public String getjUrl() {
		return jUrl;
	}
	public void setjUrl(String jDrl) {
		this.jUrl = jDrl;
	}
	public String getjNavigation() {
		return jNavigation;
	}
	public void setjNavigation(String jNavigation) {
		this.jNavigation = jNavigation;
	}
	public String getjCode() {
		return jCode;
	}
	public void setjCode(String jCode) {
		this.jCode = jCode;
	}
	@Override
	public String toString() {
		return "Jurisdiction [jId=" + jId + ", jDescribe=" + jDescribe + ", jDrl=" + jUrl + ", jNavigation="
				+ jNavigation + ", jCode=" + jCode + "]";
	}
	
	

}
