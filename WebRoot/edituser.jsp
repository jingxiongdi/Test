<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ page import="com.exam.vo.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="com.exam.database.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <% //ȡ���û���Ϣ   �����Ƿ��¼
	Users user = (Users)session.getAttribute("nowuser");
	if (null == user) {  
            out.println("<script language=javascript>");
			out.println("alert('�Ƿ����������ȵ�½��');");
			out.println("window.location.href='../index.jsp';");
			out.println("</script>");
    }
%>
  <head>
    <title>�޸ĸ�����Ϣ</title>
    <%//��ֹ����
     response.setHeader("Cache-Control","no-cache"); //HTTP 1.1
     response.setHeader("Pragma","no-cache"); //HTTP 1.0
     response.setDateHeader ("Expires", 0); //prevents caching at the proxy server
    %>
   </head>
  <body>
     <form name="form6" method="post" action="edituser">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width='20%'>
						<%@ include file="menu.jsp"%>
					</td>
					<td width='80%'>
						<form name="form10" method="post" action="edituser">
                <table width="100%" border="0" cellspacing="1" cellpadding="1" bordercolor="#C0C0C0" bordercolorlight="#C0C0C0"
		bordercolordark="#FFFFFF" bgcolor="#EEEEEE">
      <tr bgcolor="#FFFFFF"> 
        <td colspan="2" align="center"><h3>�޸Ŀ���</h3></td>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td align="right">����ԭ�û�����</td>
        <td><input name="editname" type="text" id="editname" style="width:200px"></td>
      </tr>
       <tr bgcolor="#FFFFFF">
        <td align="right">�������û�����</td>
        <td><input name="newname" type="text" id="newname" style="width:200px"></td>
      </tr>
       <tr bgcolor="#FFFFFF">
        <td align="right">���������룺</td>
        <td><input name="newpassword" type="text" id="newpassword" style="width:200px"></td>
      </tr>
       <tr bgcolor="#FFFFFF">
        <td align="right">������ID��</td>
        <td><input name="newid" type="text" id="newid" style="width:200px"></td>
      </tr>
      <tr bgcolor="#FFFFFF" align="center">
        <td colspan="2">
        <input type="submit"name="Submit" value="�ύ" class="btn">&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="reset" name="clear" value="���" class="btn"></td>
      </tr>
    </table>
  
  </form>
  
					</td>
				</tr>
			</table>
		</form>
  </body>
</html>