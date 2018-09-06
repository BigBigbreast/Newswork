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
	
	<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
	<script type="text/javascript">
			var exp='<%=(String)request.getAttribute("boolean")%>';
			if(exp!="false"){
				window.document.location.href = "shownews.action";
			}
		function validate()
        {
            var page = document.getElementsByName("page")[0].value;
                
            if(page > "<s:property value='%{#request.pageBean.totalPage}'/>")
            {
                alert("你输入的页数大于最大页数，页面将跳转到首页！");
                
                window.document.location.href = "shownews.action";                
                return false;
            }           
            return true;
        }    
			
	</script>
  </head>
  
  <body>
    	<div>
  	<div align="left" style="padding-left:100px"><img src="image/news.jpg"></div>
    </div>
    <br>
    <a style="padding-left: 120px" href="index.jsp">首页</a><a style="padding-left: 10px" href="login.jsp">登录</a>
    <hr>
    	<div style="height:auto;padding-left: 150px">
				
				<s:iterator value="#session.news" var="book">
					<h4>
					<s:property value="#book.id"/>&nbsp;	<s:property value="#book.newstitle" /><br>			
				    </h4>
				</s:iterator>
    	</div>
   	 <hr>
    <div>
    <center>

						<font size="4">当前<font color="red"><s:property
									value="#request.pageBean.currentPage" /></font>页
						</font>&nbsp;&nbsp; <font size="4">共<font color="red"><s:property
									value="#request.pageBean.totalPage" /></font>页
						</font>&nbsp;&nbsp; <font size="4">共<font color="red"><s:property
									value="#request.pageBean.allRows" /></font>条记录
						</font><br> <br>

						<s:if test="#request.pageBean.currentPage == 1">
            首页&nbsp;&nbsp;&nbsp;上一页
        </s:if>

						<s:else>
							<a href="shownews.action">首页</a>
            &nbsp;&nbsp;&nbsp;
            
							<a	href="shownews.action?page=<s:property value="#request.pageBean.currentPage - 1"/>">上一页</a>
						</s:else>

						<s:if
							test="#request.pageBean.currentPage != #request.pageBean.totalPage">
							
							<a	href="shownews.action?page=<s:property value="#request.pageBean.currentPage + 1"/>">下一页</a>
            &nbsp;&nbsp;&nbsp;
            
							<a	href="shownews.action?page=<s:property value="#request.pageBean.totalPage"/>">尾页</a>
						</s:if>
						<s:else>
            下一页&nbsp;&nbsp;&nbsp;尾页
        </s:else>
					</center>
					<br>
					<center>
						<form action="shownews" onsubmit="return validate();">
							<font size="4">跳转至</font> <input type="text" size="2" name="page">页
							<input type="submit" value="跳转">
						</form>
					</center>
    </div>
    <br>
    <div align="center">Copyright 2018 郑州大学大三实训 版权所有 </div>
  </body>
</html>
