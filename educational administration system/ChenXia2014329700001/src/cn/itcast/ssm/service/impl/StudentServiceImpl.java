package cn.itcast.ssm.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import cn.itcast.ssm.mapper.CourseCustomMapper;
import cn.itcast.ssm.mapper.StudentCustomMapper;
import cn.itcast.ssm.mapper.StudentMapper;
import cn.itcast.ssm.po.CourseCustom;
import cn.itcast.ssm.po.CoursesTeacher;
import cn.itcast.ssm.po.Stu_Cour;
import cn.itcast.ssm.po.Student;
import cn.itcast.ssm.po.StudentCustom;
import cn.itcast.ssm.service.StudentService;

public class StudentServiceImpl implements StudentService{

  @Autowired 
  private StudentCustomMapper studentCustomMapper;
  @Autowired 
  private CourseCustomMapper courseCustomMapper;
public StudentCustom selectStudent(String username) {
	StudentCustom student=studentCustomMapper.selectStudent(username);
	return student;
}

public StudentCustom selectStudentByUsername(String username) {
	StudentCustom student=studentCustomMapper.selectStudentByUsername(username);
	return student;
}


	public List<String> selectUsername(){	
		return studentCustomMapper.selectUsername();
	}

	public void insertStudent(Student student) {
		studentCustomMapper.insertStudent(student);	
	}

	public List<CourseCustom> selectAllCourses() {
		return courseCustomMapper.selectPureCourses();
	}

	public void insertCourse(Stu_Cour stu_Cour) {
		courseCustomMapper.insertCourse(stu_Cour);
		courseCustomMapper.insertScore(stu_Cour);
	}

	public void deleteCourse(Stu_Cour stu_Cour) {
		courseCustomMapper.deleteCourse(stu_Cour);	
		courseCustomMapper.deleteScore(stu_Cour);	
	}

	public void updateStudent(StudentCustom studentCustom) {
		studentCustomMapper.updateStudent(studentCustom);
		//courseCustomMapper.updateCourse(studentCustom);
	}

	public List<StudentCustom> selectStudents() {
		List<StudentCustom> students=studentCustomMapper.selectStudents();
		return students;
	}

	public StudentCustom searchScore(String sno) {
		return studentCustomMapper.searchScore(sno);
	}
	
	public Student getStudentBySno(String sno) {
		return studentCustomMapper.selectStudentBySno(sno);
	}

	public List<CoursesTeacher> selectTeacherCourses() {
		
		return courseCustomMapper.selectTeacherCourses();
	}

	@Override
	public void updatePassword(StudentCustom studentCustom) {
		studentCustomMapper.updatePassword(studentCustom);
	}

}
