
<!-- login validation -->
<%	 if(session.getAttribute("name")==null){
		response.sendRedirect("login.jsp");	/*if user not loged in redirect to login page*/
	}



%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>E home</title>

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
</head>
<body id="page-top">


	<!-- Navigation-->
	<nav
		class="navbar navbar-expand-lg bg-primary text-uppercase fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="#page-top">CareQueue E-Channeling</a>
			<button
				class="navbar-toggler text-uppercase font-weight-bold bg-primary text-white rounded"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#portfolio">Services</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#contact">Feedbacks</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#">Search</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="patientlogout">Logout</a></li>
					<li style ="border-radius:5px" class="nav-item mx-0 mx-lg-1 bg-danger"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="Profile.jsp"><%=session.getAttribute("name") %></a></li>
					
				</ul>
			</div>
		</div>
	</nav>
	
	<!-- Masthead-->
	<header class="masthead bg-light text-grey text-center">
		<div class="container d-flex align-items-center flex-column">
			<!-- Masthead Avatar Image-->
			<img  class="masthead-avatar mb-5" src="images/CareQueue Logo.png"
				alt="..." />
			<!-- Masthead Heading-->
			<h1 class="masthead-heading text-uppercase mb-0"> Welcome To CareQueue EChanneling</h1>
			<!-- Icon Divider-->
			<div class="divider-custom divider-light bg-primary">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon bg-primary">
					<i class="fas fa-hand-holding-medical"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Masthead Subheading-->
			<p class="masthead-subheading font-weight-light mb-0">Book Your Doctor Today</p>
		</div>
	</header>
	
	<!-- Portfolio Section-->
	<section class="page-section portfolio" id="portfolio">
		<div class="container">
			<!-- Portfolio Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">Services</h2>
			
			<!-- Icon Divider-->
			<div class="divider-custom divider-light bg-primary">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon bg-primary">
					<i class="fas fa-handshake"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			
			<!-- Portfolio Grid Items-->
			<div class="row justify-content-center">
				<!-- Portfolio Item 1-->
				<div class="col-md-6 col-lg-4 mb-5">
					<div class="portfolio-item mx-auto" >
						<div
							class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="portfolio-item-caption-content text-center text-white">
								<a style = "text-decoration:none" href="booking.jsp"><i class="fas fa-plus fa-3x"></i></a>
							</div>
						</div>
						
						<p align="center"><img class="img-fluid" src="images/booking2.png"
							alt="..." /></p>
							<h4 style="text-align:center">Bookings</h4>
					</div>
				</div>
				<!-- Portfolio Item 2-->
				<div class="col-md-6 col-lg-4 mb-5">
					<div class="portfolio-item mx-auto" >
						<div
							class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="portfolio-item-caption-content text-center text-white">
								<a style = "text-decoration:none" href="#"><i class="fas fa-plus fa-3x"></i></a>
							</div>
						</div>
					
						<p align="center"><img  class="img-fluid" src="images/labreport.png"
							alt="..." /></p>
								<h4 style="text-align:center">Lab Reports</h4>
					</div>
				</div>
				<!-- Portfolio Item 3-->
				<div class="col-md-6 col-lg-4 mb-5">
					<div class="portfolio-item mx-auto">
						<div
							class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="portfolio-item-caption-content text-center text-white">
								<a style = "text-decoration:none" href="#"><i class="fas fa-plus fa-3x"></i></a>
							</div>
						</div>
						
						<p align="center"><img class="img-fluid" src="images/counseling.png"
							alt="..." /></p>
							<h4 style="text-align:center">Counselling</h4>
					</div>
				</div>
				<!-- Portfolio Item 4-->
				<div class="col-md-6 col-lg-4 mb-5 mb-lg-0">
					<div class="portfolio-item mx-auto">
						<div
							class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="portfolio-item-caption-content text-center text-white">
								<a style = "text-decoration:none" href="medicine.jsp"><i class="fas fa-plus fa-3x"></i></a>
							</div>
						</div>
						
						<p align="center"><img class="img-fluid" src="images/medic.png"
							alt="..." /></p>
							<h4 style="text-align:center">Medicine</h4>
					</div>
				</div>
				
				
	</section>
	
	<!-- About Section-->
	<!-- feedback Section-->
	<section class="page-section" id="contact">
		<div class="container">
			<!-- Feedback Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">FeedBack</h2>
			<!-- Icon Divider-->
			<div class="divider-custom divider-light bg-primary">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon bg-primary">
					<i class="fas fa-comments"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Feedback Section Form-->
			<div class="row justify-content-center">
				<div class="col-lg-8 col-xl-7">
					<!-- * * * * * * * * * * * * * * *-->
					<!-- * * SB Forms Feedback Form * *-->
					<!-- * * * * * * * * * * * * * * *-->
					<!-- This form is pre-integrated with SB Forms.-->
					<!-- To make this form functional, sign up at-->
					<!-- https://startbootstrap.com/solution/contact-forms-->
					<!-- to get an API token!-->
					
					<form action= "add-feedback" method= "post" id="feedbackForm" >
						
						<!-- First Name input-->
						<div class="form-floating mb-3">
							<input class="form-control" name="fname" id="fname" type="text"
								placeholder="Enter your first name..." data-sb-validations="required" />
							<label for="fname">First Name</label>
							<div class="invalid-feedback" data-sb-feedback="name:required">A
								name is required.</div>
						</div>
						
						<input type="hidden" name="rating" value="5" >
						
						<!-- Last Name input-->
						<div class="form-floating mb-3">
							<input class="form-control" name="lname" id="lname" type="text"
								placeholder="Enter your last name..." data-sb-validations="required" />
								<label for="lname">Last	Name</label>
							<div class="invalid-feedback" data-sb-feedback="name:required">A
								name is required.</div>							
						</div>
						
						
						<!-- Message input-->
						<div class="form-floating mb-3">
							<textarea class="form-control" name="description" id="description" type="text"
								placeholder="Enter your message here..." style="height: 10rem"
								data-sb-validations="required"></textarea>
							<label for="message">Feedback..</label>
							<div class="invalid-feedback" data-sb-feedback="message:required">A
								message is required.</div>
						</div>
						
						<!-- Submit success message-->
						<!---->
						<!-- This is what your users will see when the form-->
						<!-- has successfully submitted-->
						<div class="d-none" id="submitSuccessMessage">
							<div class="text-center mb-3">
								<div class="fw-bolder">Form submission successful!</div>
								
							</div>
						</div>
						
						<!-- Submit error message-->
						<!---->
						<!-- This is what your users will see when there is-->
						<!-- an error submitting the form-->
						<div class="d-none" id="submitErrorMessage">
							<div class="text-center text-danger mb-3">Error sending
								message!</div>
						</div>
						
						<!-- Submit Button-->
						<button class="btn btn-primary btn-xl " name="submitButton" id="submitButton"
							type="submit">Send</button>
					</form>
				</div>
			</div>
		</div>
	</section>

	<!-- Footer-->
	<footer class="footer text-center bg-secondary">
		<div class="container">
			<div class="row">
				<!-- Footer Location-->
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Location</h4>
					<p class="lead mb-0">
						st peters vanue<br /> Colombo-06
					</p>
				</div>
				<!-- Footer Social Icons-->
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Around the Web</h4>
					<a class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-facebook-f"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-twitter"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-linkedin-in"></i></a> <a
						class="btn btn-outline-light btn-social mx-1" href="#!"><i
						class="fab fa-fw fa-dribbble"></i></a>
				</div>
				<!-- Footer About Text-->
				<div class="col-lg-4">
					<h4 class="text-uppercase mb-4">Our Vision</h4>
					<p class="lead mb-0">
						Good customer service costs less than bad customer service
					</p>
				</div>
			</div>
		</div>
	</footer>
	
	<!-- Copyright Section-->
	<div class="copyright py-4 bg-primary text-center text-white">
		<div class="container">
			<small>Copyright &copy; Your Website 2023</small>
		</div>
	</div>
	
						
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<!-- * *                               SB Forms JS                               * *-->
	<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>
