package com.hk.service;

import java.util.List;

import com.hk.bean.Role;

public interface RoleService {
	String addRole(Role role,String...jurisdictionIds);
	void deleteRole(String roleId);
	void deleteMoreRoles(String...roleIds);
	Role getRoleById(String roleId);
	List<Role> getRolesByUserId(String userId);
	List<Role> getAllRoles();
	void updateRole(Role role,String...jurisdictionIds);
	
	void addRoleJurisdictions(String roleId,String...jurisdictionIds);
}
