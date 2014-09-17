<%@ page language="java" import="java.util.*" pageEncoding="UTf-8"%>
<%@ page import="com.exam.vo.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="com.exam.database.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>学生信息</title>

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
		</div>

	</div>
	<div class="content">
	<div class="userinfo-div">
		
			<ul>
				<li><h4 class="user-li-span">账号:</h4><h4><%=user.getName()%></h4></li>
				<li><h4 class="user-li-span">性别:</h4><h4><%=user.getSex()%></h4></li>
				<li><h4 class="user-li-span">联系电话:</h4><h4><%=user.getTel()%></h4></li>
				<li><h4 class="user-li-span">邮箱:</h4><h4><%=user.getEmail()%></h4></li>
				<li><h4 class="user-li-span">职别:</h4><h4>学生</h4></li>
				<li><h4 class="user-li-span">学号:</h4><h4><%=user.getId()%></h4></li>
				<li><h4 class="user-li-span">成绩:</h4><h4><%=user.getScore()%></h4></li>
				<!-- 
				<li><span></span><span></span></li> -->
				
			</ul>
			
		</div>
		<div class="user-right">
		<button type="button" onclick="location='sedituser.jsp'" class="btn btn-default user_btn uin-uinfo" >修改个人信息</button><br>
		<button type="button" onclick="location='BeginExam'" class="btn btn-default user_btn uin-uinfo" >开始考试</button><br>
		<button type="button" onclick="location='message.jsp'" class="btn btn-default user_btn uin-uinfo">返回</button>
		
		</div>
		
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

