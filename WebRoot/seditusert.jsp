<%@ page language="java" import="java.util.*" pageEncoding="UTf-8"%>
<%@ page import="com.exam.vo.*"%>
<%@ page import="java.sql.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>My JSP 'userinfo.jsp' starting page</title>

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
		</div>

	</div>
	<div class="content">
		<div class="reg-form-div">
			<form class="form-horizontal" role="form" name="form6" method="post"
				action="editUserPass">
				<div class="form-group">
					<label class="col-sm-3 control-label" style="text-align:right" >原账号</label>
					<div class="col-sm-6">
						<input name="editname" type="text" id="editname" 
							class="form-control" placeholder="原账号">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label" style="text-align:right">新账号</label>
					<div class="col-sm-6">
						<input name="newname" type="text" id="newname" class="form-control" placeholder="新账号">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label" style="text-align:right">旧密码</label>
					<div class="col-sm-6">
						<input name="oldpassword" type="password" id="newpassword"
							class="form-control" placeholder="新密码">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label" style="text-align:right">新密码</label>
					<div class="col-sm-6">
						<input name="newpassword1" type="password" id="newpassword"
							class="form-control" placeholder="新密码">
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label" style="text-align:right">确认</label>
					<div class="col-sm-6">
						<input name="newpassword2" type="password" id="newpassword"
							class="form-control" placeholder="新密码">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-3 col-sm-8">
						<input type="submit" name="Submit" value="提交" class="btn btn-default reg-btn small-btn">&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="reset" name="clear" value="清空" class="btn btn-default small-btn">
						
					</div>
				</div>
			</form>
			
			<form class="form-horizontal" role="form" name="form6" method="post" action="editUserInfo">
				
				<div class="form-group">
					<label class="col-sm-3 control-label" style="text-align:right">工号</label>
					<div class="col-sm-6">
						<input name="newid" type="text" id="newid" class="form-control" placeholder="学号" >
						
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label" style="text-align:right">联系电话</label>
					<div class="col-sm-6">
						<input name="newtel" type="text" id="newtel" class="form-control" placeholder="联系电话" >
						
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-3 control-label" style="text-align:right">Email</label>
					<div class="col-sm-6">
						<input name="newemail" type="text" id="newemail" class="form-control" placeholder="Email" >
						
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-3 col-sm-8">
						<input type="submit" name="Submit" value="提交" class="btn btn-default reg-btn small-btn">&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="reset" name="clear" value="清空" class="btn btn-default small-btn">
						
					</div>
				</div>
			</form>
			<button type="button" onclick="location='userinfot.jsp'" class="btn btn-default user_btn" id="uin-back">返回</button><br>
			<%
				} else if (null == user) {
					out.println("<br>对不起，您还没有登录！");
					out.println("<script language=javascript>");
					out.println("window.location.href='../ExamSystem/index.jsp';");
					out.println("</script>");
				}
			%>
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