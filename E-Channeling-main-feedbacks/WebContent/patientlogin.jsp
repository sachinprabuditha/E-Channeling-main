<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign in Form</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
</head>
<body>

<header class="masthead bg-primary text-white text-center">
		<div class="container d-flex align-items-center flex-column">
			<!-- Masthead Avatar Image-->
			<center><img class="masthead-avatar mb-5" src="images/CareQueue Logo.jpg"
				alt="..." width="60" height="60"/></center>
			<!-- Masthead Heading-->
			<h1 class="masthead-heading text-uppercase mb-0"><center>Welcome To CareQueue E-Channeling</center> </h1>
			<!-- Icon Divider-->
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-hand-holding-medical"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Masthead Subheading-->
			<p class="masthead-subheading font-weight-light mb-0"><center>Book Your Doctor Today</center></p>
		</div>
	</header>

<input type="hidden" id="status" value="<%= request.getAttribute("status") %>">

	<div class="main">

		<!-- Sing in  Form -->
		<section class="sign-in">
			<div class="container">
				<div class="signin-content">
					<div class="signin-image">
						<figure>
							<img src="images/171.jpg" alt="sign in image">
						</figure>
						<a style = "text-decoration:none; background:#FFC300" href="registration.jsp" class="signup-image-link">Click to Create an account</a>
					</div>

					<div class="signin-form">
						<h2 class="form-title">User Login</h2>
						<form method="post" action="login" class="register-form"
							id="login-form">
							<div class="form-group">
								<label for="username"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="email" name="username" id="username"
									placeholder="Enter your email" />
							</div>
							<div class="form-group">
								<label for="password"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="password" id="password"
									placeholder="Enter password" />
							</div>
							<div class="form-group">
								<input type="checkbox" name="remember-me" id="remember-me"
									class="agree-term" /> <label for="remember-me"
									class="label-agree-term"><span><span></span></span>Remember
									me</label>
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signin" id="signin"
									class="form-submit" value="Login" />
							</div>
						</form>
						
						<script type="text/javascript">
							var checker = document.getElementById('remember-me');
							 var sendbtn = document.getElementById('signin');
							 // when unchecked or checked, run the function
							 checker.onchange = function(){
							if(this.checked){
							    sendbtn.disabled = false;
							} else {
							    sendbtn.disabled = true;
							}
							
							}
 						</script>					
						
						
						<div class="social-login">
							<span class="social-label">Or login with</span>
							<ul class="socials">
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-facebook"></i></a></li>
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-twitter"></i></a></li>
								<li><a href="#"><i
										class="display-flex-center zmdi zmdi-google"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>

	</div>

	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
	
	<script type="text/javascript"> 
	var status = document.getElementById("status").value;
	
	if(status == "success"){
		
		swal("Account Updated Successfully!!","Please Log in again..","success");
	}
	if(status == "failed"){
		
		swal("Sorry!!","Wrong Username or Password","error");
	}
	else if(status == "invalidEmail"){
			
			swal("Sorry!!","Please enter Email Address","error");
	}
	else if(status == "invalidUpwd"){
		
		swal("Sorry!!","Please Eneter Password","error");
	}
	
	
	
	</script>
	
	
</body>

</html>