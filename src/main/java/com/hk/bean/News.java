package com.hk.bean;

public class News {
	private String nId;
	private String nType;
	private String nTitle;
	private String nContent;
	private String nDate;
	private String nUrl;
	
	public String getnId() {
		return nId;
	}
	public void setnId(String nId) {
		this.nId = nId;
	}
	public String getnType() {
		return nType;
	}
	public void setnType(String nType) {
		this.nType = nType;
	}
	public String getnTitle() {
		return nTitle;
	}
	public void setnTitle(String nTitle) {
		this.nTitle = nTitle;
	}
	public String getnContent() {
		return nContent;
	}
	public void setnContent(String nContent) {
		this.nContent = nContent;
	}
	public String getnDate() {
		return nDate;
	}
	public void setnDate(String nDate) {
		this.nDate = nDate;
	}
	
	public String getnUrl() {
		return nUrl;
	}
	public void setnUrl(String nUrl) {
		this.nUrl = nUrl;
	}
	@Override
	public String toString() {
		return "News [nId=" + nId + ", nType=" + nType + ", nTitle=" + nTitle + ", nContent=" + nContent + ", nDate="
				+ nDate + ", nUrl=" + nUrl + "]";
	}

}
