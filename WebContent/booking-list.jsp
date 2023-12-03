<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<html>
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>

<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">

	
	
	<!-- Favicon-->
	<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
	<!-- Font Awesome icons (free version)-->
	<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>
	<!-- Google fonts-->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
	<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
	<!-- Core theme CSS (includes Bootstrap)-->
	<link href="css/index-styles.css" rel="stylesheet" />
	
<title>Profile</title> 

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->

<style>
		.profileBac{
     background-image: url("images/uppro.png");
   	 background-attachment:fixed;
     padding-bottom:5px;
     border-radius:20px; }
     
     .profileh {
  display: inline-block;
  background: #202A44;
  color: #fff;
  border-bottom: none;
  width: auto;
  padding: 15px 39px;
  border-radius: 5px;
  -moz-border-radius: 5px;
  -webkit-border-radius: 5px;
  -o-border-radius: 5px;
  -ms-border-radius: 5px;
  margin-top: 0px;
  cursor: pointer; }
  .profileh:hover {
    background: #1abc9c; }
    
    body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

/* Button used to open the contact form - fixed at the bottom of the page */
.open-button {
  background-color: black;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  opacity: 0.8;
  position: fixed;
  bottom: 23px;
  right: 28px;
  width: 280px;
}

/* The popup form - hidden by default */
.form-popup {
  display: none;
  position: fixed;
  bottom: 0;
  right: 15px;
  border: 3px solid #f1f1f1;
  z-index: 9;
}

/* Add styles to the form container */
.form-container {
  max-width: 300px;
  padding: 10px;
  background-color: white;
}

/* Full-width input fields */
.form-container input[type=text], .form-container input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

/* When the inputs get focus, do something */
.form-container input[type=text]:focus, .form-container input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit/login button */
.form-container .btn {
  background-color: #04AA6D;
  color: white;
  padding: 10px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  margin-bottom:10px;
  opacity: 0.8;
}

/* Add a red background color to the cancel button */
.form-container .cancel {
  background-color: red;
}

.form-container .chechbooking {
  background-color: #6dabe4;
}

/* Add some hover effects to buttons */
.form-container .btn:hover, .open-button:hover {
  opacity: 1;
}

	</style>

<body>

	<header>
	<!-- Navigation bar -->
	<!-- Navigation-->
	<nav
		class="navbar navbar-expand-lg bg-primary text-uppercase fixed-top"
		id="mainNav">
		<div>
			<a  style= "padding:50px" class="navbar-brand" href="#page-top">CareQueue E-channeling</a>
			
			<button
				class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			
				
				
			
		</div>
		<p style="padding:15px"><a  style = "text-decoration:none" href = "Doctorhome.jsp"
									class="profileh" >Home</a></p>
									
									
	</nav><br><br><br>
	
	</header>
	<br>
	<div class="row">
	<div class="container">
			<h3 class="text-center"><b>List of Appointment Schedules</b></h3>
			<hr>
			<br><br><br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>bID</th>
						<th>Patient name</th>
						<th>Age</th>
						<th>Address</th>
						<th>Gender</th>
						<th>Phone</th>
						<th>Email</th>
						<th>Doctor's name</th>
						<th>Hospital</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
				
					<c:forEach var="booking" items="${listBooking}">

						<tr>
							<td><c:out value="${booking.id}" /></td>
							<td><c:out value="${booking.name}" /></td>
							<td><c:out value="${booking.age}" /></td>
							<td><c:out value="${booking.address}" /></td>
							<td><c:out value="${booking.gender}" /></td>
							<td><c:out value="${booking.phone}" /></td>
							<td><c:out value="${booking.email}" /></td>
							<td><c:out value="${booking.doctor}" /></td>
							<td><c:out value="${booking.hospital}" /></td>
							<td><a
								href="bookingDelete?id=<c:out value='${booking.id}' />" class="btn btn-outline-danger">Delete</a></td>
						</tr>
					</c:forEach>
		
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>