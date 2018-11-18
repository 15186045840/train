package com.hk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.bean.Role;
import com.hk.bean.RoleJurisdiction;
import com.hk.dao.RoleDao;

@Service
public class RoleServiceImpl implements RoleService{

	@Autowired
	private RoleDao roleDao;
	
	@Override
	public String addRole(Role role, String... jurisdictionIds) {
		roleDao.addRole(role);
		if(jurisdictionIds!=null&&jurisdictionIds.length>0){
			for(String jurisdictionId:jurisdictionIds){
				roleDao.addRoleJurisdiction(new RoleJurisdiction(role.getRleId(),jurisdictionId));
			}
		}
		return role.getRleId();
	}

	@Override
	public void deleteRole(String roleId) {
		roleDao.deleteUserRole(roleId);
		roleDao.deleteRoleJurisdiction(roleId);
		roleDao.deleteRole(roleId);
	}

	@Override
	public void deleteMoreRoles(String... roleIds) {
		if(roleIds!=null&&roleIds.length>0){
			for(String roleId:roleIds){
				deleteRole(roleId);
			}
		}
	}

	@Override
	public Role getRoleById(String roleId) {
		return roleDao.findById(roleId);
	}

	@Override
	public List<Role> getRolesByUserId(String userId) {
		return roleDao.findRolesByUserId(userId);
	}

	@Override
	public List<Role> getAllRoles() {
		return roleDao.findAllRoles();
	}

	@Override
	public void updateRole(Role role,String...jurisdictionIds) {
		roleDao.updateRole(role);
		roleDao.deleteRoleJurisdiction(role.getRleId());
		addRoleJurisdictions(role.getRleId(),jurisdictionIds);
	}

	@Override
	public void addRoleJurisdictions(String roleId, String... jurisdictionIds) {
		if(jurisdictionIds!=null&&jurisdictionIds.length>0){
			for(String jurisdictionId:jurisdictionIds){
				roleDao.addRoleJurisdiction(new RoleJurisdiction(roleId,jurisdictionId));
			}
		}
	}

}
