<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">

function fun()
	{
		alert("in fun");

		var ajax=new XMLHttpRequest();
		
		/* var tb=document.getElementById("tb1"); */
		
		ajax.onreadystatechnage=function()
			{
				if(ajax.readyState==4)
					{
						/* tb.style.display=""; */
					}
			}
		ajax.open("get","http://127.0.0.1:5000/",true);
		ajax.send();
	}
	

</script>
</head>
<body>
<input type="button" name="RunML" Value="RunML" onclick="fun()"/>
</body>
</html>