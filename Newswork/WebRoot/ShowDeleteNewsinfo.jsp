<%@page import="Entity.News"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
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
				var btn1=$("#btn1");
				var id='<s:property value="#session.news.id"/>'
				btn1.click(function(){
					var ret = window.confirm("您确定要删除该条新闻吗?");
					//当点击确定时 返回 true 
					if(ret){
			   		 //alert(id);
			   		 
			   		 window.location("deletenews?id="+id)
					}else{
			    	//do otherthing 点取消
					} 
					});
							
					})
        </script>
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
    <table border="0" cellspacing="1" cellpadding="0" width="960px" >
          <tbody>
          <tr>
          <td valign="top" width="300">
          <table border="0" cellspacing="1" cellpadding="0" width="25%" bgcolor="#FCC8BC">
          <tbody>
          <tr>
            <td bgcolor="#abdce6"  width="200">
              <table border="0" cellspacing="0" cellpadding="4" width="200" height="400" >
                <tbody><tr>
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
                
                  <td width="30%" height="25px" background="image/lmbjcenter.jpg"><a href="CheckNews.jsp"><span class="qingchunzhongxueA_tabletitle2" >审核新闻</span></a></td>
                </tr>
                </tbody>
              	</table>
              	<br>
                <table border="0" cellspacing="0" cellpadding="0" width="100%">
                <tbody>
                <tr >
                  <td width="30%" height="25px" background="image/lmbjcenter.jpg"><a href="EditNews.jsp"><span class="qingchunzhongxueA_tabletitle2" >编辑新闻</span></a></td>
                </tr>
                </tbody>
              	</table>
              	<br>
              	<table border="0" cellspacing="0" cellpadding="0" width="100%">
                <tbody>
                <tr >
                  <td width="30%" height="25px" background="image/lmbjcenter.jpg"><a href="DeleteNews.jsp"><span class="qingchunzhongxueA_tabletitle2" >删除新闻</span></a></td>
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
           		<div style="height:500px;">
    	
    	<div style="width:650px;height:auto;float: left;padding-left:100px ">    
    		
    		<form method="post">
    			<br>
    			<font>编  &nbsp; &nbsp;  &nbsp; &nbsp;号:   &nbsp; &nbsp;</font><s:property value="#session.news.newsid"/>
    			<br>
    			<br>
    			<font>标 &nbsp; &nbsp;  &nbsp; &nbsp;题:   &nbsp; &nbsp;</font><s:property value="#session.news.newstitle"/>
    			<span id="title" style="color: red"></span>	
    			<br>
    			<br>
    			<font>类 &nbsp; &nbsp;  &nbsp; &nbsp;型:   &nbsp; &nbsp;</font>
    			<s:property value="#session.news.newstype"/>	
    			<br>
    			<br>
    			<font>来  &nbsp; &nbsp; &nbsp; &nbsp;源:   &nbsp; &nbsp;</font><s:property value="#session.news.newssource"/>
    			<br>
    			<br>
    			<font>作  &nbsp; &nbsp; &nbsp; &nbsp;者:   &nbsp; &nbsp;</font><s:property value="#session.news.newswriter"/>
    			<br>
    			<br>
    			<font>发  &nbsp;布  &nbsp;人:   &nbsp; &nbsp;</font><s:property value="#session.news.newsissuer"/>
    			<br>
    			<br>
    			<font>发布时间:&nbsp; &nbsp;&nbsp;</font><s:property value="#session.news.newsdate"/>
    			<br>
    			<br>
    			<font>关  &nbsp; 键 &nbsp;字:   &nbsp;  </font><s:property value="#session.news.newskeys"/>
    			<br>
    			<br>
    			<font>内 &nbsp; &nbsp;  &nbsp; &nbsp;容:   &nbsp; &nbsp;</font>
    			<textarea name="newsbody" id="newsbody" style="width:350px;height:60px;">
    				<s:property value="#session.news.newsbody"/>
				</textarea>
    			<br>
    			<br>
    			<font>点击次数:&nbsp; &nbsp;&nbsp;</font><s:property value="#session.news.newsclick"/>
    			<br>
    			<br>
    			<font>审核状态:&nbsp; &nbsp;&nbsp;</font><s:property value="#session.news.newsstate"/>
    			<br>
    			<br>
    			<font>删除状态:&nbsp; &nbsp;&nbsp;</font><s:property value="#session.news.newsdeletestate"/>
    			<br><br>
    			<input type="button" id="btn1" value="删除">&nbsp;&nbsp;
    		</form>
    	</div>

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
