package com.hk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.bean.Student;
import com.hk.dao.StudentDao;

@Service
public class StudentServiceImpl implements StudentService {
	
	@Autowired
	private StudentDao studentDao;

	@Override
	public void addStudent(Student student) {
		// TODO Auto-generated method stub
		studentDao.addStudent(student);
	}

	@Override
	public void deleteStudent(String studentId) {
		// TODO Auto-generated method stub
		studentDao.deleteStudent(studentId);
	}

	@Override
	public void deleteMoreStudents(String... studentIds) {
		// TODO Auto-generated method stub
		if(studentIds!=null&&studentIds.length>0){
			for(String studentId:studentIds){
				deleteStudent(studentId);
			}
		}
	}

	@Override
	public Student findById(String studentId) {
		// TODO Auto-generated method stub
		return studentDao.findById(studentId);
	}

	@Override
	public List<Student> findAllStudents() {
		// TODO Auto-generated method stub
		return studentDao.findAllStudents();
	}

	@Override
	public void updateStudent(Student student) {
		// TODO Auto-generated method stub
		studentDao.updateStudent(student);
	}

	@Override
	public Student selectStudent(Student student) {
		// TODO Auto-generated method stub
		return studentDao.selectStudent(student);
	}

}
