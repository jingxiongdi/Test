<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ page import="com.exam.vo.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="com.exam.database.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>��̨����</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"></link>
<link rel="stylesheet" href="css/main.css" type="text/css"></link>
<link rel="shortcut icon" href="images/blue2014Jun.png">
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/main.js"></script>
</head>
  <body>
  <div class="head">
		<div class="head-child">
			<span class="head-title">���Թ���ϵͳ</span>

			<h3 class="mes-uinfo-h3">
				<% 
					    	// ��ȡ��ʾ��Ϣ
							String info = (String)request.getAttribute("info");
					    	// �����ʾ��Ϣ��Ϊ�գ��������ʾ��Ϣ
							if(info != null){
								out.println(info);
							}
					    	// ��ȡ��¼���û���Ϣ
							Users user = (Users)session.getAttribute("user");
					    	// �ж��û��Ƿ��¼
							if(user != null){
						%>
			</h3>
			
			<h4 class="mes-uinfo-h4">
				<span class='user-sword'>��ǰ�û�:&nbsp&nbsp</span><%=user.getName() %>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a
					href="ExitSystem">ע��</a>
			</h4>
			<div class="head-bar">
			
				<ul>
					<li><a href="userconf.jsp">�û�����</a></li>
					<li><a href="paperconf.jsp">�Ծ����</a></li>
					<!--  <li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>
					<li></li>-->
				</ul>
			
			</div>
		</div>
		
	</div>
	<div class="content">
     
     	<h3 class="admin-title">��ӭ�㣬����Ա<span><%=user.getName()%></span></h3>
     	<br>
     	<br>
     	<h4 class="admin-info">�����˺ţ�<span><%=user.getName()%></span></h4>
     	<h4 class="admin-info">�������룺<span><%=user.getPassword()%></span></h4>
     	<h4 class="admin-info">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp����IP��<span><%=request.getRemoteAddr()%></span></h4>
     	<h4 class="admin-info">��������<span><%=request.getServerName()%></span></h4>
     
		<%}else {
			out.println("<script language=javascript>");
			out.println("window.location.href='../ExamSystem/index.jsp';");
			out.println("</script>");
		}%>	

		<div style="clear:both;"></div>
	</div>
	<div class="foot">
		<p>
			<a>Exam by delete</a> <a>���Թ���ϵͳAlpha</a>
		</p>
		<p>�0�8 2014 Delete.</p>
		<div class="follow-buttons">
			<div style="vertical-align:middle;">
				<a>Follow @delete</a>
			</div>
		</div>
	</div>
	<div id="back-to-top"></div>
  </body>
</html>