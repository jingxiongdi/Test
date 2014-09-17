package com.exam.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BeginExam extends HttpServlet {
	
    
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}
   
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		    
		     PrintWriter out = response.getWriter();
		     out.println("<script language=javascript>");
 	         out.println("alert('开始考试');");
		     out.println("window.location='../ExamSystem/onlineexam.jsp';");
		     out.println("</script>");
	}
	
}
