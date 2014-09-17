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

				

			</div>
		</div>

	</div>
	<div class="content">
	<div class="reg-form-div">
	<h3 class="end-exam-h3">考试结束</h3>
     <% 
		int count= 1;
    	int correct = 0;
    	int id = 1;	
    	int score=0;
		String answer;
		SubjectExport SubjectExp;
		Subject choice;
        SubjectExp=new SubjectExport();
		choice= SubjectExp.export(id);
		
    	while(choice != null){
    	         
		    answer = request.getParameter("choice_"+choice.getId());
		    
		    if(answer!=null&&answer.equals(choice.getAnswer()))
					correct+=10;
					
			choice= SubjectExp.export(id);
    	    id++;
    	    count++;
    	    
    	}
    	
    	UserManage ui = new UserManage();
    	
    	ui.setScore(user,correct);
    	
    	if(correct==0)
    	{out.println("您答对了0道题"+"<h4 class='end-exam-h4'>您的分数是 <span class='score-color'>"+0+"</span>分！(满分为"+count*10+"分）</h4>");}
    	else{
    		out.println("<h4 class='end-exam-h4'>"+"您答对了<span class='score-span'>"+(correct-10)/10+"</span>道题"+"     您的分数是 <span class='score-span'>"+(correct-10)+"</span>分！(满分为<span class='score-span'>"+(count-2)*10+"</span>分）</h4>");
    	}
    	
    	UserExport userExp=new UserExport();
		Users usernew = userExp.Login(user.getName());
    	
    	%>
    	<form name="form4"  method="post" action="ExitSystem">	                                        
				<div class="form-group ">
					<div class="uconfbtn">
						 <input type="submit"  name="Summit" value="安全退出" class="btn btn-default small-btn">
						<button type="button" onclick="location='userinfo.jsp'"
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