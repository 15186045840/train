package com.hk.controller;

import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hk.bean.Jurisdiction;
import com.hk.service.JurisdictionService;

@Controller
@RequestMapping("/jurisdiction")
public class JurisdictionController {
	@Autowired
	private JurisdictionService jurisdictionService;
	
	@RequiresPermissions("jurisdiction:list")
	@RequestMapping("/list")
	public ModelAndView showRoleList(){
		List<Jurisdiction> list=jurisdictionService.getAllJurisdictions();
		
		ModelAndView mav=new ModelAndView("jurisdiction-list");
		mav.addObject("jurisdictions", list);
		
		return mav;
	}
	
	@RequiresPermissions("jurisdiction:add")
	@RequestMapping("/add")
	@ResponseBody
	public Jurisdiction addJurisdiction(Jurisdiction jurisdiction){
		String nt = jurisdiction.getjNavigation();
		if(nt == null) {
			jurisdiction.setjNavigation("0");
		}
		System.out.println(jurisdiction);
		jurisdictionService.addJurisdiction(jurisdiction);
		return jurisdiction;
	}
	
	@RequiresPermissions("jurisdiction:delete")
	@RequestMapping("/delete")
	@ResponseBody
	public void deleteJurisdiction(String jurisdictionId){
		jurisdictionService.deleteJurisdiction(jurisdictionId);
	}
	
	@RequiresPermissions("jurisdiction:delete")
	@RequestMapping("/deletemore")
	@ResponseBody
	public void deleteMoreJurisdictions(String...jurisdictionIds){
		jurisdictionService.deleteMoreJurisdictions(jurisdictionIds);
	}
	
	@RequiresPermissions("jurisdiction:update")
	@RequestMapping("/getjurisdiction")
	@ResponseBody
	public Jurisdiction getJurisdictionById(String jurisdictionId){
		return jurisdictionService.findById(jurisdictionId);
	}
	
	@RequiresPermissions("jurisdiction:update")
	@RequestMapping("/update")
	@ResponseBody
	public void updateJurisdiction(Jurisdiction jurisdiction){
		String nt = jurisdiction.getjNavigation();
		if(nt == null) {
			jurisdiction.setjNavigation("0");
		}
		jurisdictionService.updateJurisdiction(jurisdiction);
	}
}
