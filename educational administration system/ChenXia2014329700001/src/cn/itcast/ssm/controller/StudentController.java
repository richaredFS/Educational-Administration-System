package cn.itcast.ssm.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.itcast.ssm.po.CoursesTeacher;
import cn.itcast.ssm.po.Stu_Cour;
import cn.itcast.ssm.po.Student;
import cn.itcast.ssm.po.StudentCustom;
import cn.itcast.ssm.po.VO;
import cn.itcast.ssm.service.StudentService;



@Controller
@RequestMapping("/Student")
public class StudentController {
	
	@Autowired
	private StudentService studentService;
	
	@RequestMapping("/queryGrades")	
	public String queryGrades() throws Exception {
	  return "jsp/student/inputSno";
	}
	
	@RequestMapping("/searchScore")	
	public String searchScore(String sno,Model model) throws Exception {
		Student stu=studentService.getStudentBySno(sno);
		StudentCustom student=studentService.searchScore(sno);
		model.addAttribute("student", student);	
		model.addAttribute("stu", stu);	
		return "jsp/student/studentScores";
	}
	
	@RequestMapping("/queryAllCourses")	
	public String selectCourses(Model model,HttpSession session) throws Exception {
		String uname = (String) session.getAttribute("username");
		StudentCustom stu = studentService.selectStudentByUsername(uname);
		List<CoursesTeacher> CoursesTeacher = studentService.selectTeacherCourses();

		model.addAttribute("coursesTeachers", CoursesTeacher);
		model.addAttribute("stu", stu);
		return "jsp/student/allCoursesList";
	}
	@RequestMapping("/queryCourses")	
	public ModelAndView selectStudentCourse(HttpSession session) throws Exception {
		
		String uname = (String) session.getAttribute("username");
		StudentCustom stu = studentService.selectStudentByUsername(uname);
		String name = stu.getSno();
		StudentCustom student = studentService.selectStudent(name);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("student", student);
		modelAndView.addObject("stu", stu);
		
		modelAndView.setViewName("jsp/student/studentCourses");

		return modelAndView;
	}
	
	@RequestMapping("/queryDetail")	
	public ModelAndView queryDetail(String username) throws Exception {

		StudentCustom stu = studentService.selectStudentByUsername(username);
		String sno = stu.getSno();
		StudentCustom student = studentService.selectStudent(sno);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("student", student);
		modelAndView.addObject("stu", stu);
		
		modelAndView.setViewName("jsp/student/sstudentCourses");
		//model.addAttribute("student", student);
		//model.addAttribute("stu", stu);
		return modelAndView;
	}
	
	
	@RequestMapping("/queryAllStudents")	
	public String queryAllStudent(Model model) throws Exception {	
		List<StudentCustom> studentCustom = studentService.selectStudents();
		model.addAttribute("students", studentCustom);	
		return "jsp/student/allStudentsList";
	}
	
	@RequestMapping("/chooseCourses")	
	public String chooseCourses(VO vo,HttpSession session) throws Exception {
		
      List<Stu_Cour> stu_Cours= vo.getStu_Cours();
	 
      for(int i=0;i<stu_Cours.size();i++){
    	  if(stu_Cours.get(i).getCour_cno()!=null){
    		  studentService.insertCourse(stu_Cours.get(i)); 
    	  }
      }
      
		return "redirect:queryCourses.action";
	}
	
	@RequestMapping("/updateCourseInfo")
	public String tuiCourses(String[] course_no,HttpSession session) throws Exception {
		
		
		 String username = (String) session.getAttribute("username");
		 StudentCustom studentCustom = studentService.selectStudentByUsername(username);
		 
		 Stu_Cour stu_Cour = new Stu_Cour();
		 stu_Cour.setStu_sno(studentCustom.getSno());
		 
		 for(int i=0;i<course_no.length;i++){
	    	  stu_Cour.setCour_cno(course_no[i]);
	    	  studentService.deleteCourse(stu_Cour); 
	      }
         return "forward:queryCourses.action";
	}
	
	
	
	@RequestMapping("/updateStudentInfo")
	public String updateInfo(StudentCustom studentCustom) throws Exception {	
	     studentService.updateStudent(studentCustom); 
	      
         return "forward:queryCourses.action";
	}
	
	@RequestMapping("/toUpdateStudent")
	public String toUpdateStudent(VO vo,Model model) throws Exception {
		return "jsp/student/updateStudent";
	}
	
	@RequestMapping("/toUpdatePassword")
	public String toUpdatePassword(VO vo,Model model) throws Exception {
		return "jsp/student/updatePassword";
	}
	
	@RequestMapping("/updatePassword")
	public String updatePassword(StudentCustom studentCustom,HttpSession session) throws Exception {
//		String username = (String) session.getAttribute("username");
		studentService.updatePassword(studentCustom);
		
		return "jsp/student/studentIndex";
	}
	
//	@RequestMapping("/updatePassword")	
//	public String updatePassword(StudentCustom studentCustom,Model model,HttpSession session) throws Exception {
//		String username = (String) session.getAttribute("username");
//		model.addAttribute("username", username);	
//		studentService.updatePassword(studentCustom);
//		return "jsp/student/studentIndex";
//	}
//	
	
}
