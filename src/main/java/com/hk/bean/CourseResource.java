package com.hk.bean;

public class CourseResource {
	private String cId;
	private String rId;
	
	
	public CourseResource(String cId, String rId) {
		super();
		this.cId = cId;
		this.rId = rId;
	}
	public String getcId() {
		return cId;
	}
	public void setcId(String cId) {
		this.cId = cId;
	}
	public String getrId() {
		return rId;
	}
	public void setrId(String rId) {
		this.rId = rId;
	}

}
