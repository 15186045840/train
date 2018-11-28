package com.hk.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hk.bean.News;
import com.hk.service.NewService;


@Controller
public class IndexController {
	
	@Autowired
	private NewService newService;
	
	@RequestMapping(value={"/","/index"})
	public ModelAndView admin_index(){
		ModelAndView mov=new ModelAndView("index");
		List<News> news = newService.getNews();
		mov.addObject("news",news);
		return mov;
	}
	@RequestMapping("/admin")
	public ModelAndView index(){
		ModelAndView mov=new ModelAndView("admin-index");
		
		return mov;
	}
	
	@RequestMapping("index.jsp")
	public ModelAndView index2(){
		System.out.println("你好");
		//ModelAndView mov=new ModelAndView("");
		
		return null;
	}
}
