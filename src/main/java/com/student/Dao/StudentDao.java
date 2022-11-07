package com.student.Dao;

import java.util.List;

import com.student.model.Student;

public interface StudentDao {

	public int save(Student s);
	public int delete(Student s);
	public Student getStudentById(Student s);
	public String updateReocrd(Student s);
	public List<Student> Record();		
}
