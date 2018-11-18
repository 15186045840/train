package com.hk.bean;

import java.util.List;

public class Navigation {
	private String navigationName;
	private List<Jurisdiction> childNavigations;
	
	public String getNavigationName() {
		return navigationName;
	}
	public void setNavigationName(String navigationName) {
		this.navigationName = navigationName;
	}
	public List<Jurisdiction> getChildNavigations() {
		return childNavigations;
	}
	public void setChildNavigations(List<Jurisdiction> childNavigations) {
		this.childNavigations = childNavigations;
	}
}
