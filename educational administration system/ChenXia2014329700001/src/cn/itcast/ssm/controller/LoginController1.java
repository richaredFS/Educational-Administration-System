package cn.itcast.ssm.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.itcast.ssm.po.Student;
import cn.itcast.ssm.po.StudentCustom;
import cn.itcast.ssm.service.StudentService;

@Controller
@RequestMapping("/Student")
public class LoginController1 {

	@Autowired
	private StudentService studentService;	
	
	// 登陆
	@RequestMapping("/login")
	public ModelAndView login(HttpSession session, String username, String password)
			throws Exception {
		String password1=null;
		// 调用service进行用户身份验证
		StudentCustom student = studentService.selectStudentByUsername(username);
		if(student!=null)
		   password1=student.getPassword();
		
		ModelAndView modelAndView = new ModelAndView();
        if(password1!=null&&password1.equals(password)){
        	// 在session中保存用户身份信息
    		session.setAttribute("username", username);
    		session.setAttribute("identity", "student");
    		// 重定向到列表页面
    		modelAndView.setViewName("jsp/student/studentIndex");
    		return modelAndView;
        }
        else{
        	modelAndView.setViewName("jsp/student/studentRegister");
        	return modelAndView;
        }	
	}
	

		@RequestMapping("/register")
		public ModelAndView register(HttpSession session,Student student,String username) {
            
			ModelAndView modelAndView = new ModelAndView();
			String error=null;
			List<String> usernames = studentService.selectUsername();
			for(String name:usernames){
				if(name.equals(username)){
					
				    error = "用户名已存在！请换一个用户名！";
					modelAndView.addObject("error", error);
					
					modelAndView.setViewName("jsp/student/studentRegister");
					 return modelAndView;
				}
			}
			
			studentService.insertStudent(student);
			session.setAttribute("username", username);
           
			modelAndView.addObject("error", error);
	        // 重定向到列表页面
	        modelAndView.setViewName("jsp/student/studentIndex");
	    		
	        return modelAndView;
	        
		}

	// 退出
	@RequestMapping("/logout")
	public String logout(HttpSession session) throws Exception {

		// 清除session
		session.invalidate();

		// 重定向到列表页面
		return "../index";
	}
	
	@RequestMapping("/toLogin")
	public String toLogin() throws Exception {

		return "jsp/student/studentLogin";
	}
	@RequestMapping("/toRegister")
	public String toRegister() throws Exception {
		return "jsp/student/studentRegister";
	}
	
	@RequestMapping("/toIndex")
	public String toIndex() throws Exception {
		return "jsp/student/studentIndex";
	}
}
