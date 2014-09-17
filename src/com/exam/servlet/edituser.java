package com.exam.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.exam.vo.UserExport;
import com.exam.vo.UserManage;
import com.exam.vo.Users;

public class edituser extends HttpServlet {
		/**
		 * ɾ����
		 */
		private static final long serialVersionUID = 1L;
	    
		public void doGet(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			doPost(request,response);
		}

		public void doPost(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {

			
			
			PrintWriter out = response.getWriter();
			
			String oldname = request.getParameter("editname");
			String newname = request.getParameter("newname");
			String newpassword = request.getParameter("newpassword");
			String newid = request.getParameter("newid");
			
			UserExport userExp=new UserExport();
			Users user = userExp.Login(oldname);
				
			UserManage um=new UserManage();
			
			/*if(user == null){
				HttpSession session = request.getSession();
			     session.removeAttribute("user");
			     session.invalidate();
				out.println("<script language=javascript>");
				out.println("alert('修改成功！请重新登陆！');");
				out.println("window.location='../ExamSystem/index.jsp';");
				out.println("</script>");
			}
			else{*/
				HttpSession session = request.getSession();
			     session.removeAttribute("user");
			     session.invalidate();
				um.edituser(user, newname, newpassword, newid);
				out.println("<script language=javascript>");
				out.println("alert('修改成功！');");
				out.println("window.location='../ExamSystem/userinfo.jsp';");
				out.println("</script>");
			/*}*/
		       	
			out.flush();
			out.close();
		}
		
	}

