package cn.itcast.ssm.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.itcast.ssm.po.Admin;
import cn.itcast.ssm.po.AdminCustom;
import cn.itcast.ssm.service.AdminService;

@Controller
@RequestMapping("/Admin")
public class LoginController3 {

	@Autowired
	private AdminService adminService ;	
	
	// ��½
	@RequestMapping("/login")
	public ModelAndView login(HttpSession session, String username, String password)
			throws Exception {
		String password1=null;
		// ����service�����û������֤
		AdminCustom admin = adminService. selectAdminByUsername(username);
		if(admin!=null)
		   password1=admin.getPassword();
		
		ModelAndView modelAndView = new ModelAndView();
        if(password1!=null&&password1.equals(password)){
        	// ��session�б����û������Ϣ
    		session.setAttribute("username", username);
    		session.setAttribute("identity", "admin");
    		// �ض����б�ҳ��
    		modelAndView.setViewName("jsp/admin/adminIndex");
    		return modelAndView;
        }
        else{
        	modelAndView.setViewName("jsp/admin/adminRegister");
        	return modelAndView;
        }	
	}
	

		@RequestMapping("/register")
		public ModelAndView register(HttpSession session,Admin admin,String username) {
            
			ModelAndView modelAndView = new ModelAndView();
			String error=null;
			List<String> usernames = adminService.selectUsername();
			for(String name:usernames){
				if(name.equals(username)){
					
				    error = "�û����Ѵ��ڣ��뻻һ���û�����";
					modelAndView.addObject("error", error);
					
					modelAndView.setViewName("jsp/admin/adminRegister");
					 return modelAndView;
				}
			}
			
			adminService.insertAdmin(admin);
			session.setAttribute("username", username);
           
			modelAndView.addObject("error", error);
	        // �ض����б�ҳ��
	        modelAndView.setViewName("jsp/admin/adminIndex");
	    		
	        return modelAndView;
	        
		}

	// �˳�
	@RequestMapping("/logout")
	public String logout(HttpSession session) throws Exception {

		// ���session
		session.invalidate();

		// �ض����б�ҳ��
		return "../index";
	}
	
	@RequestMapping("/toLogin")
	public String toLogin() throws Exception {

		return "jsp/admin/adminLogin";
	}
	@RequestMapping("/toRegister")
	public String toRegister() throws Exception {
		return "jsp/admin/adminRegister";
	}
	
	@RequestMapping("/toIndex")
	public String toIndex() throws Exception {
		return "jsp/admin/adminIndex";
	}
}
