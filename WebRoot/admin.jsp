<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ page import="com.exam.vo.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="com.exam.database.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>后台管理</title>

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
			<span class="head-title">考试管理系统</span>

			<h3 class="mes-uinfo-h3">
				<% 
					    	// 获取提示信息
							String info = (String)request.getAttribute("info");
					    	// 如果提示信息不为空，则输出提示信息
							if(info != null){
								out.println(info);
							}
					    	// 获取登录的用户信息
							Users user = (Users)session.getAttribute("user");
					    	// 判断用户是否登录
							if(user != null){
						%>
			</h3>
			
			<h4 class="mes-uinfo-h4">
				<span class='user-sword'>当前用户:&nbsp&nbsp</span><%=user.getName() %>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a
					href="ExitSystem">注销</a>
			</h4>
			<div class="head-bar">
			
				<ul>
					<li><a href="userconf.jsp">用户管理</a></li>
					<li><a href="paperconf.jsp">试卷管理</a></li>
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
     
     	<h3 class="admin-title">欢迎你，管理员<span><%=user.getName()%></span></h3>
     	<br>
     	<br>
     	<h4 class="admin-info">您的账号：<span><%=user.getName()%></span></h4>
     	<h4 class="admin-info">您的密码：<span><%=user.getPassword()%></span></h4>
     	<h4 class="admin-info">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp您的IP：<span><%=request.getRemoteAddr()%></span></h4>
     	<h4 class="admin-info">服务器：<span><%=request.getServerName()%></span></h4>
     
		<%}else {
			out.println("<script language=javascript>");
			out.println("window.location.href='../ExamSystem/index.jsp';");
			out.println("</script>");
		}%>	

		<div style="clear:both;"></div>
	</div>
	<div class="foot">
		<p>
			<a>Exam by delete</a> <a>考试管理系统Alpha</a>
		</p>
		<p>© 2014 Delete.</p>
		<div class="follow-buttons">
			<div style="vertical-align:middle;">
				<a>Follow @delete</a>
			</div>
		</div>
	</div>
	<div id="back-to-top"></div>
  </body>
</html>