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
          <tbody><tr>
            <td class="title-bg2" height="26">
              <table border="0" cellspacing="0" cellpadding="0" width="100%">
                <tbody><tr>
                  <td width="30%" height="25px" background="image/lmbjcenter.jpg"><a href="CreateNews.jsp"><span class="qingchunzhongxueA_tabletitle2" >创建新闻</span></a></td>
                </tr>
              </tbody></table>
            </td>
          </tr>
          <tr>
            <td bgcolor="#abdce6"  width="200">
              <table border="0" cellspacing="0" cellpadding="4" width="200" height="400" >
                <tbody><tr>
                  <td>
                  <table width="200" cellpadding="0" cellspacing="0"><tbody>
                  <tr></tr></tbody></table></td>
                </tr>
              </tbody></table>
            </td>
            <td width="8">&#160;</td>
           		<td>
           		<div style="height:500px;">
    	
    	<div style="width:500px;height:auto;float: left;padding-left:100px ">    
    		
    		<form action="insertnews" method="post">
    			<br>
    			<font>编  &nbsp; &nbsp;  &nbsp; &nbsp;号:   &nbsp; &nbsp;</font><input type="text" name="newsid" style="width: 150px">
    			<br>
    			<br>
    			<font>标 &nbsp; &nbsp;  &nbsp; &nbsp;题:   &nbsp; &nbsp;</font><input type="text" id="newstitle" name="newstitle" style="width: 150px">
    			<span id="title" style="color: red"></span>	
    			<br>
    			<br>
    			<font>类 &nbsp; &nbsp;  &nbsp; &nbsp;型:   &nbsp; &nbsp;</font>
    			<select style="width: 150px" name="newstype">
    				<option value="国际新闻">国际新闻</option>
    				<option value="体育新闻">体育新闻</option>
    				<option value="娱乐新闻">娱乐新闻</option>
    			</select>	
    			<br>
    			<br>
    			<font>来  &nbsp; &nbsp; &nbsp; &nbsp;源:   &nbsp; &nbsp;</font><input type="text" name="newssource" style="width: 150px">
    			<br>
    			<br>
    			<font>作  &nbsp; &nbsp; &nbsp; &nbsp;者:   &nbsp; &nbsp;</font><input type="text" name="newswriter" style="width: 150px">
    			<br>
    			<br>
    			<font>发  &nbsp;布  &nbsp;人:   &nbsp; &nbsp;</font><input type="text" name="newsissuer" style="width: 150px">
    			<br>
    			<br>
    			<font>发布时间:&nbsp; &nbsp;&nbsp;</font><input class="Wdate" type="text" name="newsdate" id="date" style="width: 150px">
    			<br>
    			<br>
    			<font>关  &nbsp; 键 &nbsp;字:   &nbsp;  </font><input type="text" name="newskeys" style="width: 150px">	
    			<br>
    			<br>
    			<font>内 &nbsp; &nbsp;  &nbsp; &nbsp;容:   &nbsp; &nbsp;</font><textarea name="newsbody" id="newsbody" style="width:150px;height:50px;"></textarea>
    			<span id="nbody" style="color: red"></span>
    			<br><br>
    			<input type="submit" id="btn" value="预览">&nbsp;&nbsp;<input type="reset" value="重置">
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
