<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.exam.vo.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="com.exam.database.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>增加考生</title>
<%
	//禁止缓存
	response.setHeader("Cache-Control", "no-cache"); //HTTP 1.1
	response.setHeader("Pragma", "no-cache"); //HTTP 1.0
	response.setDateHeader("Expires", 0); //prevents caching at the proxy server
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
<script type="text/javascript" src="js/jquery.validate.min.js"></script>
<script type="text/javascript">
	    	$(function()
			{
				// Validation		
				$("#sky-form").validate(
				{					
					// Rules for form validation
					rules:
					{
						id:
						{
							required: true
						},
						username:
						{
							required: true
						},
						email:
						{
							required: true,
							email: true
						},
						password:
						{
							required: true,
							minlength: 3,
							maxlength: 20
						},
						repass:
						{
							required: true,
							minlength: 3,
							maxlength: 20,
							equalTo: '#password'
						},
						tel:
						{
							required: true,
							
							
						}
					},
					
					// Messages for form validation
					messages:
					{
						id:
						{
							required: '请输入用户的学号或工号.'
						},
						login:
						{
							required: '请登陆.'
						},
						email:
						{
							required: '请输入用户的 Email地址.',
							email: '请输入一个合法的Email地址.'
						},
						password:
						{
							required: '请输入用户的密码.'
						},
						repass:
						{
							required: '请再次确认用户的密码.',
							equalTo: '请输入相同的密码.'
						},
						tel:
						{
							required: '请输入用户的联系电话.'
						}
					},					
					
					// Do not change code below
					errorPlacement: function(error, element)
					{
						error.insertAfter(element.parent());
					}
				});
			});			
        </script>
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
					<li>增加用户</li>
					
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

			<form class="form-horizontal sky-form" id="sky-form" role="form" action="AddServlet" method="post" onSubmit="/*return reg(this);*/">
				<div class="form-group fsection">
					<label class="col-sm-3 control-label" style="text-align:right">学号</label>
					<div class="col-sm-8 input">
						<input type="text" class="form-control" name="id" placeholder="学号">
						<b class="tooltip tooltip-bottom-right">请输入用户的学号或工号.</b>
						
					</div>
				</div>
				<div class="form-group fsection">
					<label class="col-sm-3 control-label" style="text-align:right">账号</label>
					<div class="col-sm-8 input">
						<input type="text" class="form-control" name="username" placeholder="账号">
						<b class="tooltip tooltip-bottom-right">请输入用户的注册账号.</b>
						
					</div>
				</div>
				<div class="form-group fsection">
					<label class="col-sm-3 control-label" style="text-align:right">密码</label>
					<div class="col-sm-8 input">
						<input type="password" class="form-control" name="password" id="password" placeholder="密码">
						<b class="tooltip tooltip-bottom-right">请输入用户的密码，3~20个字符.</b>
						
					</div>
				</div>
				<div class="form-group fsection">
					<label class="col-sm-3 control-label" style="text-align:right">确认密码.</label>
					<div class="col-sm-8 input">
						<input type="password" class="form-control" name="repass" placeholder="确认密码">
						<b class="tooltip tooltip-bottom-right">请再次确认用户的密码.</b>
						
					</div>
				</div>
				<div class="form-group">

					<label class="col-sm-3 control-label" style="text-align:right">性别</label>
						<div class="col-sm-4">
								<select name="sex" class="form-control">
								<option value="男">男</option>
								<option value="女">女</option>
								</select>
						</div>
				</div>
				
				<div class="form-group fsection">
					<label class="col-sm-3 control-label" style="text-align:right">联系电话</label>
					<div class="col-sm-8 input">
						<input type="text" class="form-control" name="tel" placeholder="联系电话">
						<b class="tooltip tooltip-bottom-right">请输入用户的联系电话，不能为空.</b>
						
					</div>
				</div>
				<div class="form-group fsection">
					<label class="col-sm-3 control-label" style="text-align:right">Email</label>
					<div class="col-sm-8 input">
						<input type="text" class="form-control" name="email" placeholder="Email">
						<b class="tooltip tooltip-bottom-right">请输入用户的一个合法Email,不能为空.</b>
						
					</div>
				</div>
				<div class="form-group">

					<label class="col-sm-3 control-label" style="text-align:right">职别</label>
						<div class="col-sm-4">
								<select name="sort" class="form-control">
								<option value="s">学生</option>
								<option value="t">老师</option>
								</select>
						</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-3 col-sm-8">
						<input type="submit" class="btn btn-default reg-btn small-btn">
						<input type="reset" class="btn btn-default small-btn">
						<button type="button" onclick="location='userconf.jsp'"
							class="btn btn-default user_btn btn-back">返回</button>
					</div>
				</div>
				
			


				<%
 	} else {
 		out.println("<script language=javascript>");
 		out.println("window.location.href='../ExamSystem/index.jsp';");
 		out.println("</script>");
 	}
 %>

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