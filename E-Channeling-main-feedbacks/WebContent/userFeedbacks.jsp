<link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.css" rel="stylesheet" />
	<script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/1.8.1/flowbite.min.js"></script>


<link rel="stylesheet" href="${pageContext.request.contextPath}/css/user/adminPanel.css"/>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.feedback.Feedback"%>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    

    
 <%
	
	 if(session.getAttribute("name")==null){
		response.sendRedirect("login.jsp");	/*if user not loged in redirect to login page*/
	}
	

%>   
    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	
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
	
<link rel="stylesheet" href="css/style.css">
</head>
<body class="f-body" id= "page-top">



	

<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">



<!-- Navigation-->
	<nav
		class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top"
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
		<p style="padding:15px"><a  style = "text-decoration:none" href = "home.jsp"
									class="profileh" >Home</a></p>
									
							
	</nav><br><br><br>






<%
	ArrayList<Feedback> feedbacks = (ArrayList<Feedback>)request.getAttribute("feedbacks");	
%>

<br><br><br><br>

<h1 class="flex justify-center text-2xl font-bold mb-4">My Feedbacks</h1>

<div class="relative shadow-md sm:rounded-lg ">
	<table class="w-4/5 ml-auto mr-auto text-sm text-left text-gray-500 dark:text-gray-400">
	  <thead class="text-xs text-gray-700 uppercase bg-gray-300 dark:bg-gray-700 dark:text-gray-400">
	    <tr>
		    <th scope="col" class="px-6 py-3">ID</th>
			<th scope="col" class="px-6 py-3">First Name</th>
			<th scope="col" class="px-6 py-3">Last Name</th>
		    <th scope="col" class="px-6 py-3">Feedback</th>
			<th scope="col" class="px-6 py-3">Created at</th>
			<th scope="col" class="px-6 py-3" colspan="2"></th>
	    </tr>
	  </thead>
	  <tbody>
	    <c:forEach var="Feedback" items="${feedbacks}">
	    	<tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700 hover:bg-gray-100 dark:hover:bg-gray-600">
	    		<th scope="row">${Feedback.getId()}</th>
				<td class="px-6 py-4">${Feedback.getFname()}</td>
				<td class="px-6 py-4">${Feedback.getLname()}</td>
				<td class="px-6 py-4">${Feedback.getDescription()}</td>
				<td class="px-6 py-4">${Feedback.getCreated_at()}</td>
	    		<td class="items-center px-6 py-4 space-x-3"><a href="${pageContext.request.contextPath}/update-feedback?fid=${Feedback.getId()}" >
	    		<button type='submit' name='update' class="text-white bg-green-700 hover:bg-green-800 focus:ring-4 focus:ring-green-300 font-medium rounded-lg text-sm px-5 py-2.5 mr-2 mb-2 dark:bg-green-600 dark:hover:bg-green-700 dark:focus:ring-green-800"">Update</button> 
	    		</a></td>
	    		<td class="items-center px-6 py-4 space-x-3">
	    		<form class="update_form" action="${pageContext.request.contextPath}/delete-feedback" method="get">
	    			<input required value="${Feedback.getId()}" type="hidden" name="fid"> 
                    <button type='submit' name='delete' onclick='return checkdelete()' class="btn2 text-white bg-red-700 hover:bg-red-800 focus:ring-4 focus:ring-red-300 font-medium rounded-lg text-sm px-5 py-2.5 mr-2 mb-2 dark:bg-red-600 dark:hover:bg-red-700 dark:focus:ring-red-900">Delete</button> 
					</form>
				</td>
	    	</tr>
		</c:forEach>
	  </tbody>
	</table>
</div>



<script >

function checkdelete() {
    return confirm('Are you sure you want to Delete this Feedback?');
}       
    

</script>
