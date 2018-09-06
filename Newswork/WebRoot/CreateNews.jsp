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
    	<div style="width:200px;height:400px;border:1px solid #000;float: left" >
					<br>
					<li><a href="">创建新闻</a>
					<br>
					</div>
    	<div style="width:500px;height:400px;border:1px solid #000;float: left;padding-left:100px ">    
    		<form>
    			<br>
    			<font>编  &nbsp; &nbsp;  &nbsp; &nbsp;号:   &nbsp; &nbsp;</font><input type="text" name="newsid" style="width: 150px">
    			<br>
    			<br>
    			<font>标 &nbsp; &nbsp;  &nbsp; &nbsp;题:   &nbsp; &nbsp;</font><input type="text" name="newstitle" style="width: 150px">	
    			<br>
    			<br>
    			<font>类 &nbsp; &nbsp;  &nbsp; &nbsp;型:   &nbsp; &nbsp;</font>
    			<select style="width: 150px">
    				<option value="国际新闻">国际新闻</option>
    				<option value="体育新闻">体育新闻</option>
    				<option value="娱乐新闻">娱乐新闻</option>
    			</select>	
    			<br>
    			<br>
    			<font>来  &nbsp; &nbsp; &nbsp; &nbsp;源:   &nbsp; &nbsp;</font><input type="text" name="newssource" style="width: 150px">
    			<br>
    			<br>
    			<font>发  &nbsp;布  &nbsp;人:   &nbsp; &nbsp;</font><input type="text" name="newsid" style="width: 150px">
    			<br>
    			<br>
    			<font>发布时间:&nbsp; &nbsp;&nbsp;</font><input type="text" name="newsid" style="width: 150px">
    			<br>
    			<br>
    			<font>关  &nbsp; 键 &nbsp;字:   &nbsp;  </font><input type="text" name="newsid" style="width: 150px">	
    			<br>
    			<br>
    			<font>内 &nbsp; &nbsp;  &nbsp; &nbsp;容:   &nbsp; &nbsp;</font><textarea name="a" style="width:150px;height:50px;"></textarea>
    			<br><br>
    			<input type="button" value="预览">&nbsp;&nbsp;<input type="reset" value="重置">
    		</form>
    	</div>

    </div>
    <hr>
    <div align="center">Copyright 2018 郑州大学大三实训 版权所有 </div>
  </body>
</html>
