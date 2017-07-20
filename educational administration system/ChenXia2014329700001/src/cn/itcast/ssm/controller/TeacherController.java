package cn.itcast.ssm.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.itcast.ssm.po.Cour_Tea;
import cn.itcast.ssm.po.CourseCustom;
import cn.itcast.ssm.po.StudentCustom;
import cn.itcast.ssm.po.TeacherCustom;
import cn.itcast.ssm.po.VO;
import cn.itcast.ssm.service.StudentService;
import cn.itcast.ssm.service.TeacherService;



@Controller
@RequestMapping("/Teacher")
public class TeacherController {
	
	@Autowired
	private TeacherService teacherService;
	@Autowired
	private StudentService studentService;
	
	@RequestMapping("/submitEditStudents")	
	   public String sumitEditStudents(VO vo,Model model) throws Exception {
		
		   List<StudentCustom> studentCustoms=vo.getStudentCustoms();	
		   CourseCustom courseCustom=vo.getCourseCustom();
		   VO voo=new VO();
	       voo.setCourseCustom(courseCustom);
		    for(int i=0;i<studentCustoms.size();i++){
		    	  studentService.updateStudent(studentCustoms.get(i));
		    	  voo.setStudentCustom(studentCustoms.get(i));
		    	  teacherService.updateScore(voo);
		    }
			return "jsp/teacher/teacherIndex";
		}
	
	@RequestMapping("/editStudentsAllSubmit")	
    public String editStudentsAllSubmit(VO vo,Model model) throws Exception {   
		model.addAttribute("vo", vo);
		return "jsp/teacher/editStudents";
	}
	
	@RequestMapping("/queryAllCourses")	
	public String selectCourses(Model model) throws Exception {
		
		List<CourseCustom> courseCustoms = teacherService.selectCourses();

		model.addAttribute("courses", courseCustoms);
		
		return "jsp/teacher/allCoursesList";
	}
	
	@RequestMapping("/chooseCourses")	
	public String chooseCourses(String[] course_no,HttpSession session)throws Exception {
	
	 String username = (String) session.getAttribute("username");
	 TeacherCustom teacherCustom = teacherService.selectTeacherByUsername(username);

	 VO vo=new VO();
	 Cour_Tea cour_Tea=new Cour_Tea();
	 cour_Tea.setTno(teacherCustom.getTno());
	 
      for(int i=0;i<course_no.length;i++){
    	  cour_Tea.setCno(course_no[i]);
    	  vo.setCour_Tea(cour_Tea);
    	  teacherService.insertCourse(vo); 
      }
   
      return "forward:showCourses.action";
	}
	
	@RequestMapping("/showCourses")	
	public String showCourses(Model model,HttpSession session) throws Exception {
		 String username = (String) session.getAttribute("username");
		 TeacherCustom teacherCustom = teacherService.selectTeacherByUsername(username);

			
		List<CourseCustom> courseCustoms = teacherService.selectCoursesByTeacher(teacherCustom.getTno());
		model.addAttribute("teacher", teacherCustom);
		model.addAttribute("courses", courseCustoms);
		
		return "jsp/teacher/queryWork";
	}


	

	@RequestMapping("/updateCourseInfo")
	public String tuiCourses(String[] course_no,HttpSession session) throws Exception {
			
		 String username = (String) session.getAttribute("username");
		 TeacherCustom teacherCustom = teacherService.selectTeacherByUsername(username);
		 VO vo=new VO();
		 Cour_Tea cour_Tea=new Cour_Tea();
		 System.out.println(teacherCustom.getTno());
		 cour_Tea.setTno(teacherCustom.getTno());
		 for(int i=0;i<course_no.length;i++){
			 cour_Tea.setCno(course_no[i]);
	    	  vo.setCour_Tea(cour_Tea);
			 teacherService.deleteCourseByTeacher(vo); 
	      }
         return "forward:showCourses.action";
	}
	
	@RequestMapping("/queryStudent")	
	public String queryStudent(HttpSession session,Model model) throws Exception {
		String username = (String) session.getAttribute("username");
		TeacherCustom teacherCustom=teacherService.queryCourse(username);
		model.addAttribute("teacher",teacherCustom);
		
	    return "jsp/teacher/coursesInfo";
	}

	@RequestMapping("/queryStudentInfo")	
	public String queryStudentInfo(HttpSession session,String cno,Model model) throws Exception {
		String username = (String) session.getAttribute("username");
		TeacherCustom teacherCustom=teacherService.queryCourse(username);
		CourseCustom courseCustom = new CourseCustom();
		courseCustom.setCno(cno);
		VO vo = new VO();
		vo.setCourseCustom(courseCustom);
		vo.setTeacherCustom(teacherCustom);
		CourseCustom courses=teacherService.queryStudentInfo(vo);
		model.addAttribute("course",courses);
		
	    return "jsp/teacher/studentInfo";
	}

}
