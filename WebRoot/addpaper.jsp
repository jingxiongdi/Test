<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.exam.vo.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="com.exam.database.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>增加试题</title>
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
						main:
						{
							required: true
						},
						A:
						{
							required: true
						},
						B:
						{
							required: true
						},
						C:
						{
							required: true
						},
						D:
						{
							required: true
						},
						answer:
						{
							required: true
						}
						
					},
					
					// Messages for form validation
					messages:
					{
						id:
						{
							required: '请试题号.'
						},
						main:
						{
							required: '请输入题目.'
						},
						A:
						{
							required: '请设置A选项.'
						},
						B:
						{
							required: '请设置B选项.'
						},
						C:
						{
							required: '请设置C选项.'
						},
						D:
						{
							required: '请设置D选项.'
						},
						answer:
						{
							required: '请设置答案.'
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
					<li>增加试卷</li>

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
			<form class="form-horizontal sky-form" id="sky-form" role="form" name="form7" method="post"
				action="AddPaper">

				<div class="form-group control-label">
					<label class="col-sm-3 control-label" style="text-align:right">ID:</label>
					<div class="col-sm-8 input">
						<input name="id" type="text" id="id" class="form-control" placeholder="ID">
						<b class="tooltip tooltip-bottom-right">请输入题号，特别提示，请按照顺序依次录入.</b>
					</div>
				</div>
				<div class="form-group control-label">
					<label class="col-sm-3 control-label" style="text-align:right">题目:</label>
					<div class="col-sm-8 input">
						<input name="main" type="text" id="main" class="form-control" placeholder="题目">
						<b class="tooltip tooltip-bottom-right">请输入题目.</b>
					</div>
				</div>
				<div class="form-group control-label">
					<label class="col-sm-3 control-label" style="text-align:right">选项A:</label>
					<div class="col-sm-8 input">
						<input name="A" type="text" id="A" class="form-control" placeholder="选项A">
						<b class="tooltip tooltip-bottom-right">请设置A选项.</b>
					</div>
				</div>
				<div class="form-group control-label">
					<label class="col-sm-3 control-label" style="text-align:right">选项B:</label>
					<div class="col-sm-8 input">
						<input name="B" type="text" id="B" class="form-control" placeholder="选项B">
						<b class="tooltip tooltip-bottom-right">请设置B选项.</b>
					</div>
				</div>
				<div class="form-group control-label">
					<label class="col-sm-3 control-label" style="text-align:right">选项C:</label>
					<div class="col-sm-8 input">
						<input name="C" type="text" id="C" class="form-control" placeholder="选项C">
						<b class="tooltip tooltip-bottom-right">请设置C选项.</b>
					</div>
				</div>
				<div class="form-group control-label">
					<label class="col-sm-3 control-label" style="text-align:right">选项D:</label>
					<div class="col-sm-8 input">
						<input name="D" type="text" id="D" class="form-control" placeholder="选项D">
						<b class="tooltip tooltip-bottom-right">请设置D选项.</b>
					</div>
				</div>
				<div class="form-group control-label">
					<label class="col-sm-3 control-label" style="text-align:right">答案:</label>
					<div class="col-sm-8 input">
						<input name="answer" type="text" id="answer" class="form-control" placeholder="答案">
						<b class="tooltip tooltip-bottom-right">请设置答案.</b>
					</div>
				</div>
				<div class="form-group">
					<div class="uconfbtn">
						<input type="submit" name="Submit" value="增加" class="btn btn-default reg-btn small-btn">
						<input type="reset" class="btn btn-default small-btn">
						<button type="button" onclick="location='paperconf.jsp'"
							class="btn btn-default user_btn btn-back">返回</button>
					</div>
				</div>

			</form>
			<%
				} else {
					out.println("<script language=javascript>");
					out.println("window.location.href='../ExamSystem/index.jsp';");
					out.println("</script>");
				}
			%>

			<div style="clear:both;"></div>
		</div>
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