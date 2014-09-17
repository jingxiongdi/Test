<%@ page contentType="text/html; charset=GB2312" language="java"
	import="java.util.*,java.text.*"%>
<%@ page import ="com.exam.vo.*"%>
<%
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<head>
	<LINK href="Style.css" type=text/css rel=stylesheet>
</head>

<%Users user = (Users)session.getAttribute("user"); %>

<body topmargin="100" bgcolor=#f3f3f3>
	<table width="58%" height="166" border="1" align="center"
		cellpadding="2" bordercolor="#C0C0C0" bordercolorlight="#C0C0C0"
		bordercolordark="#FFFFFF" bgcolor="#EEEEEE">
		<tr>
			<td height="14" colspan="4" align=center
				style="font-size:14px;color=#ff6600">
				欢迎你，管理员！
			</td>
		</tr>
		<tr>
			<td height="14" align=center>
				* 用户名:
			</td>
			<td width="76%">
				<%=user.getName()%>
			</td>
		</tr>
		<tr>
			<td height="14" align=center>
				* 密    码:
			</td>
			<td width="76%">
				<%=user.getPassword()%>
			</td>
		</tr>
		
		<tr>
			<td width="24%" height="30" align=center>
				* 您的IP:
			</td>
			<td width="76%">
				<%=request.getRemoteAddr()%>
			</td>
		</tr>
		<tr>
			<td width="24%" height="30" align=center>
				* 服务器名称:
			</td>
			<td width="76%">
				<%=request.getServerName()%>
			</td>
		</tr>
		<tr>
			<td height="30" colspan="2" style="color:#ff0000"></td>
		</tr>
	</table>
</body>
