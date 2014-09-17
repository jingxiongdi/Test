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
public class editUserPass extends HttpServlet {
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

		
		
		PrintWriter out = response.getWriter();
		String oldname = request.getParameter("editname");
		String newname = request.getParameter("newname");
		String old = request.getParameter("oldpassword");
		String new1 = request.getParameter("newpassword1");
		String new2 = request.getParameter("newpassword2");
		 
		HttpSession session2 = request.getSession();
		Users user=(Users)session2.getAttribute("user");
			
		UserExport userExp=new UserExport();
		Users usern = userExp.Login(oldname);
			
		UserManage um=new UserManage();
		
		if(user.getPassword().equals(old)){
	       if(new1.equals(new2)){	
			um.setPassword(user, new1);
			um.setName(usern, newname);
			HttpSession session = request.getSession();
		    session.removeAttribute("user");
		    session.invalidate();
			out.println("<script language=javascript>");
			out.println("alert('修改成功！请重新登陆！');");
			out.println("window.location='../ExamSystem/index.jsp';");
			out.println("</script>");
	       }
	       else
	       {
	    	    out.println("<script language=javascript>");
				out.println("alert('密码错误！请重试！');");
				out.println("window.location='../ExamSystem/editpassword.jsp';");
				out.println("</script>");
	       }
		}
		else{
			 out.println("<script language=javascript>");
		     out.println("alert('修改失败！请重试！');");
		     out.println("window.location='.../ExamSystem/editpassword.jsp';");
		    out.println("</script>");
		}
	       	
		out.flush();
		out.close();
	}
	
}