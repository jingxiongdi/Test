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
    <title>�޸�����</title>
    <%//��ֹ����
     response.setHeader("Cache-Control","no-cache"); //HTTP 1.1
     response.setHeader("Pragma","no-cache"); //HTTP 1.0
     response.setDateHeader ("Expires", 0); //prevents caching at the proxy server
    %>
   </head>
  <body>
     <form name="form6" method="post" action="editpaper">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width='20%'>
						<%@ include file="menu.jsp"%>
					</td>
					<td width='80%'>
						<form name="form10" method="post" action="servlet/editpaper">
                <table width="100%" border="0" cellspacing="1" cellpadding="1" bordercolor="#C0C0C0" bordercolorlight="#C0C0C0"
		bordercolordark="#FFFFFF" bgcolor="#EEEEEE">
      <tr bgcolor="#FFFFFF"> 
        <td colspan="2" align="center"><h3>�޸�����</h3></td>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td align="right">����ID��</td>
        <td><input name="id" type="text" id="id" style="width:200px"></td>
      </tr>
       <tr bgcolor="#FFFFFF">
        <td align="right">�����⣺</td>
        <td><input name="main" type="text" id="main" style="width:200px"></td>
      </tr>
      <tr bgcolor="#FFFFFF">
        <td align="right">��ѡ��A��</td>
        <td><input name="A" type="text" id="A" style="width:200px"></td>
      </tr>
       <tr bgcolor="#FFFFFF">
        <td align="right">��ѡ��B��</td>
        <td><input name="B" type="text" id="B" style="width:200px"></td>
      </tr>
       <tr bgcolor="#FFFFFF">
        <td align="right">��ѡ��C��</td>
        <td><input name="C" type="text" id="C" style="width:200px"></td>
      </tr>
       <tr bgcolor="#FFFFFF">
        <td align="right">��ѡ��D��</td>
        <td><input name="D" type="text" id="D" style="width:200px"></td>
      </tr>
       <tr bgcolor="#FFFFFF">
        <td align="right">�´𰸣�</td>
        <td><input name="answer" type="text" id="answer" style="width:200px"></td>
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