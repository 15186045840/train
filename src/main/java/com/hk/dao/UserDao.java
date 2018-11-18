package com.hk.dao;

import java.util.List;

import com.hk.bean.User;
import com.hk.bean.UserRole;

public interface UserDao {
	void addUser(User user);
	void deleteUser(String userId);
	User findUserByUserId(String userId);
	List<User> findAllUsers();
	
	void deleteUserRole(String userId);
	void addUserRole(UserRole userRole);
	
	List<String> findRolesByUserId(String userId);
	List<String> findJurisdictionsByUserId(String userId);
}
