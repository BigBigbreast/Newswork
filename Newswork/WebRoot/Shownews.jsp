<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
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
		<script type="text/javascript" src="js/jquery-1.8.3.js" ></script>
        <script type="text/javascript" src="My97DatePicker/WdatePicker.js" ></script>
        <script type="text/javascript">
			$(function(){
				var bool=true; 
				$('#date').click(WdatePicker);
				var newstitle=$("#newstitle");
				newstitle.blur(function(){
				var texttitle=newstitle.val();
				var title=$("#title");
				if(texttitle==""){
					title.text("标题不能为空");
				}else{
					bool=false;
					title.text("");
				}
				});
				
				var newsbody=$("#newsbody");
				newsbody.blur(function(){
				var textbody=newsbody.val();
				var nbody=$("#nbody");
				if(textbody==""){
					nbody.text("内容不能为空");
				}else{
					bool=false;
					nbody.text("");
				}
				});
				
				$("#btn").click(function(){
					if(newstitle.val()==""||newsbody.val()==""){
						alert("请填写新闻的标题或内容")
						return false;
					}
					return true;
				})
			})
        </script>
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
					<li><a href="">创建新闻</a>
					<br>
					</div>
    	<div style="width:500px;height:450px;border:1px solid #000;float: left;padding-left:100px ">    
    		
    		<form action="insertnews" method="post">
    			<br>
    			<font>编  &nbsp; &nbsp;  &nbsp; &nbsp;号:   &nbsp; &nbsp;</font><s:property value="#session.news.newsid" />
    			<br>
    			<br>
    			<font>标 &nbsp; &nbsp;  &nbsp; &nbsp;题:   &nbsp; &nbsp;</font><s:property value="#session.news.newstitle" />
    			<br>
    			<br>
    			<font>类 &nbsp; &nbsp;  &nbsp; &nbsp;型:   &nbsp; &nbsp;</font><s:property value="#session.news.newstype" />
    			<br>
    			<br>
    			<font>来  &nbsp; &nbsp; &nbsp; &nbsp;源:   &nbsp; &nbsp;</font><s:property value="#session.news.newssource" />
    			<br>
    			<br>
    			<font>作  &nbsp; &nbsp; &nbsp; &nbsp;者:   &nbsp; &nbsp;</font><s:property value="#session.news.newswriter" />
    			<br>
    			<br>
    			<font>发  &nbsp;布  &nbsp;人:   &nbsp; &nbsp;</font><s:property value="#session.news.newsissuer" />
    			<br>
    			<br>
    			<font>发布时间:&nbsp; &nbsp;&nbsp;</font><s:property value="#session.news.newsdate" />
    			<br>
    			<br>
    			<font>关  &nbsp; 键 &nbsp;字:   &nbsp;  </font><s:property value="#session.news.newskeys" />
    			<br>
    			<br>
    			<font>内 &nbsp; &nbsp;  &nbsp; &nbsp;容:   &nbsp; &nbsp;</font><s:property value="#session.news.newsbody" />
    			<br>
    			<br>
    			<font>点击次数:&nbsp; &nbsp;&nbsp;</font><s:property value="#session.news.newsclick" />
    			<br>
    			<br>
    			<font>审核状态:&nbsp; &nbsp;&nbsp;</font><s:property value="#session.news.newsstate" />
    			<br>
    			<br>
    			<font>删除状态:&nbsp; &nbsp;&nbsp;</font><s:property value="#session.news.newsdeletestate" />
    		</form>
    	</div>

    </div>
    <hr>
    <div align="center">Copyright 2018 郑州大学大三实训 版权所有 </div>
  </body>
</html>
