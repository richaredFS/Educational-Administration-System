package cn.itcast.ssm.service;

import java.util.List;

import cn.itcast.ssm.po.Admin;
import cn.itcast.ssm.po.AdminCustom;
import cn.itcast.ssm.po.CourseCustom;
import cn.itcast.ssm.po.StudentCustom;
import cn.itcast.ssm.po.TeacherCustom;

public interface AdminService {
	AdminCustom selectAdminByUsername(String username);
	List<String> selectUsername();
	void insertAdmin(Admin admin);
	
	List<CourseCustom> selectCourses();
	List<TeacherCustom> selectAllTeachers();
	List<StudentCustom> selectAllStudents();
	
}
