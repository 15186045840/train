package com.hk.controller;

import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hk.bean.Advertisement;
import com.hk.service.AdvertisementService;

@Controller
@RequestMapping("/advertisement")
public class AdvertisementController {
	@Autowired
	private AdvertisementService advertisementService;
	
	@RequiresPermissions("advertisement:list")
	@RequestMapping("/list")
	public ModelAndView showAdvertisementList(){
		List<Advertisement> list=advertisementService.findAllAdvertisements();
		
		ModelAndView mav=new ModelAndView("advertisement-list");
		mav.addObject("advertisements", list);
		return mav;
	}
	
	@RequiresPermissions("advertisement:add")
	@RequestMapping("/add")
	@ResponseBody
	public Advertisement addAdvertisement(Advertisement advertisement){
		advertisementService.addAdvertisement(advertisement);
		return advertisement;
	}
	
	@RequiresPermissions("advertisement:delete")
	@RequestMapping("/delete")
	@ResponseBody
	public void deleteAdvertisement(String advertisementId){
		advertisementService.deleteAdvertisement(advertisementId);
	}
	
	@RequiresPermissions("advertisement:delete")
	@RequestMapping("/deletemore")
	@ResponseBody
	public void deleteMoreAdvertisements(String...advertisementIds){
		advertisementService.deleteMoreAdvertisements(advertisementIds);
	}
	
	@RequiresPermissions("advertisement:update")
	@RequestMapping("/getadvertisement")
	@ResponseBody
	public Advertisement getAdvertisementById(String advertisementId){
		return advertisementService.findById(advertisementId);
	}
	
	@RequiresPermissions("advertisement:update")
	@RequestMapping("/update")
	@ResponseBody()
	public void updateAdvertisement(Advertisement advertisement){
		advertisementService.updateAdvertisement(advertisement);
	}

}
