<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	
	<style type="text/css">
		
		body{
				background-color: green;
		}		
		#page1{
				position:absolute;
				left:400px;
				top:150px;
				background-color:cyan;
				width:600px;
				height:400px;
		}	
		#page2{
				
					position:absolute;
					left:100px;
					top:20px;
					width:400px;
					height:300px;
						
		}
		input{
				position:absolute;
				left:30px;		
				margin-top:40px;
				width:300px;
				height:24px;
				border-radius: 20px;
				text-align: center;
		
		}
	</style>
</head>
<body>
	
	
	
	<form action="RecordUpdateById" method="get">

		<div id="page1">

			<div id="page2">

				<input type="text" name="id" placeholder="Enter Id to Update Reocrd"><br>
				<br> <input type="submit">

			</div>

		</div>

	</form>
</body>
</html>