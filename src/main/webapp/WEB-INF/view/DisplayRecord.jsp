<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="green">
	

	<table border="1px" style="text-align: center;margin-left: 600px;margin-top: 50px;background-color: white">
	
	<tr>
			<th>Id</th>
			<th>Name</th>
			<th>City</th>
			<th>Salary</th>	
			<td>Delete</td>
			<td>Update</td>
	</tr>
	
	<c:forEach var="i" items="${requestScope.std }">
	
		<tr>
			<td><c:out value="${i.getId() }"></c:out></td>
			<td><c:out value="${i.getName() }"></c:out></td>
			<td><c:out value="${i.getCity() }"></c:out></td>
			<td><c:out value="${i.getSalary() }"></c:out></td>
			<td><a href="DeleteById/${i.getId() }">Delete</a></td>
			<td><a href="SearchById/${i.getId() }"> Search</a></td>
			
		</tr>		
	</c:forEach>
	
	</table>

</body>
</html>