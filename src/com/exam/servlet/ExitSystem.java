package com.exam.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ExitSystem extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}
   
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		     
		     
		     PrintWriter out = response.getWriter();
		     
		     HttpSession session = request.getSession();
		     session.removeAttribute("user");
		     session.invalidate();
		     
		     out.println("<script language=javascript>");
 	         out.println("alert('注销成功');");
		     out.println("window.location='../ExamSystem/index.jsp';");
		     out.println("</script>");
	}
	
}

