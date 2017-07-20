package cn.itcast.ssm.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.itcast.ssm.po.Teacher;
import cn.itcast.ssm.po.TeacherCustom;
import cn.itcast.ssm.service.TeacherService;

@Controller
@RequestMapping("/Teacher")
public class LoginController2 {

	@Autowired
	private TeacherService teacherService;
	
	// 登陆
	@RequestMapping("/login")
	public ModelAndView login(HttpSession session, String username, String password)
			throws Exception {
		String password1=null;
		TeacherCustom teacher=new TeacherCustom();
		// 调用service进行用户身份验证
		 teacher = teacherService.selectTeacherByUsername(username);
		
		ModelAndView modelAndView = new ModelAndView();
		if(teacher!=null)
		   password1=teacher.getPassword();
	
        if(password1!=null&&password1.equals(password)){
        	// 在session中保存用户身份信息
    		session.setAttribute("username", username);
    		session.setAttribute("identity", "teacher");
    		// 重定向到商品列表页面
    		modelAndView.setViewName("jsp/teacher/teacherIndex");
    		return modelAndView;
        }
        else{
        	modelAndView.setViewName("jsp/teacher/teacherRegister");
        	return modelAndView;
        }	
	}
	

		@RequestMapping("/register")
		public ModelAndView register(HttpSession session,Teacher teacher,String username) {
            
			ModelAndView modelAndView = new ModelAndView();
			String error=null;
			List<String> usernames = teacherService.selectUsername();
			for(String name:usernames){
				if(name.equals(username)){
					
				    error = "用户名已存在！请换一个用户名！";
					modelAndView.addObject("error", error);
					
					modelAndView.setViewName("jsp/teacher/teacherRegister");
					 return modelAndView;
				}
			}
			
			teacherService.insertTeacher(teacher);
			session.setAttribute("username", username);
           
			modelAndView.addObject("error", error);
	        // 重定向到商品列表页面
	        modelAndView.setViewName("jsp/teacher/teacherIndex");
	    		
	        return modelAndView;
	        
		}

	// 退出
	@RequestMapping("/logout")
	public String logout(HttpSession session) throws Exception {

		// 清除session
		session.invalidate();

		// 重定向到商品列表页面
		return "../index";
	}

	@RequestMapping("/toLogin")
	public String toLogin() throws Exception {

		return "jsp/teacher/teacherLogin";
	}
	@RequestMapping("/toRegister")
	public String toRegister() throws Exception {
		return "jsp/teacher/teacherRegister";
	}
	@RequestMapping("/toIndex")
	public String toIndex() throws Exception {
		return "jsp/teacher/teacherIndex";
	}

}
