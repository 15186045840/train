package com.hk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.hk.bean.Course;
import com.hk.bean.CourseResource;
import com.hk.dao.CourseDao;

@Service
public class CourseServiceImpl implements CourseService {
	@Autowired
	private CourseDao courseDao;

	@Override
	public String addCourse(Course course, String... resourceIds) {
		// TODO Auto-generated method stub
		courseDao.addCourse(course);
		if (resourceIds != null && resourceIds.length > 0) {
			for (String resourceId : resourceIds) {
				courseDao.addCourseResource(new CourseResource(course.getcId(), resourceId));
			}
		}
		return course.getcId();
	}

	@Override
	public void deleteCourse(String courseId) {
		// TODO Auto-generated method stub
		courseDao.deleteCourseResource(courseId);
		courseDao.deleteCourse(courseId);
	}

	@Override
	public void deleteMoreCourses(String... courseIds) {
		// TODO Auto-generated method stub
		if (courseIds != null && courseIds.length > 0) {
			for (String courseId : courseIds) {
				deleteCourse(courseId);
			}
		}
	}

	@Override
	public Course getCourseById(String courseId) {
		// TODO Auto-generated method stub
		return courseDao.findById(courseId);
	}

	@Override
	public List<Course> getAllCourses() {
		// TODO Auto-generated method stub
		return courseDao.findAllCourses();
	}

	@Override
	public void updateCourse(Course course, String... resourceIds) {
		// TODO Auto-generated method stub
		courseDao.updateCourse(course);
		courseDao.deleteCourseResource(course.getcId());
		addCourseResources(course.getcId(), resourceIds);
	}

	@Override
	public void addCourseResources(String courseId, String... resourceIds) {
		// TODO Auto-generated method stub
		if (resourceIds != null && resourceIds.length > 0) {
			for (String resourceId : resourceIds) {
				courseDao.addCourseResource(new CourseResource(courseId, resourceId));
			}
		}
	}

	@Override
	public Long selectCoursesCount() {
		// TODO Auto-generated method stub
		// 显示条数
		int pageCount = 6;
		// 查询数据库中数据的总条数
		Long count = courseDao.selectCoursesCount();
		// 一共有多少页
		long page = count / pageCount;
		if (count % pageCount != 0) {
			page = page + 1;
		}

		return page;
	}

	@Override
	public List<Course> selectAllCourses(int cnumber) {
		// TODO Auto-generated method stub
		return courseDao.selectAllCourses(cnumber);
	}

}
