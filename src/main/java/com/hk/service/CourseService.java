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
}
