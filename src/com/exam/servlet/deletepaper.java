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

public class deletepaper extends HttpServlet {
		/**
		 * ɾ������
		 */
		private static final long serialVersionUID = 1L;
	    
		public void doGet(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			doPost(request,response);
		}

		public void doPost(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {

			
			
			PrintWriter out = response.getWriter();
			
			int id = Integer.parseInt(request.getParameter("deleteid"));
			
			SubjectExport sExp=new SubjectExport();
			Subject s = sExp.export(id);
				
			SubjectManage sm=new SubjectManage();
			
			if(s == null){
				out.println("<script language=javascript>");
				out.println("alert('��id�����ڣ�');");
				out.println("window.location='../ExamSystem/deletepaper.jsp';");
				out.println("</script>");
			}
			else{
				sm.deletesubject(s);
				out.println("<script language=javascript>");
				out.println("window.location='../ExamSystem/deletepaper.jsp';");
				out.println("</script>");
			}
		       	
			out.flush();
			out.close();
		}
		
	}

