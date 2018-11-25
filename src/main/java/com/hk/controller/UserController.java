package com.hk.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hk.bean.Role;
import com.hk.bean.User;
import com.hk.service.RoleService;
import com.hk.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;
	@Autowired
	private RoleService roleService;

	@RequestMapping("/login")
	public ModelAndView login(HttpServletRequest req){
		String error=null;
		String exceptionClassId = (String)req.getAttribute("shiroLoginFailure");
        if(UnknownAccountException.class.getName().equals(exceptionClassId)) {
            error = "用户名/密码错误";
        } else if(IncorrectCredentialsException.class.getName().equals(exceptionClassId)) {
            error = "用户名/密码错误";
        } else if(exceptionClassId != null) {
            error = "其他错误：" + exceptionClassId;
        }
        ModelAndView mav=new ModelAndView("login");
        mav.addObject("error", error);
		return mav;
	}
	
	@RequiresPermissions("user:list")
	@RequestMapping("/list")
	public ModelAndView showUserList(){
		List<User> list=userService.getAllUsers();
		ModelAndView mav=new ModelAndView("user-list");
		mav.addObject("users", list);
		return mav;
	}
	
	@RequiresPermissions("user:add")
	@RequestMapping("/add")
	@ResponseBody
	public User addUser(User user,String...roleIds){
		Date day=new Date();    
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String da=df.format(day);
		user.setuDate(da);
		userService.addUser(user, roleIds);
		return user;
	}
	
	@RequiresPermissions("user:showroles")
	@RequestMapping("/showroles")
	@ResponseBody
	public List<Role> shwoRoles(String userId){
		return roleService.getRolesByUserId(userId);
	}

	@RequiresPermissions("role:list")
	@RequestMapping("/listRoles")
	@ResponseBody
	public List<Role> getRoles(){
		return roleService.getAllRoles();
	}
	
	@RequiresPermissions("user:delete")
	@RequestMapping("/delete")
	@ResponseBody
	public void deleteUser(String userId){
		userService.deleteUser(userId);
	}
	
	@RequiresPermissions("user:delete")
	@RequestMapping("/deletemore")
	@ResponseBody
	public void deleteMoreUsers(String...userIds){
		userService.deleteMoreUsers(userIds);
	}
	
	@RequiresPermissions("user:corelationrole")
	@RequestMapping("/corelationRole")
	@ResponseBody
	public void corelationRole(String userId,String...roleIds){
		userService.updateUserRoles(userId, roleIds);
	}
}
