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

public class EditServlett extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String id = request.getParameter("id");
		String username = request.getParameter("username");
		
		String score = request.getParameter("score");

		
		
		
		UserExport userExp = new UserExport();
		Users user = userExp.Login(username);
		UserManage um = new UserManage();
		if (user == null) {
			out.println("<script language=javascript>");
			out.println("alert('未修改!');");
			out.println("window.location='../ExamSystem/userconft.jsp';");
			out.println("</script>");
		} /*else if (id != null) {
			um.setId(user, Integer.parseInt(id));
			out.println("<script language=javascript>");
			out.println("window.location='../ExamSystem/userconf.jsp';");
			out.println("</script>");
		} else if(username!=null){
			um.setName(user, username);
			out.println("<script language=javascript>");
			out.println("window.location='../ExamSystem/userconf.jsp';");
			out.println("</script>");
		}else if(password!=null){
			um.setPassword(user, password);
			out.println("<script language=javascript>");
			out.println("window.location='../ExamSystem/userconf.jsp';");
			out.println("</script>");
		}else if(tel!=null){
			um.setTel(user, tel);
			out.println("<script language=javascript>");
			out.println("window.location='../ExamSystem/userconf.jsp';");
			out.println("</script>");
		}else if(email!=null){
			um.setEmail(user, email);
			out.println("<script language=javascript>");
			out.println("window.location='../ExamSystem/userconf.jsp';");
			out.println("</script>");
		}else if(sex!=null){
			um.setScore(user, Integer.parseInt(score));
			out.println("<script language=javascript>");
			out.println("window.location='../ExamSystem/userconf.jsp';");
			out.println("</script>");
		}else if(sort!=null){
			um.setSort(user, sort);
			out.println("<script language=javascript>");
			out.println("window.location='../ExamSystem/userconf.jsp';");
			out.println("</script>");
		}else if(sex!=null){
			um.setSex(user, sex);
			out.println("<script language=javascript>");
			out.println("window.location='../ExamSystem/userconf.jsp';");
			out.println("</script>");
		}*/
		else if(id!=null){
			um.setId(user, Integer.parseInt(id));
			um.setName(user, username);
			um.setScore(user,Integer.parseInt(score));
			out.println("<script language=javascript>");
			out.println("window.location='../ExamSystem/userconft.jsp';");
			out.println("</script>");
		}
		out.flush();
		out.close();
	}
	
}
