package com.exam.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.exam.vo.Subject;
import com.exam.vo.SubjectExport;
import com.exam.vo.SubjectManage;

public class deleteApaper extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		
		String[] ids=request.getParameterValues("checkbox");
		
		
		for(int i=0;i<ids.length;i++){
			SubjectExport sExp=new SubjectExport();
			SubjectManage ms=new SubjectManage();
			
			Subject s = sExp.export(Integer.parseInt(ids[i]));
			if(s == null){
				out.println("<script language=javascript>");
				out.println("alert('删除失败!');");
				out.println("window.location='../ExamSystem/paperconf.jsp';");
				out.println("</script>");
			}
			else{
				ms.deletesubject(s);
				out.println("<script language=javascript>");
				out.println("alert('删除成功!');");
				out.println("window.location='../ExamSystem/paperconf.jsp';");
				out.println("</script>");
			}
			
		}
	}

}
