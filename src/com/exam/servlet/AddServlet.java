package com.exam.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.exam.vo.UserManage;
import com.exam.vo.Users;

public class AddServlet extends HttpServlet {
		/**
		 * �����û�
		 */
		private static final long serialVersionUID = 1L;
	    
		public void doGet(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			doPost(request,response);
		}

		public void doPost(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {

			
			
			PrintWriter out = response.getWriter();
			
			String uname = request.getParameter("username");
			String upass = request.getParameter("password");
			String uid = request.getParameter("id");
			String sex = request.getParameter("sex");
			String tel = request.getParameter("tel");
			String email = request.getParameter("email");
			String sort = request.getParameter("sort");
			
			Users nuser=new Users();
			nuser.setId(Integer.parseInt(uid));
			nuser.setName(uname);
			nuser.setPassword(upass);
			nuser.setScore(0);
			nuser.setSex(sex);
			nuser.setSort(sort);
			nuser.setTel(tel);
			nuser.setEmail(email);
			UserManage um=new UserManage();
			um.addNewuser(nuser);
				out.println("<script language=javascript>");
				out.println("alert('增加成功！');");
				out.println("window.location='../ExamSystem/userconf.jsp';");
				out.println("</script>");
			
			
			out.flush();
			out.close();
		}
		
	}

