package cn.itcast.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import cn.itcast.ssm.mapper.AdminCustomMapper;
import cn.itcast.ssm.mapper.CourseCustomMapper;
import cn.itcast.ssm.mapper.StudentCustomMapper;
import cn.itcast.ssm.mapper.TeacherCustomMapper;
import cn.itcast.ssm.po.Admin;
import cn.itcast.ssm.po.AdminCustom;
import cn.itcast.ssm.po.CourseCustom;
import cn.itcast.ssm.po.StudentCustom;
import cn.itcast.ssm.po.TeacherCustom;
import cn.itcast.ssm.service.AdminService;

public class AdminServiceImpl implements AdminService{

	@Autowired 
	  private AdminCustomMapper adminCustomMapper;
	@Autowired 
	  private StudentCustomMapper studentCustomMapper;
	@Autowired 
	private TeacherCustomMapper teacherCustomMapper;
	@Autowired 
	private CourseCustomMapper courseCustomMapper;
	@Override
	public AdminCustom selectAdminByUsername(String username) {
		AdminCustom admin = adminCustomMapper.selectAdminByUsername(username);
		return admin;
	}

	@Override
	public List<String> selectUsername() {
		return adminCustomMapper.selectUsername();
	}

	@Override
	public void insertAdmin(Admin admin) {
		adminCustomMapper.insertAdmin(admin);
	}

	@Override
	public List<CourseCustom> selectCourses() {
		return courseCustomMapper.selectAllCourses();
	}

	@Override
	public List<StudentCustom> selectAllStudents() {
		return studentCustomMapper.selectAllStudents();
	}

	@Override
	public List<TeacherCustom> selectAllTeachers() {
		return teacherCustomMapper.selectAllTeachers();
	}



}
