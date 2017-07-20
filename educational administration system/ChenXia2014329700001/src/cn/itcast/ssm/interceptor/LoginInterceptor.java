package cn.itcast.ssm.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

/**
 * 
 * <p>Title: HandlerInterceptor1</p>
 * <p>Description:登陆认证拦截器 </p>
 * <p>Company: www.itcast.com</p> 
 * @author	传智.燕青
 * @date	2015-4-14下午4:45:47
 * @version 1.0
 */
public class LoginInterceptor implements HandlerInterceptor {

	
	//进入 Handler方法之前执行
	//用于身份认证、身份授权
	//比如身份认证，如果认证通过表示当前用户没有登陆，需要此方法拦截不再向下执行
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		
		String username=null;
		String identity=null;
		//判断session
		HttpSession session  = request.getSession();
		String url = request.getRequestURI();
		
		username=(String)session.getAttribute("username");
	    if(username==null){
	    	if(url.indexOf("toIndex.action")>=0
					||url.indexOf("toRegister.action")>=0||url.indexOf("toLogin.action")>=0
					||url.indexOf("login.action")>=0||url.indexOf("register.action")>=0
					||url.indexOf("logout.action")>=0){
				return true;
			}
	    }
	    else{
	    	identity =(String) session.getAttribute("identity");
	    	if(identity.equals("teacher")){
	    		if(url.indexOf("/ChenXia2014329700001/Teacher/login.action")>=0||
	    			url.indexOf("/ChenXia2014329700001/Teacher/register.action")>=0){
	    			 request.setAttribute("message", "您已经登录！无需重复登录！");
	    			 request.getRequestDispatcher("/WEB-INF/jsp/teacher/teacherIndex.jsp").forward(request, response);
	    			 return false;
	    		}else{
	    			if(url.indexOf("/ChenXia2014329700001/Teacher/")>=0){
	    				return true;
	    			}
	    		}
	    	}
            if(identity.equals("student")){
            	if(url.indexOf("/ChenXia2014329700001/Student/login.action")>=0||
            		url.indexOf("/ChenXia2014329700001/Student/register.action")>=0){
            		 request.setAttribute("message", "您已经登录！无需重复登录！");
	    			 request.getRequestDispatcher("/WEB-INF/jsp/student/studentIndex.jsp").forward(request, response);
	    			 return false;
	    		}else{
	    			if(url.indexOf("/ChenXia2014329700001/Student/")>=0){
	    				return true;
	    			}
	    		}
	    	}
            if(identity.equals("admin")){
            	if(url.indexOf("/ChenXia2014329700001/Admin/login.action")>=0||
            		url.indexOf("/ChenXia2014329700001/Admin/register.action")>=0){
            		 request.setAttribute("message", "您已经登录！无需重复登录！");
	    			 request.getRequestDispatcher("/WEB-INF/jsp/admin/adminIndex.jsp").forward(request, response);
	    			 return false;
	    		}else{
	    			if(url.indexOf("/ChenXia2014329700001/Admin/")>=0){
	    				return true;
	    			}
	    		}
	    	}
	    	if(identity.equals("teacher")){
	    		if(url.indexOf("/ChenXia2014329700001/Student/")>=0){
	    			 request.setAttribute("message1", "您无权登录学生端！");
	    			 request.getRequestDispatcher("/WEB-INF/jsp/teacher/teacherIndex.jsp").forward(request, response);
	    			 return false;
	    		}
	    	}
	    	if(identity.equals("admin")){
	    		if(url.indexOf("/ChenXia2014329700001/Student/")>=0){
	    			 request.setAttribute("message1", "您无权登录学生端！");
	    			 request.getRequestDispatcher("/WEB-INF/jsp/admin/adminIndex.jsp").forward(request, response);
	    			 return false;
	    		}
	    	}
            if(identity.equals("student")){
            	if(url.indexOf("/ChenXia2014329700001/Teacher/")>=0){
            		request.setAttribute("message1", "您无权登录教师端！");
	    			 request.getRequestDispatcher("/WEB-INF/jsp/student/studentIndex.jsp").forward(request, response);
	    			 return false;
	    		}
	    	} 
            if(identity.equals("admin")){
            	if(url.indexOf("/ChenXia2014329700001/Teacher/")>=0){
            		request.setAttribute("message1", "您无权登录教师端！");
	    			 request.getRequestDispatcher("/WEB-INF/jsp/admin/studentIndex.jsp").forward(request, response);
	    			 return false;
	    		}
	    	}
            if(identity.equals("teacher")){
	    		if(url.indexOf("/ChenXia2014329700001/Admin/")>=0){
	    			 request.setAttribute("message1", "您无权登录管理员端！");
	    			 request.getRequestDispatcher("/WEB-INF/jsp/teacher/teacherIndex.jsp").forward(request, response);
	    			 return false;
	    		}
	    	}
            if(identity.equals("student")){
            	if(url.indexOf("/ChenXia2014329700001/Admin/")>=0){
            		request.setAttribute("message1", "您无权登录管理员端！");
	    			 request.getRequestDispatcher("/WEB-INF/jsp/student/studentIndex.jsp").forward(request, response);
	    			 return false;
	    		}
	    	} 
	    }
	    
		if(url.indexOf("/ChenXia2014329700001/Student/")>=0){
		      request.getRequestDispatcher("/WEB-INF/jsp/student/studentLogin.jsp").forward(request, response);
		}
		else if(url.indexOf("/ChenXia2014329700001/Teacher/")>=0){
		      request.getRequestDispatcher("/WEB-INF/jsp/teacher/teacherLogin.jsp").forward(request, response);
		}
		else if(url.indexOf("/ChenXia2014329700001/Admin/")>=0){
		      request.getRequestDispatcher("/WEB-INF/jsp/admin/adminLogin.jsp").forward(request, response);
		}
		return false;
	}

	//进入Handler方法之后，返回modelAndView之前执行
	//应用场景从modelAndView出发：将公用的模型数据(比如菜单导航)在这里传到视图，也可以在这里统一指定视图
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
		System.out.println("HandlerInterceptor1...postHandle");
		
	}

	//执行Handler完成执行此方法
	//应用场景：统一异常处理，统一日志处理
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		
		System.out.println("HandlerInterceptor1...afterCompletion");
	}

}
