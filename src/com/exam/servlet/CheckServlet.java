package com.exam.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.exam.vo.UserExport;
import com.exam.vo.Users;

public class CheckServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
    
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
		PrintWriter out = response.getWriter();
		
		String uname = request.getParameter("username").trim();
		String upass = request.getParameter("password").trim();
		
		UserExport userExp=new UserExport();
		Users user = userExp.Login(uname);
		
		String Administor = "a";
		String Student = "s";
		String teacher="t";
		
		if(user == null){
			out.println("<script language=javascript>");
			out.println("alert('账号不存在');");
			out.println("window.location='../ExamSystem/index.jsp';");
			out.println("</script>");
		}
		else{
			request.getSession().setAttribute("user", user);
			
		   if(user.getPassword().equals(upass)){
			   if(user.getSort().equals(Administor)){
				     HttpSession session = request.getSession();
				     session.setAttribute("user",user);
	                 out.println("<script language=javascript>");
	        	     out.println("alert('管理员登陆！');");
				     out.println("window.location='../ExamSystem/admin.jsp';");
				     out.println("</script>");
			   }
			   else if(user.getSort().equals(Student)){
			         HttpSession session = request.getSession();
			         session.setAttribute("user",user);
                     out.println("<script language=javascript>");
        	         out.println("alert('登陆成功！');");
			         out.println("window.location='../ExamSystem/message.jsp';");
			         out.println("</script>");
			   }
			   else if(user.getSort().equals(teacher)){
			         HttpSession session = request.getSession();
			         session.setAttribute("user",user);
                   out.println("<script language=javascript>");
      	         out.println("alert('教师登陆！');");
			         out.println("window.location='../ExamSystem/teacher.jsp';");
			         out.println("</script>");
			   }
			   else if(user.getSort().equals(null)){
				    out.println("<script language=javascript>");
      	            out.println("alert('账号不存在！');");
			        out.println("window.location='../ExamSystem/index.jsp';");
			        out.println("</script>");
			   }
				  
		} else{
            out.println("<script language=javascript>");
        	out.println("alert('账号或密码错误!');");
			out.println("window.location='../ExamSystem/index.jsp';");
			out.println("</script>");
		}
			
		out.flush();
		out.close();
	}
	}
}
