var xmlhttp;
function getCityes(province){
	createXhr();
	xmlhttp.onreadystatechange=callback;
	xmlhttp.open("get","ProvinceServlet?province="+province,true);
	xmlhttp.send(null);
}
function callback(){
	if(xmlhttp.readyState==4){
	if(xmlhttp.status==200){
		var cityStr=xmlhttp.responseText; 
		var citys=cityStr.split(",");
		var cityDiv=document.getElementById("city");
		cityDiv.options.length=0;
		for(var i=0;i<citys.length;i++){
			cityDiv.options[i]=new Option(citys[i],i);
		}
	}	
	}
	
}

function createXhr(){
	if(window.XMLHttpRequest){
		xmlhttp = new XMLHttpRequest();
	}else{
		if(window.ActiveXOjbect){
			var activeName = ["microsoft.xmlhttp","msxml2.xmlhttp"];
			for(var i=0;i<activeName.length;i++){
				try {
					xmlhttp = new ActiveXObject(activeName[i]);
					break;
				}catch(e){
				    alert("xmlHttp创建失败："+e);	
				}
			}			  
		}
	}
	   if(!xmlhttp){
		   alert("XMLHttpRequest对象 create fail");
	   }else{
		   alert(xmlhttp); 
	   }
}