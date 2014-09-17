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
public class editUserInfo extends HttpServlet{
private static final long serialVersionUID = 1L;
    
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		String newid = request.getParameter("newid");
		String newtel = request.getParameter("newtel");
		String newemail = request.getParameter("newemail");
		HttpSession session = request.getSession();
		Users user=(Users)session.getAttribute("user");
		
		UserManage um=new UserManage();
		
		um.setUserInfo(user, Integer.parseInt(newid), newtel, newemail);
		out.println("<script language=javascript>");
		out.println("alert('修改成功！');");
		out.println("window.location='../ExamSystem/message.jsp';");
		out.println("</script>");
	}
}
