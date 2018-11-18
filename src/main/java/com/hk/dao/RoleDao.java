package com.hk.dao;

import java.util.List;

import com.hk.bean.Role;
import com.hk.bean.RoleJurisdiction;

public interface RoleDao {
	void addRole(Role role);
	void deleteRole(String roleId);
	Role findById(String roleId);
	List<Role> findRolesByUserId(String userId);
	List<Role> findAllRoles();
	void updateRole(Role role);

	void deleteUserRole(String roleId);
	void deleteRoleJurisdiction(String roleId);
	void addRoleJurisdiction(RoleJurisdiction roleJurisdiction);
}
