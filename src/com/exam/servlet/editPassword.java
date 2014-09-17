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

public class editPassword extends HttpServlet {
		/**
		 * �޸�����
		 */
		private static final long serialVersionUID = 1L;
	    
		public void doGet(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			doPost(request,response);
		}

		public void doPost(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {

			response.setContentType("text/html");
			response.setCharacterEncoding("GB18030");
			
			PrintWriter out = response.getWriter();
			
			String old = request.getParameter("oldpassword");
			String new1 = request.getParameter("newpassword1");
			String new2 = request.getParameter("newpassword2");
			 
			HttpSession session2 = request.getSession();
			Users user=(Users)session2.getAttribute("nowuser");
				
			UserManage um=new UserManage();
			
			if(user.getPassword().equals(old)){
		       if(new1.equals(new2)){	
				um.setPassword(user, new1);
				HttpSession session = request.getSession();
			    session.removeAttribute("nowuser");
			    session.invalidate();
				out.println("<script language=javascript>");
				out.println("alert('�޸ĳɹ���Ϊȷ����ȫ�������µ�½');");
				out.println("window.location='../ExamSystem/index.jsp';");
				out.println("</script>");
		       }
		       else
		       {
		    	    out.println("<script language=javascript>");
					out.println("alert('�������벻һ�������ԣ�');");
					out.println("window.location='../ExamSystem/editpassword.jsp';");
					out.println("</script>");
		       }
			}
			else{
				 out.println("<script language=javascript>");
			     out.println("alert('ԭ�������������ԣ�');");
			     out.println("window.location='.../ExamSystem/editpassword.jsp';");
			    out.println("</script>");
			}
		       	
			out.flush();
			out.close();
		}
		
	}

