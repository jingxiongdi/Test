<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ page import="com.exam.vo.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="com.exam.database.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'scanpaper.jsp' starting page</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <form name="form1" method="post" action="examsave.jsp">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width='20%'><%@ include file = "menu.jsp" %></td>
          <td width='80%'>
          <br>
          <br>
          <table width="100%" border="0" cellspacing="1" cellpadding="1"  bgColor=#d1face>
            <tr>
              <td height="25" colspan="2" bgcolor="#d1face" align="center">µ±Ç°ÊÔ¾í</td>
            </tr>
            
                <%
		int id = 1;	
		SubjectExport SubjectExp;
		Subject choice;
        SubjectExp=new SubjectExport();
		choice= SubjectExp.export(id);
        while(choice != null){ 
   
    
                out.println("<tr>");
    			out.println("<td>&nbsp;&nbsp;"+id+". "+choice.getMain()+"           ´ð°¸£º< "+choice.getAnswer()+" >"+"</br>");
    		    out.println("&nbsp;&nbsp;&nbsp;"+"A. "+choice.getA()+"</br>");
    		    out.println("&nbsp;&nbsp;&nbsp;"+"B. "+choice.getB()+"</br>");
    		    out.println("&nbsp;&nbsp;&nbsp;"+"C. "+choice.getC()+"</br>");
    		    out.println("&nbsp;&nbsp;&nbsp;"+"D. "+choice.getD()+"</br>"+"</td>");
    			out.println("</tr>");
    		                             
    		    out.println("</br>");
    			
    			out.println("<tr>");
    			out.println("<td colspan=2>"+"<HR>"+"  </HR>"+"</td>");
    			out.println("</tr>");
    		
  
       id++;
       choice= SubjectExp.export(id);
       }
    %>
            
            
        
          </table></td>
        </tr>
      </table>
      </form>
  </body>
</html>
