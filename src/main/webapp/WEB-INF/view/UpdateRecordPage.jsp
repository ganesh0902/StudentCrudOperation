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

	<form action="updateProcess" method="get">

		<section>
			<div id="page1">
								
				<input type="hidden" name="id" placeholder="Enter Id" value="${requestScope.std.id }"><br><br>
				 <label style="text-align: center;">Student Id is :${requestScope.std.id }</label><br><br>
				<input type="text" name="name" placeholder="Enter Name" value="${requestScope.std.name }"><br><br>
				 
				<input type="text" name="city" placeholder="Enter City" value="${requestScope.std.city }"><br><br>
				
				<input type="text" name="salary" placeholder="Enter Salary" value="${requestScope.std.salary }"><br><br> 
				
				<input type="submit" value="Ok"><br>
				<br>

			</div>
			<div>
													
		</div>

		</section>

	</form>
</body>
</html>