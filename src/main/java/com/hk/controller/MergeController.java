package com.hk.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hk.bean.Interaction;
import com.hk.bean.Student;
import com.hk.service.InteractionService;
import com.hk.service.StudentService;

@Controller
public class MergeController {
	
	@Autowired
	private StudentService studentService;
	
	@Autowired
	private InteractionService interactionService;
	
	@RequestMapping("/interaction_insert")
	public ModelAndView insertInteraction(Interaction interaction){
		Date day=new Date();    
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String da=df.format(day);
		interaction.setiDate(da);
		System.out.println(interaction);
		interactionService.addInteraction(interaction);
		ModelAndView mav=new ModelAndView("index");
		return mav;
	}
	
	@RequestMapping("/select")
	public ModelAndView selectStudent(Student student){
		Student st = studentService.selectStudent(student);
		ModelAndView mav=new ModelAndView("index");
		mav.addObject("student", st);
		return mav;
	}
	
	@RequestMapping("/insert")
	public ModelAndView insertStudent(Student student){
		String age = student.getsAge();
		if(age==null||age=="") {
			student.setsAge("0");
		}
		Date day=new Date();    
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String da=df.format(day);
		student.setsDate(da);
		studentService.addStudent(student);
		ModelAndView mav=new ModelAndView("index");
		return mav;
	}
	@RequestMapping("/tiyan")
	public ModelAndView Tiyan(){
		
		ModelAndView mav=new ModelAndView("tiyan");
		return mav;
	}
	@RequestMapping("/ftjx")
	public ModelAndView Ftjx(){
		
		ModelAndView mav=new ModelAndView("ftjx");
		return mav;
	}
	@RequestMapping("/xcjj")
	public ModelAndView Xcjj(){
		
		ModelAndView mav=new ModelAndView("xcjj");
		return mav;
	}
	@RequestMapping("/xcgm")
	public ModelAndView Xcgm(){
		
		ModelAndView mav=new ModelAndView("xcgm");
		return mav;
	}
	@RequestMapping("/yyjx")
	public ModelAndView Yyjx(){
		
		ModelAndView mav=new ModelAndView("yyjx");
		return mav;
	}
	@RequestMapping("/jlyt")
	public ModelAndView Jlyt(){
		
		ModelAndView mav=new ModelAndView("jlyt");
		return mav;
	}
	@RequestMapping("/red")
	public ModelAndView Red(){
		
		ModelAndView mav=new ModelAndView("red");
		return mav;
	}
	@RequestMapping("/traffic")
	public ModelAndView Traffic(){
		
		ModelAndView mav=new ModelAndView("traffic");
		return mav;
	}
	@RequestMapping("/food")
	public ModelAndView Food(){
		
		ModelAndView mav=new ModelAndView("food");
		return mav;
	}
	@RequestMapping("/culture")
	public ModelAndView Culture(){
		
		ModelAndView mav=new ModelAndView("culture");
		return mav;
	}
	@RequestMapping("/photo")
	public ModelAndView Photo(){
		
		ModelAndView mav=new ModelAndView("photo");
		return mav;
	}
	@RequestMapping("/bestStu")
	public ModelAndView BestStu(){
		
		ModelAndView mav=new ModelAndView("bestStu");
		return mav;
	}
	@RequestMapping("/stuStory")
	public ModelAndView stuStory(){
		
		ModelAndView mav=new ModelAndView("stuStory");
		return mav;
	}
	@RequestMapping("/about")
	public ModelAndView about(){
		
		ModelAndView mav=new ModelAndView("about");
		return mav;
	}
	@RequestMapping("/redHistory")
	public ModelAndView redHistory(){
		
		ModelAndView mav=new ModelAndView("redHistory");
		return mav;
	}
	@RequestMapping("/greenTeach")
	public ModelAndView greenTeach(){
		
		ModelAndView mav=new ModelAndView("greenTeach");
		return mav;
	}
	@RequestMapping("/company")
	public ModelAndView company(){
		
		ModelAndView mav=new ModelAndView("company");
		return mav;
	}
	@RequestMapping("/profile")
	public ModelAndView profile(){
		
		ModelAndView mav=new ModelAndView("profile");
		return mav;
	}
	@RequestMapping("/contact")
	public ModelAndView contact(){
		
		ModelAndView mav=new ModelAndView("contact");
		return mav;
	}
	
	

}
