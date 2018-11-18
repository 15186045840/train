package com.hk.controller;

import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hk.bean.Jurisdiction;
import com.hk.bean.Role;
import com.hk.service.JurisdictionService;
import com.hk.service.RoleService;

@Controller
@RequestMapping("/role")
public class RoleController {
	@Autowired
	private RoleService roleService;
	@Autowired
	private JurisdictionService jurisdictionService;
	
	@RequiresPermissions("role:list")
	@RequestMapping("/list")
	public ModelAndView showRoleList(){
		List<Role> list=roleService.getAllRoles();
		
		ModelAndView mav=new ModelAndView("role-list");
		mav.addObject("roles", list);
		return mav;
	}
	
	@RequiresPermissions("role:showjurisdictions")
	@RequestMapping("/listjurisdictions")
	@ResponseBody
	public List<Jurisdiction> getJurisdictions(){
		System.out.println("查询所有角色");
		return jurisdictionService.getAllJurisdictions();
	}
	
	@RequiresPermissions("role:add")
	@RequestMapping("/add")
	@ResponseBody
	public Role addRole(Role role,String...jurisdictionIds){
		System.out.println("添加角色"+role);
		roleService.addRole(role, jurisdictionIds);
		return role;
	}
	
	@RequiresPermissions("role:delete")
	@RequestMapping("/delete")
	@ResponseBody
	public void deleteRole(String roleId){
		System.out.println("删除角色"+roleId);
		roleService.deleteRole(roleId);
	}
	
	@RequiresPermissions("role:delete")
	@RequestMapping("/deletemore")
	@ResponseBody
	public void deleteMoreRoles(String...roleIds){
		System.out.println("删除更多角色"+roleIds);
		roleService.deleteMoreRoles(roleIds);
	}
	
	@RequiresPermissions("role:showjurisdictions")
	@RequestMapping("/showrolejurisdictions")
	@ResponseBody
	public List<Jurisdiction> showRoleJurisdictions(String roleId){
		System.out.println("根据id查权限"+roleId);
		return jurisdictionService.getJurisdictionsByRoleId(roleId);
	}
	
	@RequiresPermissions("role:findinfo")
	@RequestMapping("/getrole")
	@ResponseBody
	public Role getRoleById(String roleId){
		System.out.println("修改"+roleId);
		return roleService.getRoleById(roleId);
	}
	
	@RequiresPermissions("role:corelationjurisdiction")
	@RequestMapping("/updaterole")
	@ResponseBody()
	public void updateRole(Role role,String...jurisdictionIds){
		System.out.println("更新角色"+role);
		roleService.updateRole(role,jurisdictionIds);
	}
}
