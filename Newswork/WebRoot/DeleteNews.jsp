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
    
    <title>My JSP 'CheckNews.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="application/javascript" src="../js/bootstrap.min.js"></script>
	<script src="../js/ie-emulation-modes-warning.js"></script>
	<script src="../js/ie10-viewport-bug-workaround.js"></script>
	<link href="css/DefaultSkin.css" tppabs="http://www.zgydhlw.cc/qn/images/DefaultSkin.css" rel="stylesheet" type="text/css"> 
  	<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
	<script type="text/javascript">
		 function validate()
        {
            var page = document.getElementsByName("page")[0].value;
                
            if(page > "<s:property value='%{#request.pageBean.totalPage}'/>")
            {
                alert("你输入的页数大于最大页数，页面将跳转到首页！");
                
                window.document.location.href = "showneedchecknews.action";                
                return false;
            }           
            return true;
        } 
        
        var ret = window.confirm("您确定要删除该条新闻吗?");
		//当点击确定时 返回 true 
		if(ret){
   		 //do something 点确定
		}else{
    	//do otherthing 点取消
		}   
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
                
                  <td width="30%" height="25px" background="image/lmbjcenter.jpg"><a href="showneedchecknews.action"><span class="qingchunzhongxueA_tabletitle2" >审核新闻</span></a></td>
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
           		<div style="width:700px;height:450px;border:1px solid #000;float: left;padding-left: 50px ">    
    			<h2 class="sub-header">删除新闻</h2>
    			<div class="table-responsive">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>编号：</th>
								<th>标题：</th>
								<th>类型：</th>
								<th>来源：</th>
								<th>发布人：</th>
								<th>审核状态：</th>
								<th>操作：</th>
							</tr>
							<s:iterator value="#session.needchecknews" var="news">
								<tr>
									<td><br><s:property value="#news.newsid" /></td>
									<td width="50px">
									<br>
									<div style="width:100%;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;">
									<s:property value="#news.newstitle" />
									</div>
									</td>
									<td><br><s:property value="#news.newstype" /></td>
									<td><br><s:property value="#news.newssource" /></td>
									<td><br><s:property value="#news.newsissuer" /></td>
									<td><br><s:property value="#news.newsstate" /></td>
									<td>
									<br><a
										href="shouchecknewsinfo.action?newsid=<s:property value="#news.id"/>">删除</a></td>
									<td>
									<br><a
										href="newsinfo.action?newsid=<s:property value="#news.id"/>">查看</a></td>
								</tr>
							</s:iterator>
						</thead>
					</table>
				</div>
    			</div>
           		</td>
          </tbody>
          </table>
          </tbody>
          </table>

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

						<s:if test="#request.pageBean.currentPage == 0||#request.pageBean.currentPage == 1">
            首页&nbsp;&nbsp;&nbsp;上一页
        </s:if>

						<s:else>
							<a href="showneedchecknews.action?page=1">首页</a>
            &nbsp;&nbsp;&nbsp;
            
							<a	href="showneedchecknews.action?page=<s:property value="#request.pageBean.currentPage - 1"/>">上一页</a>
						</s:else>

						<s:if
							test="#request.pageBean.currentPage != #request.pageBean.totalPage">
							
							<a	href="showneedchecknews.action?page=<s:property value="#request.pageBean.currentPage + 1"/>">下一页</a>
            &nbsp;&nbsp;&nbsp;
            
							<a	href="showneedchecknews.action?page=<s:property value="#request.pageBean.totalPage"/>">尾页</a>
						</s:if>
						<s:else>
            下一页&nbsp;&nbsp;&nbsp;尾页
        </s:else>
					</center>
					<br>
					<center>
						<form action="showneedchecknews" onsubmit="return validate();">
							<font size="4">跳转至</font> <input type="text" size="2" name="page">页
							<input type="submit" value="跳转">
						</form>
					</center>
    <div align="center">Copyright 2018 郑州大学大三实训 版权所有 </div>
    </div>
  </body>
</html>
