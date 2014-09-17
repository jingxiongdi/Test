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

				<div id="remainSeconds" style="display:none"></div> 
<div id="remainTime" style="font-size:20px;font-weight:bold;color:#0088c0; line-heigh:40px; margin-top:10px;"></div> 

			</div>
		</div>

	</div>
	<div class="content">
	<h3 class="end-exam-h3 test-begin">考试</h3>
		
		<div class="reg-form-div">
		<form class="form-horizontal" id="examform" role="form10" action="checkpaper.jsp">
				
					<%
		Connection conn = ConnectionManager.getConnection();
		String sql = "select * from subject ";
		PreparedStatement psm = null;
							ResultSet rs = null;

							psm = conn.prepareStatement(sql);
							rs = psm.executeQuery();
        while(rs.next()){ 
   
    
               
    			out.println("<ul class='paper-scan cho-ul'><li>"+rs.getInt("id")+".  "+rs.getString("main")+"</li></br>");
    		    out.println("<li><input class='cho' type='checkbox' name='choose' value='"+rs.getString("A")+"'>"+"<span>A</span>. <span>"+rs.getString("A")+"</span></li></br>");
    		    out.println("<li><input class='cho' type='checkbox' name='choose' value='"+rs.getString("B")+"'>"+"<span>B</span>. <span>"+rs.getString("B")+"</span></li></br>");
    		    out.println("<li><input class='cho' type='checkbox' name='choose' value='"+rs.getString("C")+"'>"+"<span>C</span>. <span>"+rs.getString("C")+"</span></li></br>");
    		    out.println("<li><input class='cho' type='checkbox' name='choose' value='"+rs.getString("D")+"'>"+"<span>D</span>. <span>"+rs.getString("D")+"</span></li></br>");
				out.println("<li class='text-answer'><input  class='form-control answer-input' type='text' value='' id='choice_" + rs.getInt("id") + "' name='choice_" + rs.getInt("id")+"' size='1'/></li>");
    			out.println("</ul><br><hr>");
    			
    			
    		
  
       
       }
    %>
    
				
					<%
						} else {
							out.println("<script language=javascript>");
							out.println("alert('非法动作，请先登陆！');");
							out.println("window.location.href='../ExamSystem/index.jsp';");
							out.println("</script>");
						}
					%>
			
				<br> <br>
				
					<div class="uconfbtn">
						<div class="fix-menu">
						<input type="submit" class="btn btn-default reg-btn small-btn"
							value="提交"> <input type="reset"
							class="btn btn-default small-btn" id="conf-reset"> 
						<button type="button" onclick="location='userinfo.jsp'"
							class="btn btn-default user_btn btn-back">返回</button>
							</div>
					</div>
				
			</form>
		</div>
		<div style="clear:both;"></div>
	</div>
	
<div id="fullbg"></div> 
<div id="dialog"> 
<p class="close"><a href="#" onclick="closeBg();">关闭</a></p> 
<div>正在加载，请稍后....</div> 
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
