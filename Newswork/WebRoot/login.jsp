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
	<link href="css/DefaultSkin.css" tppabs="http://www.zgydhlw.cc/qn/images/DefaultSkin.css" rel="stylesheet" type="text/css"> 
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
					data:{
						"username":name,
						"userpass":pass
					},
					success:function(result){
						var user=$.parseJSON(result);
						if(user==null){
							alert("Incorrect user name and password input");
							url = "login.jsp";
							window.open(url);		
						}else{
							alert("Login successfully");
							url = "NewsBody.jsp?username="+user.username;
							window.open(url);
						}
					}
				})
				}				
			});
	
		});
		
	</script>
  </head>
  
  <body
  style="width: 960px;
    font-size: 14px;
    font-family: 宋体;
    margin: 3px auto;
    background-repeat: repeat;
    background-position: left top;
    display: block;>
  	<div align="center" ><img src="image/zzunews.png"></div>	
  	<table border="0" cellspacing="0" cellpadding="0" width="960px" align="center">
  	<tbody>
    <tr>
      <td height="36" background="image/menu_bg0.gif" tppabs="http://www.zgydhlw.cc/qn/images/menu_bg0.gif"><div id="lyzqcdh"> 
      &nbsp;&nbsp;<a class="Channel2" href="" tppabs="http://www.zgydhlw.cc/">网站首页</a> 
      &nbsp;<a class="Channel2" href="" tppabs="http://www.zgydhlw.cc/jigou/">机构概况</a> 
      &nbsp;<a class="Channel2" href="" tppabs="http://www.zgydhlw.cc/dongtai/">行业动态</a> 
      &nbsp;<a class="Channel2" href="" tppabs="http://www.zgydhlw.cc/jiaoliu/">对外交流</a> 
      &nbsp;<a class="Channel2" href="" tppabs="http://www.zgydhlw.cc/news/">新闻资讯</a> 
      &nbsp;<a class="Channel2" href="" tppabs="http://www.zgydhlw.cc/fagui/">政策法规</a> 
      &nbsp;<a class="Channel2" href="" tppabs="http://www.zgydhlw.cc/anquan/">安全中心</a> 
      &nbsp;<a class="Channel2" href="" tppabs="http://www.zgydhlw.cc/keyan/">科技研究</a> 
      &nbsp;<a class="Channel2" href="" tppabs="http://www.zgydhlw.cc/huodong/">活动中心</a> 
      &nbsp;<a class="Channel2" href="" tppabs="http://www.zgydhlw.cc/search/">证书查询</a>  
      </div></td>
    </tr>
    </tbody>
    </table>
    <br>	
    			<div align="center" style="padding-top: 100px">
    			<h1 style="align:center">Welcome to News management System!</h1>
    			</div>
    			<div align="left" style="width: 100%;height: 100%;">
    			<form id="form" action="" style="padding-top: 50px" method="post">
    				<div style="float:left;padding-left: 380px">
    				Username:&nbsp;&nbsp;&nbsp; <input type="text" name="username" width="150px" id="username"/><span id="uname" style="color: red;padding-right: 5px;width: 150" ></span><br>
    				Userpass:&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="userpass" width="150" id="password"/><span id="upass" style="color: red;padding-right: 5px;width:150;"></span><br>
    				<br>
    				</div>
    				<br><br><br><br>
    				<div align="center">
    				<input type="button" id="btn" value="Sign in"><br>
    				<a href="Register.jsp">Create an account</a>
    				</div>
    			</form>
    		</div>
  </body>
</html>
