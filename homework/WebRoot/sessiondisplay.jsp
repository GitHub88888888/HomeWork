<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<html>
 <head>
  <title>��ʾ�û���Ϣ</title>
 </head>
 <body>
  <table>
   <tr>
    <td>
     �������û���
    </td>
    <td>
     <input type="text" value="<%=session.getAttribute("userName")%>"
      name="userName">
    </td>
   </tr>
   <tr>
    <td>
     ����������
    </td>
    <td>
     <input type="password" value="<%=session.getAttribute("pwd")%>"
      name="pwd">
    </td>
   </tr>
  </table>
 </body>
</html>