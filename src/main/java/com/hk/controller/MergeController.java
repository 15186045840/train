package com.hk.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.web.filter.authc.FormAuthenticationFilter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hk.bean.Course;
import com.hk.bean.Interaction;
import com.hk.bean.Resource;
import com.hk.bean.Student;
import com.hk.service.CourseService;
import com.hk.service.InteractionService;
import com.hk.service.ResourceService;
import com.hk.service.StudentService;

@Controller
public class MergeController extends FormAuthenticationFilter {

	@Autowired
	private StudentService studentService;

	@Autowired
	private InteractionService interactionService;

	@Autowired
	private ResourceService resourceService;

	@Autowired
	private CourseService courseService;

	@RequestMapping("/interaction_insert")
	public ModelAndView insertInteraction(Interaction interaction) {
		Date day = new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String da = df.format(day);
		interaction.setiDate(da);
		interaction.setiJudge(0);
		System.out.println(interaction);
		interactionService.addInteraction(interaction);
		ModelAndView mav = new ModelAndView("index");
		return mav;
	}

	@RequestMapping("/content")
	public ModelAndView content(int currentPage) {
		// 显示条数
		int pageCount = 10;
		int start = (currentPage - 1) * pageCount;
		// 查询数据库中数据的页数
		Long page = interactionService.selectInteractionsCount();
		// 查询数据库中数据的页数
		List<Interaction> list = interactionService.getInteractions(start);
		// 返回页面
		ModelAndView mov = new ModelAndView("content");
		// 返回课程页数
		mov.addObject("page", page);
		// 当前课程页数
		mov.addObject("currentPage", currentPage);
		// 返回课程列表
		mov.addObject("interactions", list);
		return mov;
	}

	@RequestMapping("/select")
	public ModelAndView selectStudent(Student student, ServletRequest request, ServletResponse response)
			throws Exception {
		HttpServletRequest httpReq = (HttpServletRequest) request;
		Student st = studentService.selectStudent(student);
		httpReq.getSession().setAttribute("student", st);
		ModelAndView mav = new ModelAndView("index");
		mav.addObject("student", st);
		return mav;
	}

	@RequestMapping("/insert")
	public ModelAndView insertStudent(Student student) {
		String age = student.getsAge();
		if (age == null || age == "") {
			student.setsAge("0");
		}
		Date day = new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String da = df.format(day);
		student.setsDate(da);
		studentService.addStudent(student);
		ModelAndView mav = new ModelAndView("index");
		return mav;
	}

	@RequestMapping("/tiyan")
	public ModelAndView Tiyan() {

		ModelAndView mav = new ModelAndView("tiyan");
		return mav;
	}

	@RequestMapping("/ftjx")
	public ModelAndView Ftjx() {

		ModelAndView mav = new ModelAndView("ftjx");
		return mav;
	}

	@RequestMapping("/xcjj")
	public ModelAndView Xcjj() {

		ModelAndView mav = new ModelAndView("xcjj");
		return mav;
	}

	@RequestMapping("/xcgm")
	public ModelAndView Xcgm() {

		ModelAndView mav = new ModelAndView("xcgm");
		return mav;
	}

	@RequestMapping("/yyjx")
	public ModelAndView Yyjx() {
		List<Resource> res = resourceService.getResources();
		ModelAndView mav = new ModelAndView("yyjx");
		mav.addObject("resource", res);
		return mav;
	}

	@RequestMapping("/jlyt")
	public ModelAndView Jlyt() {

		ModelAndView mav = new ModelAndView("jlyt");
		return mav;
	}

	@RequestMapping("/red")
	public ModelAndView Red() {

		ModelAndView mav = new ModelAndView("red");
		return mav;
	}

	@RequestMapping("/traffic")
	public ModelAndView Traffic() {

		ModelAndView mav = new ModelAndView("traffic");
		return mav;
	}

	@RequestMapping("/food")
	public ModelAndView Food() {

		ModelAndView mav = new ModelAndView("food");
		return mav;
	}

	@RequestMapping("/culture")
	public ModelAndView Culture() {

		ModelAndView mav = new ModelAndView("culture");
		return mav;
	}

	@RequestMapping("/photo")
	public ModelAndView Photo() {

		ModelAndView mav = new ModelAndView("photo");
		return mav;
	}

	@RequestMapping("/bestStu")
	public ModelAndView BestStu() {

		ModelAndView mav = new ModelAndView("bestStu");
		return mav;
	}

	@RequestMapping("/stuStory")
	public ModelAndView stuStory() {

		ModelAndView mav = new ModelAndView("stuStory");
		return mav;
	}

	@RequestMapping("/about")
	public ModelAndView about() {

		ModelAndView mav = new ModelAndView("about");
		return mav;
	}

	@RequestMapping("/redHistory")
	public ModelAndView redHistory() {

		ModelAndView mav = new ModelAndView("redHistory");
		return mav;
	}

	@RequestMapping("/greenTeach")
	public ModelAndView greenTeach() {

		ModelAndView mav = new ModelAndView("greenTeach");
		return mav;
	}

	@RequestMapping("/company")
	public ModelAndView company() {

		ModelAndView mav = new ModelAndView("company");
		return mav;
	}

	@RequestMapping("/profile")
	public ModelAndView profile() {

		ModelAndView mav = new ModelAndView("profile");
		return mav;
	}

	@RequestMapping("/contact")
	public ModelAndView contact() {

		ModelAndView mav = new ModelAndView("contact");
		return mav;
	}

	@RequestMapping("/yyjxbf")
	public ModelAndView yyjxbf(String rLink) {
		ModelAndView mav = new ModelAndView("yyjxbf");
		return mav;
	}

	@RequestMapping("/setyyjxbf")
	@ResponseBody
	public ModelAndView setyyjxbf(String rLink, ServletRequest request, ServletResponse response) throws Exception {
		HttpServletRequest httpReq = (HttpServletRequest) request;
		httpReq.getSession().setAttribute("rLink", rLink);
		ModelAndView mov = new ModelAndView("yyjxbf");
		mov.addObject("link", rLink);
		return mov;
	}

	@RequestMapping("/services")
	public ModelAndView services() {
		ModelAndView mov = new ModelAndView("services");
		return mov;
	}

	@RequestMapping("/course")
	public ModelAndView course(int currentPage) {
		// 显示条数
		int pageCount = 6;
		int start = (currentPage - 1) * pageCount;
		// 查询数据库中数据的页数
		Long page = courseService.selectCoursesCount();
		// 查询数据库中数据的页数
		List<Course> list = courseService.selectAllCourses(start);
		// 返回页面
		ModelAndView mov = new ModelAndView("course");
		// 返回课程页数
		mov.addObject("page", page);
		// 当前课程页数
		mov.addObject("currentPage", currentPage);
		// 返回课程列表
		mov.addObject("courses", list);
		return mov;
	}

}
