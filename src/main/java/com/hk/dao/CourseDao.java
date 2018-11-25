package com.hk.dao;

import java.util.List;

import com.hk.bean.Course;
import com.hk.bean.CourseResource;

public interface CourseDao {
	void addCourse(Course course);//添加课程
	void deleteCourse(String courseId);//删除课程
	Course findById(String courseId);//根据Id查询课程
	List<Course> findAllCourses();//查询所有课程
	void updateCourse(Course course);//更新课程

	void deleteCourseResource(String courseId);//删除课程资源关联
	void addCourseResource(CourseResource courseResource);//添加课程资源关联
}
