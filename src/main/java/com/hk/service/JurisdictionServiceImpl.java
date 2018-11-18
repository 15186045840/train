package com.hk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.bean.Jurisdiction;
import com.hk.dao.JurisdictionDao;

@Service
public class JurisdictionServiceImpl implements JurisdictionService {

	@Autowired
	private JurisdictionDao jurisdictionDao;
	
	@Override
	public String addJurisdiction(Jurisdiction jurisdiction) {
		jurisdictionDao.addJurisdiction(jurisdiction);
		return jurisdiction.getjId();
	}

	@Override
	public void deleteJurisdiction(String jurisdictionId) {
		System.out.println("服务"+jurisdictionId);
		int rj = jurisdictionDao.selectRoleJurisdiction(jurisdictionId);
		System.out.println(rj);
		if(rj >= 1) {
		jurisdictionDao.deleteRoleJurisdiction(jurisdictionId);
		}
		jurisdictionDao.deleteJurisdiction(jurisdictionId);
	}

	@Override
	public void deleteMoreJurisdictions(String... jurisdictionIds) {
		if(jurisdictionIds!=null&&jurisdictionIds.length>0){
			for(String jurisdictionId:jurisdictionIds){
				deleteJurisdiction(jurisdictionId);
			}
		}
	}

	@Override
	public Jurisdiction findById(String jurisdictionId) {
		return jurisdictionDao.findById(jurisdictionId);
	}

	@Override
	public List<Jurisdiction> getJurisdictionsByRoleId(String roleId) {
		return jurisdictionDao.findJurisdictionsByRoleId(roleId);
	}

	@Override
	public List<Jurisdiction> getAllJurisdictions() {
		return jurisdictionDao.findAllJurisdictions();
	}

	@Override
	public void updateJurisdiction(Jurisdiction jurisdiction) {
		jurisdictionDao.updateJurisdiction(jurisdiction);
	}

}
