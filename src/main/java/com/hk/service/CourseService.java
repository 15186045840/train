package com.hk.service;

import java.util.List;

import com.hk.bean.Course;

public interface CourseService {
	String addCourse(Course course,String...resourceIds);
	void deleteCourse(String courseId);
	void deleteMoreCourses(String...courseIds);
	Course getCourseById(String courseId);
	List<Course> getAllCourses();
	void updateCourse(Course course,String...resourceIds);
	
	void addCourseResources(String courseId,String...resourceIds);
	Long selectCoursesCount();//查询课程总数
	List<Course> selectAllCourses(int cnumber);//查询所有课程资源
}
