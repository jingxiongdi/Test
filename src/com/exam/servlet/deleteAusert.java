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

public class deleteAusert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();

		String userid[] = request.getParameterValues("checkbox");
		

		if (userid != null) {

			for (int i = 0; i < userid.length; i++) {
				UserExport userExp = new UserExport();
				Users user = userExp.Login(userid[i]);
				UserManage um = new UserManage();
				if (user == null) {
					out.println("<script language=javascript>");
					out.println("alert('删除失败!');");
					out.println("window.location='../ExamSystem/userconft.jsp';");
					out.println("</script>");
				} else {

					um.deleteuser(user);
					
					out.println("<script language=javascript>");
					out.println("window.location='../ExamSystem/userconft.jsp';");
					out.println("</script>");
				}

			}

		}
		else{
		out.println("<script language=javascript>");
		out.println("alert('未修改！');");
		out.println("window.location='../ExamSystem/userconf.jsp';");
		out.println("</script>");}
		/*
		 * if(user == null){ out.println("<script language=javascript>");
		 * out.println("alert('删除失败!');");
		 * out.println("window.location='../ExamSystem/userconf.jsp';");
		 * out.println("</script>"); } else{ um.deleteAlluser(user,number);
		 * out.println("<script language=javascript>");
		 * out.println("alert('删除成功!');");
		 * out.println("window.location='../ExamSystem/userconf.jsp';");
		 * out.println("</script>"); }
		 */

		out.flush();
		out.close();
	}
}
