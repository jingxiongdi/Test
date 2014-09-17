<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="com.exam.vo.Users"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'userinfo.jsp' starting page</title>
<%//禁止缓存
     response.setHeader("Cache-Control","no-cache"); //HTTP 1.1
     response.setHeader("Pragma","no-cache"); //HTTP 1.0
     response.setDateHeader ("Expires", 0); //prevents caching at the proxy server
    %>
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
<script type="text/javascript" src="js/checktime.js"></script>
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
		<h1 class="message-h1">Welcome!</h1>
		<h2 class="message-h2">
			欢迎<span class='reg-sword'><%=user.getName() %></span>来到在线考试<span>Alpha</span>版
		</h2>
		<br> <br> <br> <br> <br>
		<div class="message-cen">
			<button type="submit" onclick="location='userinfot.jsp'"
				class="btn btn-default register_btn" id="mes-uinfo">个人信息</button>
			<br>
			<button type="submit" onclick="location='paperconft.jsp'"
				class="btn btn-default register_btn" id="mes-exam">试卷管理</button>
		</div>
		<%								
							}else{
								out.println("<br>对不起，您还没有登录！");
							}
						%>
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
