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
				}else{
					var name=username.val();
					var pass=userpass.val();
					$.ajax({
					type:"post",
					url:"/Newswork/login.action",
					async:true,
					data:{
						"username":name,
						"userpass":pass
					},
					success:function(result){
						var user=$.parseJSON(result);
						if(user==null){
							alert("Incorrect user name and password input");
							url = "login.jsp";
							window.location.href=url;			
						}else{
							alert("Login successfully");
							url = "NewsBody.jsp?username="+user.username;
							window.location.href=url;
						}
					}
				})
				}				
			});
			
			
			
		});
		
	</script>
  </head>
  
  <body>
    	<div align="center" style="width: 100%;height: 100%;">
    		<div align="center" style="padding-top: 100px">
    			<h1>Welcome to News management System!</h1>
    			<form id="form" action="" style="padding-top: 50px" method="post">
    				<font>Username:&nbsp;</font><input type="text" name="username" id="username"/><div ><span id="uname" style="color: red;padding-right: 5px;" ></span></div>
    				<font >Password:&nbsp;</font><input type="password" name="userpass" id="password"/><div ><span id="upass" style="color: red;padding-right: 5px"></span></div>
    				<br>
    				<input type="submit" id="btn" value="Sign in"><br>
    				<a href="Register.jsp">Create an account</a>
    			</form>
    		</div>
    	</div>
  </body>
</html>
