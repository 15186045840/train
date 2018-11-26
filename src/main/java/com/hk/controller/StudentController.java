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

import com.hk.bean.Student;
import com.hk.service.StudentService;



@Controller
@RequestMapping("/student")
public class StudentController {
	@Autowired
	private StudentService studentService;
	
	@RequiresPermissions("student:list")
	@RequestMapping("/list")
	public ModelAndView showStudentList(){
		List<Student> list=studentService.findAllStudents();
		
		ModelAndView mav=new ModelAndView("student-list");
		mav.addObject("students", list);
		return mav;
	}
	
	@RequiresPermissions("student:add")
	@RequestMapping("/add")
	@ResponseBody
	public Student addStudent(Student student){
		System.err.println("注册"+student);
		String age = student.getsAge();
		if(age==null||age=="") {
			student.setsAge("0");
		}
		Date day=new Date();    
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String da=df.format(day);
		student.setsDate(da);
		System.out.println(student);
		studentService.addStudent(student);
		return student;
	}
	
	@RequiresPermissions("student:delete")
	@RequestMapping("/delete")
	@ResponseBody
	public void deleteStudent(String studentId){
		System.out.println(studentId);
		studentService.deleteStudent(studentId);
	}
	
	@RequiresPermissions("student:delete")
	@RequestMapping("/deletemore")
	@ResponseBody
	public void deleteMoreStudents(String...studentIds){
		System.out.println(studentIds);
		studentService.deleteMoreStudents(studentIds);
	}
	
	@RequiresPermissions("student:update")
	@RequestMapping("/getstudent")
	@ResponseBody
	public Student getStudentById(String studentId){
		return studentService.findById(studentId);
	}
	
	@RequiresPermissions("student:update")
	@RequestMapping("/update")
	@ResponseBody
	public void updateStudent(Student student){
		studentService.updateStudent(student);
	}

}
