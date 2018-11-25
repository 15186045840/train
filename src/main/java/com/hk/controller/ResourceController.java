package com.hk.controller;

import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hk.bean.Resource;
import com.hk.service.ResourceService;

@Controller
@RequestMapping("/resource")
public class ResourceController {
	
	@Autowired
	private ResourceService resourceService;
	
	@RequiresPermissions("resource:list")
	@RequestMapping("/list")
	public ModelAndView showResourceList(){
		List<Resource> list=resourceService.getAllResources();
		
		ModelAndView mav=new ModelAndView("resource-list");
		mav.addObject("resources", list);
		return mav;
	}
	
	@RequiresPermissions("resource:add")
	@RequestMapping("/add")
	@ResponseBody
	public Resource addResource(Resource resource){
		resourceService.addResource(resource);
		return resource;
	}
	
	@RequiresPermissions("resource:delete")
	@RequestMapping("/delete")
	@ResponseBody
	public void deleteResource(String resourceId){
		resourceService.deleteResource(resourceId);;
	}
	
	@RequiresPermissions("resource:delete")
	@RequestMapping("/deletemore")
	@ResponseBody
	public void deleteMoreResources(String...resourceIds){
		resourceService.deleteMoreResources(resourceIds);
	}
	
	@RequiresPermissions("resource:update")
	@RequestMapping("/getresource")
	@ResponseBody
	public Resource getResourceById(String resourceId){
		return resourceService.findById(resourceId);
	}
	
	@RequiresPermissions("resource:update")
	@RequestMapping("/update")
	@ResponseBody()
	public void updateResource(Resource resource){
		resourceService.updateResource(resource);;
	}



}
