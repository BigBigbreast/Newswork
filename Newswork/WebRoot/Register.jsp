<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Register.jsp' starting page</title>
    <link href="css/DefaultSkin.css" tppabs="http://www.zgydhlw.cc/qn/images/DefaultSkin.css" rel="stylesheet" type="text/css"> 
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
	<script type="text/javascript">
		$(function(){
			var username=$("#username");
			var userpass=$("#password");
			var userpass2=$("#password2");
			var bool=false;
			username.blur(function(){
				var textname=username.val();
				var uname=$("#uname");
				if(textname==""){
					uname.text("Please input your username");
				}else if(!bool){
					uname.text("");
					$.ajax({
					type:"post",
					url:"/Newswork/checkname.action",
					async:true,
					data:{
						"username":textname
					},
					success:function(result){
						if(result==null){
							$("#uname").css("color","green").text("This user name is available");											
						}else{
							$("#uname").css("color","red").text("This user name is not available");
						}
					}
				})
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
			userpass2.blur(function(){
				var textpass2=userpass2.val();
				var textpass1=userpass.val();
				var upass2=$("#upass2");
				if(textpass2==""){
					upass2.text("Please input your password");
				}else if(textpass2!=textpass1){
					upass2.text("The password input is inconsistent");
				}else{
					upass2.text("");
				}
			});
			
			var btn=$("#btn");
			btn.click(function(){
				if((username.val()=="")||(userpass.val()=="")||(userpass2.val()=="")){
					alert("Sorry please input you info completely");
					return false;
				}else if(userpass2.val()!==userpass.val()){
					alert("The password input is inconsistent, Please check again");
					return false;
				}else if(!bool){
					alert("This user name is not available");
					return false;
				}
				return true;
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
    <div align="center" style="width: 100%;height: 100%;">
    		<div align="Left" style="padding-top: 100px;padding-left: 320px">
    			<h1 >Create an account!Right now!</h1>
    			<form id="form" action="register" style="padding-top: 20px" method="post">
    				<div style="text-align: left">
    				Please input your username:&nbsp;&nbsp;<input type="text" name="username" id="username"/><span id="uname" style="color: red;padding-right: 5px;" ></span><br>
    				Please input you password:&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="userpass" id="password"/><span id="upass" style="color: red;padding-right: 5px"></span><br>
    				Please input you password again:&nbsp;<input type="password" id="password2"/><span id="upass2" style="color: red;padding-right: 5px"></span>
    				<br>
    				</div>
    				
    				
    				<div style="padding-left: 100px;padding-top: 20px">
    				<input type="submit" id="btn" value="Commit"><br>
    				</div>
    			</form>
    		</div>
   	 </div>
   	
  </body>
</html>
