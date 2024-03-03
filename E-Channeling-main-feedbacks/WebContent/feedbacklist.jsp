<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<html>
<head>
<title>My Feedbacks</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>

<body>

	<header>
	<!-- Navigation bar -->
		<nav class="navbar navbar-dark bg-secondary">
			<div>
				<a href="https://www.xadmin.net" class="navbar-brand">Feedback Management Application </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="home.jsp"
					class="nav-link">Home</a></li>
			</ul>
			
		</nav>
	</header>
	<br>
	<div class="row">
	<div class="container">
			<h3 class="text-center"><b>My FeedBack List</b></h3>
			<hr>
			
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>Full Name</th>
						<th>Email Address</th>
						<th>Phone Number</th>
						<th>Feedback</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
				
					<c:forEach var="booking" items="${listBooking}">

						<tr>
							<td><c:out value="${booking.name}" /></td>
							<td><c:out value="${booking.email}" /></td>
							<td><c:out value="${booking.phone}" /></td>
							<td><c:out value="${booking.hospital}" /></td>
							<td><a href="edit?id=<c:out value='${booking.id}' />" class="btn btn-outline-warning">Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="bookingDelete?id=<c:out value='${booking.id}' />" class="btn btn-outline-danger">Delete</a></td>
						</tr>
					</c:forEach>
		
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>