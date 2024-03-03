<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<html>
<head>
<title>Review Feedback List</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>

<body>

	<header>
	<!-- Navigation bar -->
		<nav class="navbar navbar-dark bg-primary">
			<div>
				<a href="https://www.xadmin.net" class="navbar-brand">Feedback Management Application </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="adminhome.jsp"
					class="nav-link">Home</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="row">
	<div class="container">
			<h3 class="text-center"><b>FeedBack List</b></h3>
			<hr>
			<!--
			<div class="container text-left">

				<a href="<%=request.getContextPath()%>/home.jsp" class="btn btn-outline-success" >Add New FeedBack</a>
				
			</div>
			<br> -->
			<table class="table table-bordered">
				<thead>
					<tr>
						
						<th>Feedback ID</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Feedback</th>
						<th>Created At</th>
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