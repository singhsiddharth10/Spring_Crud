<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inventory</title>
</head>
<body>
	<div align = "center">
		<h1>Customer Manager</h1>
		<form method="get" action = "search">
			<input type = "text" name = "keyword" />
			<input type = "submit" name = "Search" />
		</form>
	</div>
	
	<div align = "center">
		<h3><a  href = "new"> NewCustomers </a></h3>
	</div>
	
	
	<div align = "center">
		<table border = "1" padding = "4">
		<tr>
			<th> ID</th>
			<th> Name</th>
			<th> Address</th>
			<th> Email</th>
			<th> Action</th>
		</tr>
		<c:forEach items="${listCustomer}" var="customer">
			<tr>
				<td>${customer.id}</td>
				<td>${customer.name}</td>
				<td>${customer.address}</td>
				<td>${customer.email}</td>
				<td>
					<a href="edit?id=${customer.id}">Edit</a>
					&nbsp;&nbsp;&nbsp;
					<a href="delete?id=${customer.id}">Delete</a>
				</td>
			</tr>
		</c:forEach>
	</table>
	</div>
	
	
</body>
</html>