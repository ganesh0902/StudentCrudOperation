<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

	<style type="text/css">
	
	section{
			display: inline-block;		
	}
	div{
			flex: 1;					
	}
	#page1{
			
			margin-top:30px;
			width:600px;
			height:600px;
			background: cyan;
			margin-left: 70px;
	}		
	#page1 input{
			
			margin-top:20px;
			margin-left:100px;			
			width:400px;
			height:35px;
			border-radius:20px;				
	}
	</style>
</head>
<body>

	<%@include file="header.jsp" %>

	<form action="save" method="get">

		<section>
			<div id="page1">
								
				<input type="text" name="id" placeholder="Enter Id"><br><br>
				 
				<input type="text" name="name" placeholder="Enter Name"><br><br>
				 
				<input type="text" name="city" placeholder="Enter City"><br><br>
				
				<input type="text" name="salary" placeholder="Enter Salary"><br><br> 
				
				<input type="submit" value="Ok"><br>
				<br>

			</div>
			<div>
													
		</div>

		</section>

	</form>
</body>
</html>