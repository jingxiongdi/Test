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

public class deleteuser extends HttpServlet {
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
			
			String name = request.getParameter("checkbox");
			
			UserExport userExp=new UserExport();
			Users user = userExp.Login(name);
				
			UserManage um=new UserManage();
			
			if(user == null){
				out.println("<script language=javascript>");
				out.println("alert('���û�����ڣ�');");
				out.println("window.location='../ExamSystem/userconf.jsp';");
				out.println("</script>");
			}
			else{
				//um.deleteuser(user);
				out.println("<script language=javascript>");
				out.println("alert('ɾ��ɹ���');");
				out.println("window.location='../ExamSystem/userconf.jsp';");
				out.println("</script>");
			}
		       	
			out.flush();
			out.close();
		}
		
	}

