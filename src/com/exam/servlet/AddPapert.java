package com.exam.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.exam.vo.Subject;
import com.exam.vo.SubjectManage;

public class AddPapert extends HttpServlet {
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
			
			int id = Integer.parseInt(request.getParameter("id"));
			String main = request.getParameter("main");
			String A = request.getParameter("A");
			String B = request.getParameter("B");
			String C = request.getParameter("C");
			String D = request.getParameter("D");
			String answer = request.getParameter("answer");
			
			Subject subject=new Subject();
			subject.setId(id);
			subject.setMain(main);
			subject.setA(A);
			subject.setB(B);
			subject.setC(C);
			subject.setD(D);
			subject.setAnswer(answer);
			
			SubjectManage sm=new SubjectManage();
			
			sm.addsubject(subject);
				out.println("<script language=javascript>");
				out.println("alert('添加成功！');");
				out.println("window.location='../ExamSystem/addpapert.jsp';");
				out.println("</script>");
			
			
			out.flush();
			out.close();
		}
		
	}

