package com.hk.dao;

import java.util.List;

import com.hk.bean.Student;

public interface StudentDao {
	void addStudent(Student student);//添加学员
	void deleteStudent(String studentId);//删除学员
	Student findById(String studentId);//根据Id查询学员
	List<Student> findAllStudents();//查询所有学员
	void updateStudent(Student student);//更新学员
	Student selectStudent(Student student);//根据Id密码查询学员


}
