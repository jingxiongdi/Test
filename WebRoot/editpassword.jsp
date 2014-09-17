<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ page import="com.exam.vo.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="com.exam.database.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <% //取得用户信息   检验是否登录
	Users user = (Users)session.getAttribute("nowuser");
	if (null == user) {  
            out.println("<script language=javascript>");
			out.println("alert('非法动作，请先登陆！');");
			out.println("window.location.href='../index.jsp';");
			out.println("</script>");
    }
%>
  <head>
    <title>修改管理员密码</title>
    <%//禁止缓存
     response.setHeader("Cache-Control","no-cache"); //HTTP 1.1
     response.setHeader("Pragma","no-cache"); //HTTP 1.0
     response.setDateHeader ("Expires", 0); //prevents caching at the proxy server
    %>
   </head>
  <body>
     <form name="form6" method="post" action="editPassword">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width='20%'>
						<%@ include file="menu.jsp"%>
					</td>
					<td width='80%'>
						<form name="form9" method="post" action="servlet/editPassword">
                <table width="100%" border="0" cellspacing="1" cellpadding="1" bordercolor="#C0C0C0" bordercolorlight="#C0C0C0"
		bordercolordark="#FFFFFF" bgcolor="#EEEEEE">
      <tr bgcolor="#FFFFFF"> 
        <td colspan="2" align="center"><h3>修改密码</h3></td>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td align="right">原密码：</td>
        <td><input name="oldpassword" type="password" id="oldpassword" style="width:200px"></td>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td align="right">新密码：</td>
        <td><input name="newpassword1" type="password" id="newpassword1" style="width:200px"></td>
      </tr>
        <tr bgcolor="#FFFFFF">
        <td align="right">确认新密码：</td>
        <td><input name="newpassword2" type="password" id="newpassword2" style="width:200px"></td>
      </tr>
      
      <tr bgcolor="#FFFFFF" align="center">
        <td colspan="2">
        <input type="submit"name="Submit" value="确认" class="btn">&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="reset" name="clear" value="清空" class="btn"></td>
      </tr>
    </table>
  
  </form>
  
					</td>
				</tr>
			</table>
		</form>
  </body>
</html>