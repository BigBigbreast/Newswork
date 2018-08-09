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
	
	<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
	<script type="text/javascript">
	
		$(function(){
			var username=$("#username");
			var userpass=$("#password");
			username.blur(function(){
				var textname=username.val();
				var uname=$("#uname");
				if(textname==""){
					uname.text("Please input your username");
				}else{
					uname.text("");
				}
			});
			userpass.blur(function(){
				var textpass=userpass.val();
				var upass=$("#upass");
				if(textpass==""){
					upass.text("Please input your password");
				}else{
					upass.text("");
				}
			});
			
			var btn=$("#btn");
			btn.click(function(){
				if((username.val()=="")||(userpass.val()=="")){
					alert("Sorry please input you info");
					return false;
				}
				return true;
			});
			
			
			
		});
		
	</script>
  </head>
  
  <body>
    	<div align="center" style="width: 100%;height: 100%;">
    		<div align="left" style="padding-top: 100px">
    			<h1>Welcome to News management System!</h1>
    			<form id="form" action="" style="padding-top: 50px" method="post">
    				<font>Username:&nbsp;</font><input type="text" id="username"><span id="uname" style="color: red"></span><br>
    				<font >Password:&nbsp;</font><input type="password" id="password"><span id="upass" style="color: red"></span><br>
    				<br>
    				<input type="submit" id="btn" value="Submit">
    			</form>
    		</div>
    	</div>
  </body>
</html>
