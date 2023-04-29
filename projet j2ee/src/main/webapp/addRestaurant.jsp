<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Restaurant</title>
</head>
<body>
<h1>Add Restaurant</h1>
<form method="get" action="Servlet">
	<table>
		<tr>
			<td>Name:</td>
			<td><input name="name" type="text"></td>
		</tr>
		<tr>
			<td>Phone:</td>
			<td><input name="phone" type="text"></td>
		</tr>
		<tr>
			<td>Address:</td>
			<td><input name="address" type="text"></td>
		</tr>
			<tr>
			<td>Specialty:</td>
			<td><input name="specialty" type="text"></td>
		</tr>
        <tr>
             <td>Image URL:</td>
             <td><input name="imageUrl" type="text"></td>
       </tr>

		<tr>
			<td></td>
			<td><input type="submit" value="Add"></td>
		</tr>
	</table>
	<input type="hidden" name="action" value="addRestaurant">
</form>
<br>
<a href="Servlet?action=listRestaurant">Back to Restaurant List</a>
</body>
</html>

		