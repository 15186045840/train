package com.hk.bean;

public class Advertisement {
	private int aId;
	private String aType;
	private String aTitle;
	private String aContent;
	private String aLink;
	public int getaId() {
		return aId;
	}
	public void setaId(int aId) {
		this.aId = aId;
	}
	public String getaType() {
		return aType;
	}
	public void setaType(String aType) {
		this.aType = aType;
	}
	public String getaTitle() {
		return aTitle;
	}
	public void setaTitle(String aTitle) {
		this.aTitle = aTitle;
	}
	public String getaContent() {
		return aContent;
	}
	public void setaContent(String aContent) {
		this.aContent = aContent;
	}
	public String getaLink() {
		return aLink;
	}
	public void setaLink(String aLink) {
		this.aLink = aLink;
	}
	@Override
	public String toString() {
		return "Advertisement [aId=" + aId + ", aType=" + aType + ", aTitle=" + aTitle + ", aContent=" + aContent
				+ ", aLink=" + aLink + "]";
	}

}
