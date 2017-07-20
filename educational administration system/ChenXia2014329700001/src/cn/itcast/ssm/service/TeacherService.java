package cn.itcast.ssm.service;


import java.util.List;

import cn.itcast.ssm.po.CourseCustom;
import cn.itcast.ssm.po.Teacher;
import cn.itcast.ssm.po.TeacherCustom;
import cn.itcast.ssm.po.VO;


public interface TeacherService {
	TeacherCustom selectTeacherByUsername(String username);
	List<String> selectUsername();
	void insertCourse(VO vo);
	void insertTeacher(Teacher teacher);
	
	List<CourseCustom> selectCourses();
	List<CourseCustom> selectCoursesByTeacher(String tno);
	void deleteCourseByTeacher(VO vo);
	TeacherCustom queryCourse(String username);
	CourseCustom queryStudentInfo(VO vo);
	void updateScore(VO vo);
	
}
