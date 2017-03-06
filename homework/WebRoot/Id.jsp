<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> <!-- author by 马在营 -->
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Id.jsp' starting page</title>
    
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
    <%  String id[]={"010020198810092211","0100201990093002211"}; %>
<table border="1">
<tr bgcolor="pink"> <td>身份证</td><td>生日</td></tr>
<% for(int i=0;i<id.length;i++)
		{%>
		<tr ><td><%= id[1] %></td>
		<td><%= id[i].substring(6, 10)%>-<%= id[i].substring(10, 12)%>-
		<%= id[i].substring(12,14) %></td>
		</tr>
		<%}
%>
  </body>
</html>
