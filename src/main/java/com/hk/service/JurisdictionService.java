package com.hk.service;

import java.util.List;

import com.hk.bean.Jurisdiction;

public interface JurisdictionService {
	String addJurisdiction(Jurisdiction jurisdiction);
	void deleteJurisdiction(String jurisdictionId);
	void deleteMoreJurisdictions(String...jurisdictionIds);
	Jurisdiction findById(String jurisdictionId);
	List<Jurisdiction> getJurisdictionsByRoleId(String roleId);
	List<Jurisdiction> getAllJurisdictions();
	void updateJurisdiction(Jurisdiction jurisdiction);
}
