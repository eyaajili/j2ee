<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet" />
<title>eat better</title>
<style>
body {
	background-image: linear-gradient(90deg, rgba(243, 231, 242, 0.9),
		rgba(194, 109, 188, 0.9)),
		url(https://i.pinimg.com/564x/6f/c4/76/6fc476c7bf52d205f3c68b8dfe32276b.jpg);
	background-size: cover;
}
</style>

</head>
<body>
	<div class="container">

		<div class="row" style="margin-top: 20px;">
			<c:forEach var="res" items="${requestScope.restaurants}">
				<div class="col-md-4 ">
					<div class="card"
						style="width: 18rem; margin-left: 15PX; margin-bottom: 15PX;">
						<img src="${res.imageUrl}" class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title">
								<c:out value="${res.name}" />
							</h5>
							<ul class="list-group list-group-flush">
								<li class="list-group-item"><p class="card-text">
										<c:out value="${res.address}" escapeXml="false" />
									</p></li>
								<li class="list-group-item"><span
									class="badge text-bg-secondary" style="margin-left: 15px;"></span>
								<c:out value="${res.phone}" escapeXml="false" /></li>
								<li class="list-group-item"><span
									class="badge text-bg-secondary" style="margin-left: 15px;"></span>
								<c:out value="${res.specialty}" escapeXml="false" /></li>

								<li class="list-group-item"><a href="#" class="btn"
									style="background-color: #e6d1e6;">See more details</a></li>
							</ul>
							<a href="Servlet?action=deleteRestaurant&Ridd=${res.rid}"
								class="btn btn-danger">Delete</a>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>

		<div class="row">
			<button class="btn"
				style="margin-top: 10px; margin-bottom: 30px; background-color: #ee82d3; color: white;">
				<a href="Servlet?action=addRestaurant">go to add Restaurant</a>
			</button>
		</div>
	</div>
</body>
</html>