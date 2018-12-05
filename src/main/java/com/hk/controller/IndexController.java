package com.hk.controller;

import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hk.bean.Advertisement;
import com.hk.bean.News;
import com.hk.bean.Student;
import com.hk.service.AdvertisementService;
import com.hk.service.NewService;


@Controller
public class IndexController {
	
	@Autowired
	private NewService newService;
	
	@Autowired
	private AdvertisementService advertisementService;
	
	@RequestMapping(value={"/","/index"})
	public ModelAndView index(ServletRequest request,
			ServletResponse response) throws Exception{		
		HttpServletRequest httpReq=(HttpServletRequest)request;
		ModelAndView mov=new ModelAndView("index");
		List<News> news = newService.getNews();
		Advertisement left = advertisementService.getLeftAdvertisement();
		Advertisement right = advertisementService.getRightAdvertisement();
		httpReq.getSession().setAttribute("left", left);
		httpReq.getSession().setAttribute("right", right);
		mov.addObject("news",news);
		mov.addObject("left",left);
		mov.addObject("right",right);
		return mov;
	}
	@RequestMapping("/admin")
	public ModelAndView admin_index(){
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
