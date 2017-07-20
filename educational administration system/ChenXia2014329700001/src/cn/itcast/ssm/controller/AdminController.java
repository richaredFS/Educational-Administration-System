package cn.itcast.ssm.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.itcast.ssm.po.CourseCustom;
import cn.itcast.ssm.po.CoursesTeacher;
import cn.itcast.ssm.po.StudentCustom;
import cn.itcast.ssm.po.TeacherCustom;
import cn.itcast.ssm.po.VO;
import cn.itcast.ssm.service.AdminService;
import cn.itcast.ssm.service.StudentService;
import cn.itcast.ssm.service.TeacherService;

@Controller
@RequestMapping("/Admin")
public class AdminController {
	@Autowired
	private AdminService adminService;
	@Autowired
	private TeacherService teacherService;
	@Autowired
	private StudentService studentService;
	
	@RequestMapping("/queryAllCourses")	
	public String selectCourses(Model model) throws Exception {
		
		List<CourseCustom> courseCustoms = teacherService.selectCourses();

		model.addAttribute("courses", courseCustoms);
		
		return "jsp/admin/allCoursesList";
	}
	
	@RequestMapping("/queryAllStudents")	
	public String selectStudents(Model model) throws Exception {
		
		List<StudentCustom> studentsCustoms = adminService.selectAllStudents();

		model.addAttribute("students", studentsCustoms);
		
		return "jsp/admin/allStudentsList";
	}
	
	@RequestMapping("/queryAllTeachers")	
	public String selectAllTeachers(Model model) throws Exception {
		
		List<TeacherCustom> teacherCustoms = adminService.selectAllTeachers();

		model.addAttribute("teachers", teacherCustoms);
		
		return "jsp/admin/allTeachersList";
	}
	

}
