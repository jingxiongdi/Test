<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
					String info = (String) request.getAttribute("info");
					// 如果提示信息不为空，则输出提示信息
					if (info != null) {
						out.println(info);
					}
					// 获取登录的用户信息
					Users user = (Users) session.getAttribute("user");
					// 判断用户是否登录
					if (user != null) {
				%>
			</h3>

			<h4 class="mes-uinfo-h4">
				<span class='user-sword'>当前用户:&nbsp&nbsp</span><%=user.getName()%>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a
					href="ExitSystem">注销</a>
			</h4>
			<div class="head-bar">

				<ul>
					<li>用户管理</li>
					<li><a href="adduser.jsp">增加用户</a></li>
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
		<div class="reg-form-div">

			<form class="form-horizontal" role="form" action="deleteAuser"
				method="post" onSubmit="/*return reg(this);*/">
				<ul class="user-conf-ul">
					<li><input type="checkbox" id="chooseAll">学号/工号</li>
					<li>账号</li>
					<li>密码</li>
					<li>性别</li>
					<li>联系电话</li>
					<li>Email</li>
					<li>成绩</li>
					<li>职别</li>
					<hr class="uconf-hr" />
				</ul>


				<div class="user-confin-div">

					<%
						Connection conn = ConnectionManager.getConnection();
							String sql = "select * from userinfo ";
							PreparedStatement psm = null;
							ResultSet rs = null;

							psm = conn.prepareStatement(sql);
							rs = psm.executeQuery();
							while (rs.next()) {
								out.println("<ul>" + "<li>"
										+ "<input type='checkbox' name='checkbox' class='checkboxa' value='"
					+ rs.getString("username") + "'>" + rs.getInt("id")
										+ "</li>");
								out.println("<li>" + rs.getString("username") + "</li>");
								out.println("<li>" + rs.getString("password") + "</li>");
								out.println("<li>" + rs.getString("sex") + "</li>");
								out.println("<li>" + rs.getString("tel") + "</li>");
								out.println("<li>" + rs.getString("email") + "</li>");
								out.println("<li>" + rs.getInt("score") + "</li>");
								out.println("<li>" + rs.getString("role") + "</li>"
										+ "</ul>");
							}
					%>
					 
					<%
						} else {
							out.println("<script language=javascript>");
							out.println("window.location.href='../ExamSystem/index.jsp';");
							out.println("</script>");
						}
					%>

				</div>
				<br> <br>
				<div class="form-group ">
					<div class="uconfbtn">
						<input type="submit" class="btn btn-default reg-btn small-btn"
							value="删除用户"> <input type="reset"
							class="btn btn-default small-btn" id="conf-reset"> 
						<button type="button" onclick="location='admin.jsp'"
							class="btn btn-default user_btn btn-back">返回</button>
					</div>
				</div>
			</form>
		</div>
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
