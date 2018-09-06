<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'NewsBody.jsp' starting page</title>
    
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
  	<div>
  	<div align="left" style="padding-left:100px"><img src="image/news.jpg"></div>
    </div>
    <br>
    <a style="padding-left: 120px" href="index.jsp">首页</a><a style="padding-left: 10px" href="login.jsp">登录</a>
    <hr>
    <div style="height:500px;padding-left: 100px">
    	<div style="width:200px;height:450px;border:1px solid #000;float: left" >
					<br>
					<li><a href="CreateNews.jsp">创建新闻</a>
					<br>
					</div>
    	<div style="width:500px;height:450px;border:1px solid #000;float: left;padding-left:100px ">    
    	<h3 >您好， <%=request.getParameter("username") %>！欢迎进入新闻系统</h3>
    	</div>

    </div>
    <hr>
    <div align="center">Copyright 2018 郑州大学大三实训 版权所有 </div>
  </body>
</html>
