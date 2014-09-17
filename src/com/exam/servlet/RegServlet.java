package com.exam.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.exam.vo.UserManage;
import com.exam.vo.Users;

public class RegServlet extends HttpServlet {
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
		String sex = request.getParameter("sex").trim();
		String tel = request.getParameter("tel").trim();
		String email = request.getParameter("email").trim();
		String uid = request.getParameter("id").trim();
		
		
		
		UserManage um=new UserManage();
		
		if(uname != null && !uname.isEmpty()){
			if(um.userIsExist(uname)){
				Users nuser=new Users();
				nuser.setId(Integer.parseInt(uid));
				nuser.setName(uname);
				nuser.setPassword(upass);
				nuser.setSex(sex);
				nuser.setTel(tel);
				nuser.setEmail(email);
				nuser.setScore(0);
				um.adduser(nuser);
				
				HttpSession session = request.getSession();
			    session.setAttribute("user",nuser);
			    out.println("<script language=javascript>");
		          out.println("alert('注册成功！');");
		        out.println("window.location='../ExamSystem/message.jsp';");
		        out.println("</script>");
		        
		        
			}
			else
			{
				request.setAttribute("info", "注册失败!");
				out.println("<script language=javascript>");
  	            out.println("alert('账号已存在！');");
		        out.println("window.location='../ExamSystem/register.jsp';");
		        out.println("</script>");
			}
		}
		request.getRequestDispatcher("message.jsp").forward(request, response);
		
	}
}
