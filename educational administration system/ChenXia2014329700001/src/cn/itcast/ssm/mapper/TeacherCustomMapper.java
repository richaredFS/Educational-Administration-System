package cn.itcast.ssm.mapper;


import java.util.List;

import cn.itcast.ssm.po.Student;
import cn.itcast.ssm.po.StudentCustom;
import cn.itcast.ssm.po.Teacher;
import cn.itcast.ssm.po.TeacherCustom;
import cn.itcast.ssm.po.VO;

public interface TeacherCustomMapper {

	TeacherCustom selectTeacherByUsername(String username);
	List<String> selectUsername();
	void insertCourse(VO vo);
	TeacherCustom queryCourse(String username);
	void updateScore(VO vo);
	/**
	 * StudentCustom selectStudent(String username);
	List<StudentCustom> selectStudents();

	
	
	void updateStudent(StudentCustom studentCustom);
	StudentCustom searchScore(String sno);
	 */
	List<TeacherCustom> selectAllTeachers();

}
