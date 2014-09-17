<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ page import="com.exam.vo.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="com.exam.database.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>查看所有考生</title>

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
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width='20%'>
						<%@ include file="menu.jsp"%>
					</td>
					<td width='80%'>
     <table width="100%" border="0" cellspacing="1" cellpadding="1"  bgColor=#d1face>
            <tr>
              <td height="25" colspan="2" bgcolor="#d1face" align="center">考生信息</td>
            </tr>
    <% 
        Connection conn = ConnectionManager.getConnection();
		String sql = "select * from userinfo ";
		PreparedStatement psm =null;
		ResultSet rs = null;
		Users user = null;
		psm = conn.prepareStatement(sql);
		rs = psm.executeQuery();
		 while(rs.next())
        {
                out.println("<tr>");
    			out.println("<td>&nbsp;&nbsp;"+"【  姓名： "+rs.getString("username")+"</br>");
    		    out.println("&nbsp;&nbsp;【  密码： "+rs.getString("password")+"</br>");
    		    out.println("&nbsp;&nbsp;【  密码： "+rs.getString("tel")+"</br>");
    		    out.println("&nbsp;&nbsp;【    ID： "+rs.getInt("id")+"</br>");
    		    out.println("&nbsp;&nbsp;【  分数： "+rs.getInt("score")+"</br>");
    			out.println("</br>");
    		    out.println("--------------------------------------------"+"</td>");
    			out.println("</tr>");     
        }
  %>
  </table>
  </td>
  </tr>
  </table>
  </body>
</html>
