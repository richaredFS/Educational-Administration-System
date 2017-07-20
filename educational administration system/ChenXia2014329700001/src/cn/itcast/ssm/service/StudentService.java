package cn.itcast.ssm.service;

import java.util.List;

import cn.itcast.ssm.po.Course;
import cn.itcast.ssm.po.CourseCustom;
import cn.itcast.ssm.po.CoursesTeacher;
import cn.itcast.ssm.po.Stu_Cour;
import cn.itcast.ssm.po.Student;
import cn.itcast.ssm.po.StudentCustom;


public interface StudentService {
	StudentCustom selectStudent(String username);
	List<StudentCustom> selectStudents();
	List<CoursesTeacher> selectTeacherCourses();
	StudentCustom selectStudentByUsername(String username);
	List<String> selectUsername();
	void insertStudent(Student student);
	List<CourseCustom> selectAllCourses();
	void insertCourse(Stu_Cour stu_Cour);
	void deleteCourse(Stu_Cour stu_Cour);
	void updateStudent(StudentCustom studentCustom);
	StudentCustom searchScore(String sno);
	Student getStudentBySno(String sno);
	void updatePassword(StudentCustom studentCustom);
}
