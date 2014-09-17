<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
        <%

        int i;

        //初始化,用于保存Cookie中的用户名、密码

        String C_username="";

        String C_password="";

        //获取全部Cookie

        Cookie c[]=request.getCookies();

        for(i=0;i<c.length;i++)

        {

            //在Cookie中查找用户名、密码，如果找到，则分别将其赋值给用户名、密码变量

            if("username".equals(c[i].getName()))

                C_username=c[i].getValue();

            if("password".equals(c[i].getName()))

                C_password=c[i].getValue();

        }

        if(!"".equals(C_username) && !"".equals(C_password))

        {

            //Cookie中有用户名、密码,将用户名、密码提交到验证页面

            response.sendRedirect("check.jsp?username="+C_username+"&password="+C_password);

        }

        else

        {

        //Cookie中没有用户名、密码，跳转到登录页面

    %>

        <jsp:forward page="index.html" />

    <%

        }

    %>
  </body>
</html>
