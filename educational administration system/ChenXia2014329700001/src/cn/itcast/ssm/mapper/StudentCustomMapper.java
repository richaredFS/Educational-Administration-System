package cn.itcast.ssm.mapper;

import java.util.List;

import cn.itcast.ssm.po.Student;
import cn.itcast.ssm.po.StudentCustom;

public interface StudentCustomMapper {
	StudentCustom selectStudent(String username);
	List<StudentCustom> selectStudents();
	StudentCustom selectStudentByUsername(String username);
	List<String> selectUsername();
	void insertStudent(Student student);
	void updateStudent(StudentCustom studentCustom);
	StudentCustom searchScore(String sno);
	Student selectStudentBySno(String sno);
	List<StudentCustom> selectAllStudents();
	void updatePassword(StudentCustom studentCustom);
}
