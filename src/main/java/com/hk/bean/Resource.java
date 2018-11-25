package com.hk.bean;

public class Resource {
	private String rId;
	private String rName;
	private String rType;
	private String rLink;
	
	public String getrId() {
		return rId;
	}
	public void setrId(String rId) {
		this.rId = rId;
	}
	public String getrName() {
		return rName;
	}
	public void setrName(String rName) {
		this.rName = rName;
	}
	public String getrType() {
		return rType;
	}
	public void setrType(String rType) {
		this.rType = rType;
	}
	public String getrLink() {
		return rLink;
	}
	public void setrLink(String rLink) {
		this.rLink = rLink;
	}
	@Override
	public String toString() {
		return "Resource [rId=" + rId + ", rName=" + rName + ", rType=" + rType + ", rLink=" + rLink + "]";
	}
	
}
