package com.exam.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.exam.vo.Subject;
import com.exam.vo.SubjectExport;
import com.exam.vo.SubjectManage;
import com.exam.vo.UserExport;
import com.exam.vo.UserManage;
import com.exam.vo.Users;

public class editpapert extends HttpServlet {
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
			
			int id = Integer.parseInt(request.getParameter("id"));
			String main = request.getParameter("main");
			String A = request.getParameter("A");
			String B = request.getParameter("B");
			String C = request.getParameter("C");
			String D = request.getParameter("D");
			String answer = request.getParameter("answer");
			
			SubjectExport sExp=new SubjectExport();
			Subject s = sExp.export(id);
				
			SubjectManage sm=new SubjectManage();
			
			if(s == null){
				out.println("<script language=javascript>");
				out.println("alert('修改失败!');");
				out.println("window.location='../ExamSystem/paperconft.jsp';");
				out.println("</script>");
			}
			else{
				sm.editsubject(s, id, main, A, B, C, D, answer);
				out.println("<script language=javascript>");
				out.println("alert('修改成功!');");
				out.println("window.location='../ExamSystem/paperconft.jsp';");
				out.println("</script>");
			}
		       	
			out.flush();
			out.close();
		}
		
	}

