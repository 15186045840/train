package com.hk.service;

import java.util.List;
import java.util.Set;

import com.hk.bean.Navigation;
import com.hk.bean.User;

public interface UserService {
	void addUser(User user,String...roleIds);//添加用户
	void deleteUser(String userId);//删除用户
	void deleteMoreUsers(String...userIds);//批量删除用户
	User getUserByUserId(String userId);//根据用户名获取用户
	List<User> getAllUsers();//获取所有用户
	
	void updateUserRoles(String userId,String...roleIds);//添加用户角色关联
	
	Set<String> findRolesByUserId(String userId);//根据用户名获取用户所有角色
	Set<String> findJurisdictionsByUserId(String userId);//根据用户名获取用户所有权限
	
	List<Navigation> getNavigationBar(String userId);//获取导航栏内容
}
