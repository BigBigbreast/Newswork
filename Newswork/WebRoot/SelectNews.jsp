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
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/DefaultSkin.css" tppabs="http://www.zgydhlw.cc/qn/images/DefaultSkin.css" rel="stylesheet" type="text/css"> 
	<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
	<script type="text/javascript">
		function validate()
        {
            var page = document.getElementsByName("page")[0].value;
                
            if(page > "<s:property value='%{#request.pageBean.totalPage}'/>")
            {
                alert("你输入的页数大于最大页数，页面将跳转到首页！");
                
                window.document.location.href = "selectnews.action";                
                return false;
            }           
            return true;
        }    
		$(function(){
			
			var searchbutton=$("#searchbutton");
			searchbutton.click(function(){
				var searchinput=$("#searchinput").val();
				if(searchinput==""){
					alert("输入的关键字不能为空");
				}else{
					window.location.href="selectnews?key="+encodeURI(encodeURI(searchinput))+""
				}
			})
		
		})	
	</script>
  </head>
  
  <body style="width: 960px;
    font-size: 14px;
    font-family: 宋体;
    margin: 3px auto;
    background-repeat: repeat;
    background-position: left top;
    display: block;
    ">
  	<div align="left"><img src="image/zzunews.png"></div>	
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
    <tr>
      <td height="8"></td>
    </tr>
  	</tbody>
	</table>
    <hr>
    <table border="0" cellspacing="0" cellpadding="0" width="200px" align="left">
    	<tr>
    	<td height="36" background="image/title-bg1.gif" tppabs="http://www.zgydhlw.cc/qn/images/menu_bg0.gif">
    	<div id="lyzqcdh">
    	<a  class="Channel2"   tppabs="http://www.zgydhlw.cc/jigou/" href="index.jsp">首页</a>
    	<a class="Channel2" tppabs="http://www.zgydhlw.cc/jigou/" href="login.jsp">登录</a>
    	</div>
    	</td>
    	</tr>	
    	</table>
    	<input id="searchinput" style="margin-left:500px;; margin-top:2px;height: 30px;width:200px;" placeholder="请输入关键词..." >
    	<input id="searchbutton" style="float:right;margin-top:2px;height:30px;background-color:#D2B48C" type="button" value="搜索">
    <br><br><br>
    
    
    <div style="height:auto;">
    	<table border="0" cellspacing="1" cellpadding="0" width="960px" >
          <tbody>
          <tr>
          <td valign="top" width="300">
          <table border="0" cellspacing="1" cellpadding="0" width="100%" bgcolor="#FCC8BC">
          <tbody><tr>
            <td class="title-bg2" height="26">
              <table border="0" cellspacing="0" cellpadding="0" width="100%">
                <tbody><tr>
                  <td width="30%" height="25px" background="image/lmbjcenter.jpg"><span class="qingchunzhongxueA_tabletitle2" >国际新闻</span></td>
                  <td width="70%" align="right"><a  tppabs="http://www.zgydhlw.cc/dongtai/zhoubian"><img border="0" src="image/more011.gif" tppabs="http://www.zgydhlw.cc/qn/images/more011.gif" width="36" height="17"></a></td>
                </tr>
              </tbody></table>
            </td>
          </tr>
          <tr>
            <td bgcolor="#abdce6"  >
              <table border="0" cellspacing="0" cellpadding="4" width="100%" height="250" >
                <tbody><tr>
                  <td>
                  <table width="100%" cellpadding="0" cellspacing="0"><tbody>
                  	<s:iterator value="#session.selectnews1" var="book">
					<tr><td width="10" valign="top" class="bbb"><img src="image/Article_common.gif" tppabs="http://www.zgydhlw.cc/qn/images/Article_common.gif"></td><td class="bbb"><a class="aaa" href="newsinfo.action?newsid=<s:property value="#book.id"/>"/><s:property value="#book.newstitle" /></a></td></tr>
					</s:iterator>
                  <tr></tr></tbody></table></td>
                </tr>
              </tbody></table>
            </td>
          </tr>
        </tbody></table>
      </td>
      <td width="8">&#160;</td>
      
      <td valign="top" width="300">
          <table border="0" cellspacing="1" cellpadding="0" width="100%" bgcolor="#FCC8BC">
          <tbody><tr>
            <td class="title-bg2" height="26">
              <table border="0" cellspacing="0" cellpadding="0" width="100%">
                <tbody><tr>
                  <td width="30%" height="25px" background="image/lmbjcenter.jpg"><span class="qingchunzhongxueA_tabletitle2" >体育新闻</span></td>
                  <td width="70%" align="right"><a  tppabs="http://www.zgydhlw.cc/dongtai/zhoubian"><img border="0" src="image/more011.gif" tppabs="http://www.zgydhlw.cc/qn/images/more011.gif" width="36" height="17"></a></td>
                </tr>
              </tbody></table>
            </td>
          </tr>
          <tr>
            <td bgcolor="#abdce6" >
              <table border="0" cellspacing="0" cellpadding="4" width="100%" height="250" >
                <tbody><tr>
                  <td>
                  <table width="100%" cellpadding="0" cellspacing="0"><tbody>
                  	<s:iterator value="#session.selectnews2" id="book">
				   	  <tr><td width="10" valign="top" class="bbb"><img src="image/Article_common.gif"
				   	   tppabs="http://www.zgydhlw.cc/qn/images/Article_common.gif"></td><td class="bbb"><a class="aaa" href="newsinfo.action?newsid=<s:property value="#book.id"/>" tppabs="http://www.zgydhlw.cc/dongtai/zhoubian/129.html" target="_self">
				   	    <s:property value="#book.newstitle" /></a></td></tr>
					</s:iterator>
                  <tr></tr></tbody></table></td>
                </tr>
              </tbody></table>
            </td>
          </tr>
        </tbody></table>
      </td>
      <td width="8">&#160;</td>
      
      <td valign="top" width="300">
          <table border="0" cellspacing="1" cellpadding="0" width="100%" bgcolor="#FCC8BC">
          <tbody><tr>
            <td class="title-bg2" height="26">
              <table border="0" cellspacing="0" cellpadding="0" width="100%">
                <tbody><tr>
                  <td width="30%" height="25px" background="image/lmbjcenter.jpg"><span class="qingchunzhongxueA_tabletitle2" >娱乐新闻</span></td>
                  <td width="70%" align="right"><a  tppabs="http://www.zgydhlw.cc/dongtai/zhoubian"><img border="0" src="image/more011.gif" tppabs="http://www.zgydhlw.cc/qn/images/more011.gif" width="36" height="17"></a></td>
                </tr>
              </tbody></table>
            </td>
          </tr>
          <tr>
            <td bgcolor="#abdce6" >
              <table border="0" cellspacing="0" cellpadding="4" width="100%" height="250" >
                <tbody><tr>
                  <td>
                  <table width="100%" cellpadding="0" cellspacing="0"><tbody>
                  	<s:iterator value="#session.selectnews3" var="book">
				    <tr><td width="10" valign="top" class="bbb"><img src="image/Article_common.gif" tppabs="http://www.zgydhlw.cc/qn/images/Article_common.gif"></td><td class="bbb"><a class="aaa" href="newsinfo.action?newsid=<s:property value="#book.id"/>" tppabs="http://www.zgydhlw.cc/dongtai/zhoubian/129.html" target="_self">
				    <s:property value="#book.newstitle" /></a></td></tr>
					</s:iterator>
                  <tr></tr></tbody></table></td>
                </tr>
              </tbody></table>
            </td>
          </tr>
        </tbody></table>
      </td>
      <td width="8">&#160;</td>
      
           	<tr>
        </tbody></table>
    </div>
   	 <hr>
    <div>
    	<center>
						<font size="4">当前<font color="red">
						<s:property value="#request.pageBean.currentPage" /></font>页
						</font>&nbsp;&nbsp; <font size="4">共<font color="red"><s:property
									value="#request.pageBean.totalPage" /></font>页
						</font>&nbsp;&nbsp; <font size="4">共<font color="red"><s:property
									value="#request.pageBean.allRows" /></font>条记录
						</font><br> <br>

						<s:if test="#request.pageBean.currentPage == 1">
            首页&nbsp;&nbsp;&nbsp;上一页
        </s:if>

						<s:else>
							<a href="shownews.action?page=1&key=<s:property value="#session.selectkey"/>">首页</a>
            &nbsp;&nbsp;&nbsp;
            
							<a	href="shownews.action?page=<s:property value="#request.pageBean.currentPage - 1"/>&key=<s:property value="#session.selectkey"/>">上一页</a>
						</s:else>

						<s:if
							test="#request.pageBean.currentPage != #request.pageBean.totalPage">
							
							<a	href="shownews.action?page=<s:property value="#request.pageBean.currentPage + 1"/>&key=<s:property value="#session.selectkey"/>">下一页</a>
            &nbsp;&nbsp;&nbsp;
            
							<a	href="shownews.action?page=<s:property value="#request.pageBean.totalPage"/>&key=<s:property value="#session.selectkey"/>">尾页</a>
						</s:if>
						<s:else>
            下一页&nbsp;&nbsp;&nbsp;尾页
        </s:else>
					</center>
					<br>
					<center>
						<form action="selectnews" onsubmit="return validate();">
							<font size="4">跳转至</font> <input type="text" size="2" name="page">页
							<input type="submit" value="跳转">
						</form>
					</center>
    <div align="center">Copyright 2018 郑州大学大三实训 版权所有 </div>
    </div>
    <br>
  </body>
</html>
