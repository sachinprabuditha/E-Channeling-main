<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About Us</title>

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

<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  margin: 0;
}

html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  margin: 8px;
}

.about-section {
  padding: 50px;
  text-align: center;
  background-color: #474e5d;
  color: white;
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}
</style>


<body id="page-top">
	<!-- Navigation-->
	<nav
		class="navbar navbar-expand-lg bg-primary text-uppercase fixed-top"
		id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="#page-top">CareQueue E-Channeling</a>
			
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="AboutUs.jsp">About Us</a></li>
					<li class="nav-item mx-0 mx-lg-1"><a
						class="nav-link py-3 px-0 px-lg-3 rounded" href="#contact">Services</a></li>
					<li style ="border-radius:5px" class="nav-item mx-0 mx-lg-1 bg-danger"><a
						class="nav-link py-3 px-0 px-lg-3 rounded bg-success" href="Doctorregistration.jsp">Sign Up</a></li>
					
					<li style ="border-radius:5px" class="nav-item mx-0 mx-lg-1 bg-danger"><a
						class="nav-link py-3 px-0 px-lg-3 rounded bg-secondary" href="Doctorlogin.jsp">Sign in</a></li>
					
				</ul>
			</div>
		</div>
	</nav>
	
	
	<!-- About Us Content-->
	
	<br><br><br><br><br><br><br>
	
	<div class="about-section bg-secondary">
	  <h1>About Us</h1>
	  <p>CareQueue E-Channeling is a user-friendly and efficient e-channeling platform that simplifies the process of booking doctor appointments. Our platform is designed to provide convenient access to healthcare services, connecting patients with a wide network of healthcare providers in an easy and seamless manner.</p>
	  <br><br>
	  <p><h2><b><u>Key Features:</u></b></h2><br>
	<h3><b>Extensive Network:</b></h3> CareQueue E-Channeling boasts a vast network of doctors, specialists, and medical facilities, making it easy for users to find the right healthcare professional.
	<br><br><br>
	<h3><b>Easy Booking:</b></h3> We offer a straightforward and hassle-free appointment booking process through our user-friendly website and mobile application. You can schedule your doctor appointments with just a few clicks.
	<br><br><br>
	<h3><b>Information Accessibility:</b></h3> Access detailed information about doctors, including their specialties, availability, and locations, empowering you to make informed choices.
	<br><br><br>
	<h3><b>Convenient Reminders:</b></h3> Our platform sends appointment reminders, ensuring you never miss a scheduled visit to your healthcare provider.
	<br><br><br>
	<h3><b>Secure and Private:</b></h3> We prioritize the security and privacy of your health information, maintaining strict confidentiality.
	<br><br><br>
	<b>At CareQueue E-Channeling, our mission is to bridge the gap between patients and healthcare professionals, making healthcare accessible to everyone. We are committed to providing a seamless and convenient healthcare booking experience, ultimately contributing to better health and well-being for all.</b></p>
</div>
<br>
<h2 style="text-align:center">Our Team Members</h2>
<div class="row">
  <div class="column">
    <div class="card">
      <img src="images/download (2).jpeg" alt="Joe" style="width:100%">
      <div class="container">
        <h2>Joe Root</h2>
        <p class="title">CEO & Founder</p>
        <p>joe@example.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="images/download (2).jpeg" alt="David" style="width:100%">
      <div class="container">
        <h2>David Hussey</h2>
        <p class="title">Manager</p>
        <p>david@example.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="images\download (2).jpeg" alt="Clarke" style="width:100%">
      <div class="container">
        <h2>Micheal Clarke</h2>
        <p class="title">Designer</p>
        <p>micheal@example.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>
</div>

	
	<!-- Footer-->
	<footer class="footer bg-secondary text-center">
		<div class="container">
			<div class="row">
				<!-- Footer Location-->
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Location</h4>
					<p class="lead mb-0">
						No.69, Main Street,<br /> Matara
					</p>
				</div>
				<!-- Footer Social Icons-->
				<div class="col-lg-4 mb-5 mb-lg-0">
					<h4 class="text-uppercase mb-4">Our Socials</h4>
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
						Empowering Health and Healing Through Seamless Access to Quality Care
					</p>
				</div>
			</div>
		</div>
	</footer>
	<!-- Copyright Section-->
	<div class="copyright py-4 bg-primary text-center text-white">
		<div class="container">
			<small>Copyright &copy; Website 2023</small>
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

</head>
</head>
<body>




</body>
</html>