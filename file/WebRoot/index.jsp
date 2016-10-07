<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>文件上传</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
   ${message}
   <form action="<%=basePath %>FileServ" enctype="multipart/form-data"method="post">
    上传的文件<input type="file" name="file1" id="file1"><br>
    上传的文件<input type="file" name="file2" id="file2"><br>
    <input type="submit" value="提交"><br>
   
   </form>
  下载：<a href="<%=basePath %>Fileupload?filename=test1.txt">下载</a>&nbsp;&nbsp; ${errorResult}
  </body>
</html>
