<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<html>
 <head>
  <title>显示用户信息</title>
 </head>
 <body>
  <table>
   <tr>
    <td>
     请输入用户名
    </td>
    <td>
     <input type="text" value="<%=session.getAttribute("userName")%>"
      name="userName">
    </td>
   </tr>
   <tr>
    <td>
     请输入密码
    </td>
    <td>
     <input type="password" value="<%=session.getAttribute("pwd")%>"
      name="pwd">
    </td>
   </tr>
  </table>
 </body>
</html>