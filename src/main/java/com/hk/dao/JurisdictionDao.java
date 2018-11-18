package com.hk.dao;

import java.util.List;

import com.hk.bean.Jurisdiction;

public interface JurisdictionDao {
	void addJurisdiction(Jurisdiction jurisdiction);
	void deleteJurisdiction(String jurisdictionId);
	Jurisdiction findById(String jurisdictionId);
	List<Jurisdiction> findNavisByRoleId(String roleId);
	List<Jurisdiction> findJurisdictionsByRoleId(String roleId);
	List<Jurisdiction> findAllJurisdictions();
	void updateJurisdiction(Jurisdiction jurisdiction);
	int selectRoleJurisdiction(String jurisdictionId);
	void deleteRoleJurisdiction(String jurisdictionId);
}
