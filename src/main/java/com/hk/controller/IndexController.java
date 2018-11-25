package com.hk.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class IndexController {
	
	@RequestMapping(value={"/","/index"})
	public ModelAndView admin_index(){
		ModelAndView mov=new ModelAndView("index");
		
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
