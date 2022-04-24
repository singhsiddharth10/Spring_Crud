<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>New Customer</title>
</head>
<body>
	<div align = "center">
		<h2> Edit Customer</h2>
		<form:form action = "save" method= "post" modelAttribute="customer">
			<table border = "0" cellpadding = "5">
				<tr>
					<td>ID:</td>
					<td>
						${customer.id}
						<form:hidden path="id"></form:hidden>
					</td>
					
				</tr>
				<tr>
					<td>Name</td>
					<td><form:input path="name"></form:input></td>
				</tr>
				<tr>
					<td>E-mail</td>
					<td><form:input path="email"></form:input></td>
				</tr>
				<tr>
					<td>Address</td>
					<td><form:input path="address"></form:input></td>
				</tr>
				<tr>
					<td colspan = "2"><input type = "submit" value = "Save"></td>
				</tr>
			</table>
		</form:form>
	</div>

</body>
</html>