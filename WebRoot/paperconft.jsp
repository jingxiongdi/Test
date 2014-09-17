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
					<li>试卷管理</li>
					<li><a href="addpapert.jsp">增加试卷</a></li>
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
		<form class="form-horizontal" role="form" action="deleteApapert"
				method="post" onSubmit="/*return reg(this);*/">
				<div class="paper-confin-div">
		<%
		Connection conn = ConnectionManager.getConnection();
		String sql = "select * from subject ";
		PreparedStatement psm = null;
							ResultSet rs = null;

							psm = conn.prepareStatement(sql);
							rs = psm.executeQuery();
		
		/*int id = 1;	
		SubjectExport SubjectExp;
		Subject choice;
        SubjectExp=new SubjectExport();
		choice= SubjectExp.export(id);*/
        while(rs.next()){ 
   
    
                out.println("<ul class='paper-scan'>");
    			out.println("<li>"+"<input type='checkbox' class='checkboxc' name='checkbox' value='"+rs.getInt("id")+"'>"+"<span>"+rs.getInt("id")+"</span>"+". <span>"+rs.getString("main")+"</span>           答案："+"< "+"<span>"+rs.getString("answer")+"</span> >"+"</li></br>");
    		    out.println("<li><span>A. </span><span>"+rs.getString("A")+"</span></li></br>");
    		    out.println("<li><span>B. </span><span>"+rs.getString("B")+"</span></li></br>");
    		    out.println("<li><span>C. </span><span>"+rs.getString("C")+"</span></li></br>");
    		    out.println("<li><span>D. </span><span>"+rs.getString("D")+"</span></li></br>");
    		                             
    		    out.println("</ul>");
    			
    			
    		
  
       /*id++;
       choice= SubjectExp.export(id);*/
       }
    %>
    
</div>
					<%
						} else {
							out.println("<script language=javascript>");
							out.println("window.location.href='../ExamSystem/index.jsp';");
							out.println("</script>");
						}
					%>
			
				<br> <br>
				<div class="form-group ">
					<div class="uconfbtn">
						<input type="submit" class="btn btn-default reg-btn small-btn"
							value="删除题目"> <input type="reset"
							class="btn btn-default small-btn" id="conf-reset"> 
						<button type="button" onclick="location='teacher.jsp'"
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
