<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Json</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="<%=basePath%>JS/jquery-1.10.2.js"></script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script>
		$(document).ready(function(){
			$("#btn").click(function(){
				var name = "Kevin";
				var sex = "男";
				var hobby = "basketball";
				var city = "杭州";
				var age = 24;
				var jsonInfo = "{\"name\":\""+name+"\",\"sex\":\""+sex+"\",\"hobby\":\""+hobby+"\",\"city\":\""+city+"\",\"age\":\""+age+"\"}";
				var json2Info = "[{\"a\":\"11\",\"b\":\"22\"},{\"c\":\"33\",\"d\":\"44\"}]";
				$.ajax({
					dataType:"json",
					type:"post",
					url:"JsonServlet",
					data:{"person":jsonInfo,"word":json2Info},
					success: function(data){
						var jsonWord = JSON.stringify(data);
						$("#res").append("<div>"+jsonWord+"</div><hr/>");
					}
				})
			})
		})
	</script>
  </head>
  
  <body>
   		<input type="button" id="btn" value="json" />
   		<div id="res">
   		</div>
  </body>
</html>
