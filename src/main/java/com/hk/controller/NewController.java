package com.hk.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hk.bean.News;
import com.hk.service.NewService;

@Controller
@RequestMapping("/new")
public class NewController {
	@Autowired
	private NewService newService;
	
	@RequiresPermissions("new:list")
	@RequestMapping("/list")
	public ModelAndView showNewList(){
		List<News> list=newService.getAllNews();
		
		ModelAndView mav=new ModelAndView("new-list");
		mav.addObject("news", list);
		return mav;
	}
	
	@RequiresPermissions("new:add")
	@RequestMapping("/add")
	@ResponseBody
	public News addNew(News news){
		Date day=new Date();    
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String da=df.format(day);
		news.setnDate(da);
		newService.addNew(news);
		return news;
	}
	
	@RequiresPermissions("new:delete")
	@RequestMapping("/delete")
	@ResponseBody
	public void deleteNew(String newId){
		newService.deleteNew(newId);
	}
	
	@RequiresPermissions("new:delete")
	@RequestMapping("/deletemore")
	@ResponseBody
	public void deleteMoreNews(String...newIds){
		newService.deleteMoreNews(newIds);
	}
	
	@RequiresPermissions("new:update")
	@RequestMapping("/getnew")
	@ResponseBody
	public News getNewById(String newId){
		return newService.getNewByNewId(newId);
	}
	
	@RequiresPermissions("new:update")
	@RequestMapping("/update")
	@ResponseBody()
	public void updateNew(News news){
		newService.updateNew(news);
	}

}
