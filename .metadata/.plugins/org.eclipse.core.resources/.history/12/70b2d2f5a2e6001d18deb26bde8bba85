<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ListRestaurant</title>
</head>
	<body>
<ul>
<c:forEach var="res" items="${requestScope.restaurants}">
  <li>
    <c:out value="${res.name} : ${res.phone}:${res.address}" escapeXml="false" />
    <a href="Servlet?action=deleteRestaurant&Ridd=${res.rid}">delete</a>
  </li>
  <br />
</c:forEach>


</ul>
</body>
</html>