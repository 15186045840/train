package com.hk.bean;

import java.io.Serializable;

public class RoleJurisdiction implements Serializable{
	private String rleId;
	private String jId;
	
	public RoleJurisdiction(String rleId, String jId) {
		super();
		this.rleId = rleId;
		this.jId = jId;
	}

	public String getRleId() {
		return rleId;
	}

	public void setRleId(String rleId) {
		this.rleId = rleId;
	}

	public String getjId() {
		return jId;
	}

	public void setjId(String jId) {
		this.jId = jId;
	}

	@Override
	public String toString() {
		return "RoleJurisdiction [rleId=" + rleId + ", jId=" + jId + "]";
	}
	

}
