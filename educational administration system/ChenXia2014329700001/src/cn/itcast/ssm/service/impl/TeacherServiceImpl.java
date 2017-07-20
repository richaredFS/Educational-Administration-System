package cn.itcast.ssm.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import cn.itcast.ssm.mapper.CourseCustomMapper;
import cn.itcast.ssm.mapper.TeacherCustomMapper;
import cn.itcast.ssm.mapper.TeacherMapper;
import cn.itcast.ssm.po.CourseCustom;
import cn.itcast.ssm.po.Teacher;
import cn.itcast.ssm.po.TeacherCustom;
import cn.itcast.ssm.po.VO;
import cn.itcast.ssm.service.TeacherService;



public class TeacherServiceImpl implements TeacherService{
	 @Autowired
	 private TeacherCustomMapper teacherCustomMapper;
	 @Autowired
	 private TeacherMapper teacherMapper;
	 @Autowired 
	  private CourseCustomMapper courseCustomMapper;
	public TeacherCustom selectTeacherByUsername(String username) {
		 return teacherCustomMapper.selectTeacherByUsername(username);
		
	}

	public List<String> selectUsername() {
		return teacherCustomMapper.selectUsername();
	}

	public void insertCourse(VO vo){
		teacherCustomMapper.insertCourse(vo);
	}
	
	public List<CourseCustom> selectCourses() {
		return courseCustomMapper.selectAllCourses();
	}
	
	public void insertTeacher(Teacher teacher) {
		teacherMapper.insert(teacher);
	}
	
	public List<CourseCustom> selectCoursesByTeacher(String tno){
		return courseCustomMapper.selectCoursesByTeacher(tno);
	}

	public void deleteCourseByTeacher(VO vo) {
		courseCustomMapper.deleteCourseByTeacher(vo);		
	}

	public TeacherCustom queryCourse(String username) {
		return teacherCustomMapper.queryCourse(username);
	}

	public CourseCustom queryStudentInfo(VO vo) {
		return courseCustomMapper.queryStudentInfo(vo);
	}

	public void updateScore(VO vo) {
		teacherCustomMapper.updateScore(vo);
	}

	
}
