<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<% 
session.setAttribute("userName","¶À¹ÂÇó°Ü");
session.setAttribute("pwd","123456");
response.sendRedirect("sessiondisplay.jsp");
%>