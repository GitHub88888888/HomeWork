<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<% 
session.setAttribute("userName","�������");
session.setAttribute("pwd","123456");
response.sendRedirect("sessiondisplay.jsp");
%>