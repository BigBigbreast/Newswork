<%@page import="Entity.News"%>
<%@page import="com.sun.org.apache.regexp.internal.RE"%>
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
    
    <title>My JSP 'Newsinfo.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="css/DefaultSkin.css" tppabs="http://www.zgydhlw.cc/qn/images/DefaultSkin.css" rel="stylesheet" type="text/css"> 
  </head>
  
  <body>
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
  	<hr>
  	
  	<table width="1000" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="250" valign="top" class="biankuan_hui4 bg_bodytop"><table width="94%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="80" align="center" class="title_hei18"><s:property value="#session.newsinfo.newstitle"></s:property></td>
      </tr>
      <tr>
        <td height="5" align="center"><div class="xian_huixuheng"></div></td>
      </tr>
      <tr>
        <td height="30" align="center">作者：<s:property value="#session.newsinfo.newswriter"/>;&#160;文章来源：<s:property value="#session.newsinfo.newssource"/>&#160;&#160;&#160;&#160;点击数：<script src="../e/public/ViewClick/-classid=10&id=12&addclick=1" tppabs="http://www.zgydhlw.cc/e/public/ViewClick/?classid=10&id=12&addclick=1"></script>&#160;&#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<font color='#009999'>★★★★★</font></td>
      </tr>
      <tr>
        <td height="5"><div class="xian_huixuheng"></div></td>
      </tr>
      <tr>
        <td height="35"></td>
      </tr>
      <tr>
      	<td> <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:property value="#session.newsinfo.newsbody"/></h3> </td>
      </tr>
      <tr>
        <td height="40" align="right">文章录入：<s:property value="#session.newsinfo.newsissuer"/>&#160;&#160;&#160;&#160;责任编辑：<s:property value="#session.newsinfo.newsissuer"/>&#160;</td>
      </tr>
      <tr>
        <td height="40" align="right" valign="top">【<a href="#" target="_blank">发表评论</a>】【<a href="#" target="_blank">加入收藏</a>】【<a href="#" target="_blank">告诉好友</a>】【<a href="#" target="_blank">打印此文</a>】【<a href="javascript:window.close();">关闭窗口</a>】</td>
      </tr>
      <tr>
        <td height="2"><div class="xian_huixuheng"></div></td>
      </tr>
     
      <tr>
        <td height="2"><div class="xian_huixuheng"></div></td>
      </tr>
      <tr>
        <td height="20"></td>
      </tr>
    </table>
    <br>
       <div align="center">Copyright 2018 郑州大学大三实训 版权所有 </div>
    <p>&#160;</p></td>
  </tr>
</table>

  </body>
</html>
