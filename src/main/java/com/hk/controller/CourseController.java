package com.hk.controller;

import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hk.bean.Resource;
import com.hk.bean.Course;
import com.hk.service.CourseService;
import com.hk.service.ResourceService;

@Controller
@RequestMapping("/course")
public class CourseController {
	
	@Autowired
	private CourseService courseService;
	@Autowired
	private ResourceService resourceService;
	
	@RequiresPermissions("course:list")
	@RequestMapping("/list")
	public ModelAndView showCourseList(){
		List<Course> list=courseService.getAllCourses();
		
		ModelAndView mav=new ModelAndView("course-list");
		mav.addObject("courses", list);
		return mav;
	}
	
	@RequiresPermissions("course:showresources")
	@RequestMapping("/listresources")
	@ResponseBody
	public List<Resource> getResources(){
		return resourceService.getAllResources();
	}
	
	@RequiresPermissions("course:add")
	@RequestMapping("/add")
	@ResponseBody
	public Course addCourse(Course course,String...resourceIds){
		courseService.addCourse(course, resourceIds);
		return course;
	}
	
	@RequiresPermissions("course:delete")
	@RequestMapping("/delete")
	@ResponseBody
	public void deleteCourse(String courseId){
		courseService.deleteCourse(courseId);
	}
	
	@RequiresPermissions("course:delete")
	@RequestMapping("/deletemore")
	@ResponseBody
	public void deleteMoreCourses(String...courseIds){
		courseService.deleteMoreCourses(courseIds);
	}
	
	@RequiresPermissions("course:showresources")
	@RequestMapping("/showcourseresources")
	@ResponseBody
	public List<Resource> showCourseResources(String courseId){
		return resourceService.getResourcesByCourseId(courseId);
	}
	
	@RequiresPermissions("course:update")
	@RequestMapping("/getcourse")
	@ResponseBody
	public Course getCourseById(String courseId){
		return courseService.getCourseById(courseId);
	}
	
	@RequiresPermissions("course:update")
	@RequestMapping("/update")
	@ResponseBody()
	public void updateCourse(Course course,String...resourceIds){
		courseService.updateCourse(course, resourceIds);
	}
}
	
