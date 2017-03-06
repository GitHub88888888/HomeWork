<%@ page contentType="text/html; charset=UTF-8" %><!-- author by 马在营 -->
<html>
  <head>
    <title>counter</title>
    <script type="text/javascript">
   		//去掉字符串两边的空格
		String.prototype.trim = function()
		{
		    return this.replace(/(^[\s]*)|([\s]*$)/g, "");
		}
    	function check(){
    		var frm = document.inputForm; 
    		
			//判断num1值是否为空
			num1=frm.num1.value.trim();
			if(num1 == ""){
				alert("第一个数不允许为空!");
				return false;
			}
			//判断num1值是否为字符串
			if(Math.round(num1)!=num1){
				alert("第一个数必须为数字!");
				return false;
			}

			//判断num2值是否为空
			if(frm.num2.value == ""){
				alert("第二个数不允许为空!");
				return false;
			}
			//判断num2值是否为字符串
			num2=frm.num2.value.trim();
			if(Math.round(num2)!=num2){
				alert("第二个数必须为数字!");
				return false;
			}
			
			if(frm.operator.value == "/"){
				if(num2 == "0"){
					alert("除法运算时,第二个数不允许为0!");
					return false;
				}
			}
			frm.submit;
    	}
    </script>
  </head>
  <body>
  	<h1>我的计算器</h1>
  	<hr><br>
    <form name="inputForm" action="result.jsp">
    	请输入第一个数:<input name="num1" type="text"/><br><br>
    	请选择运算方式:
    	<select name="operator">
    		<option value="+">+</option>
    		<option value="-">-</option>
    		<option value="*">*</option>
    		<option value="/">/</option>
    	</select><br><br>
    	请输入第二个数:<input name="num2" type="text"/><br><br>
    	<input type="submit" value="计算" onClick="check()"/>
    </form>
  </body>
</html>
