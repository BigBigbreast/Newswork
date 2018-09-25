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
<link href="css/DefaultSkin.css" tppabs="http://www.zgydhlw.cc/qn/images/DefaultSkin.css" rel="stylesheet" type="text/css"> 
  
  
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
  	<hr>
  	<table border="0" cellspacing="0" cellpadding="0" width="200px" align="left">
    	<tr><td height="36" background="image/title-bg1.gif" tppabs="http://www.zgydhlw.cc/qn/images/menu_bg0.gif"><div id="lyzqcdh">
    	<a  class="Channel2"   tppabs="http://www.zgydhlw.cc/jigou/" href="index.jsp">首页</a>
    	</tr>
    </table>
    <br><br><br>
    
    <table border="0" cellspacing="1" cellpadding="0" width="960px">
          <tbody>
          <tr>
          <td valign="top" width="200">
          <table border="0" cellspacing="1" cellpadding="0" width="25%" bgcolor="#FCC8BC">
          <tbody>
          <tr>
            <td bgcolor="#abdce6"  width="200">
              <table border="0" cellspacing="0" cellpadding="4" width="200" height="400" >
                <tbody>
                <tr>
                  <td>
                  <table width="200" cellpadding="0" cellspacing="0"><tbody>
          
          <tr>
            <td class="title-bg2" height="26">
              <table border="0" cellspacing="0" cellpadding="0" width="100%">
                <tbody>
                <tr>
                  <td width="30%" height="25px" background="image/lmbjcenter.jpg"><a href="CreateNews.jsp"><span class="qingchunzhongxueA_tabletitle2" >创建新闻</span></a></td>
                </tr>
                </tbody>
              	</table>
              	<br>
              	<table border="0" cellspacing="0" cellpadding="0" width="100%">
                <tbody>
                <tr >
                  <td width="30%" height="25px" background="image/lmbjcenter.jpg"><a href="CreateNews.jsp"><span class="qingchunzhongxueA_tabletitle2" >审核新闻</span></a></td>
                </tr>
                </tbody>
              	</table>
              	<br>
                <table border="0" cellspacing="0" cellpadding="0" width="100%">
                <tbody>
                <tr >
                  <td width="30%" height="25px" background="image/lmbjcenter.jpg"><a href="CreateNews.jsp"><span class="qingchunzhongxueA_tabletitle2" >审核新闻</span></a></td>
                </tr>
                </tbody>
              	</table>
              	<br>
              	<table border="0" cellspacing="0" cellpadding="0" width="100%">
                <tbody>
                <tr >
                  <td width="30%" height="25px" background="image/lmbjcenter.jpg"><a href="CreateNews.jsp"><span class="qingchunzhongxueA_tabletitle2" >删除新闻</span></a></td>
                </tr>
                </tbody>
              	</table>
              	<br>
              
            </td>
          </tr>
                   
                  </tbody></table></td>
                </tr>
              </tbody></table>
            </td>
            <td width="8">&#160;</td>
           		<td>
           		<div style="width:650px;height:450px;border:1px solid #000;float: left;padding-left:100px ">    
    			<h3 >您好， <%=request.getParameter("username") %>！欢迎进入新闻系统</h3>
    	</div>
           		</td>
          </tbody>
          </table>
          </tbody>
          </table>

    <hr>
    <div align="center">Copyright 2018 郑州大学大三实训 版权所有 </div>
  </body>
</html>
