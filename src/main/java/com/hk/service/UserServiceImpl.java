package com.hk.service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.bean.Navigation;
import com.hk.bean.Role;
import com.hk.bean.User;
import com.hk.bean.UserRole;
import com.hk.dao.JurisdictionDao;
import com.hk.dao.RoleDao;
import com.hk.dao.UserDao;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDao userDao;
	@Autowired
	private RoleDao roleDao;
	@Autowired
	private JurisdictionDao jurisdictionDao;
	@Autowired
	private PasswordService passwordService;

	@Override
	public void addUser(User user, String... roleIds) {
		passwordService.encryptPassword(user);
		userDao.addUser(user);
		if(roleIds!=null&&roleIds.length>0){
			for(String roleId:roleIds){
				userDao.addUserRole(new UserRole(user.getuId(),roleId));
			}
		}
	}

	@Override
	public void deleteUser(String userId) {
		userDao.deleteUserRole(userId);
		userDao.deleteUser(userId);
	}

	@Override
	public void deleteMoreUsers(String... userIds) {
		if(userIds!=null&&userIds.length>0){
			for(String userId:userIds){
				deleteUser(userId);
			}
		}
	}

	@Override
	public User getUserByUserId(String userId) {
		return userDao.findUserByUserId(userId);
	}

	@Override
	public List<User> getAllUsers() {
		return userDao.findAllUsers();
	}

	@Override
	public void updateUserRoles(String userId, String... roleIds) {
		userDao.deleteUserRole(userId);
		if(roleIds!=null&&roleIds.length>0){
			for(String roleId:roleIds){
				userDao.addUserRole(new UserRole(userId,roleId));
			}
		}
	}

	@Override
	public Set<String> findRolesByUserId(String userId) {
		return new HashSet<String>(userDao.findRolesByUserId(userId));
	}

	@Override
	public Set<String> findJurisdictionsByUserId(String userId) {
		return new HashSet<String>(userDao.findJurisdictionsByUserId(userId));
	}

	@Override
	public List<Navigation> getNavigationBar(String userId) {
		List<Navigation> navigationBar=new ArrayList<Navigation>();
		Navigation navigation;
		List<Role> roles=roleDao.findRolesByUserId(userId);
		for(Role role:roles){
			navigation=new Navigation();
			navigation.setNavigationName(role.getRleDescribe());
			navigation.setChildNavigations(
					jurisdictionDao.findNavisByRoleId(role.getRleId()));
			navigationBar.add(navigation);
		}
		return navigationBar;
	}

}
