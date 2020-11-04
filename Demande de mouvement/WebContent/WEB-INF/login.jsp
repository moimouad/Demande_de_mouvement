<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="login_page_style/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login_page_style/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login_page_style/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login_page_style/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login_page_style/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="login_page_style/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login_page_style/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login_page_style/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="login_page_style/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login_page_style/css/util.css">
	<link rel="stylesheet" type="text/css" href="login_page_style/css/main.css">
<!--===============================================================================================-->
</head>
<body>

<!--===============================================================================================-->

<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-t-50 p-b-90">
				<form class="login100-form validate-form flex-sb flex-w" method="post" action="login">
					<span class="login100-form-title p-b-51">
						Login
					</span>
					<c:if test="${ !empty msg }">
						<div class="alert alert-danger" role="alert">
	 						 Username ou Password incorrect !
						</div>
					</c:if>
					
					<div class="wrap-input100 validate-input m-b-16" data-validate = "Username is required">
						<input class="input100" type="text" name="username" placeholder="Username">
						<span class="focus-input100"></span>
					</div>
					
					
					<div class="wrap-input100 validate-input m-b-16" data-validate = "Password is required">
						<input class="input100" type="password" name="password" placeholder="Password">
						<span class="focus-input100"></span>
					</div>
					
					<div class="flex-sb-m w-full p-t-3 p-b-24">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
							<label class="label-checkbox100" for="ckb1">
								Remember me
							</label>
						</div>

						<div>
							<a href="#" class="txt1">
								Forgot?
							</a>
						</div>
					</div>

					<div class="container-login100-form-btn m-t-17">
						<button type="submit" class="login100-form-btn">
							Login
						</button>
					</div>

				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="login_page_style/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="login_page_style/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="login_page_style/vendor/bootstrap/js/popper.js"></script>
	<script src="login_page_style/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="login_page_style/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="login_page_style/vendor/daterangepicker/moment.min.js"></script>
	<script src="login_page_style/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="login_page_style/vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script src="css/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="login_page_style/js/main.js"></script>


<!--===============================================================================================-->


<!--
<c:if test="${ !empty msg }"><p><c:out value="${ msg }" /></p></c:if>
        
        <form method="post" action="login">
	        <p>
	            <label for="nom">Username : </label>
	            <input type="text" name="username" id="username" maxlength="12" required/>
	        </p>
	        <p>
	            <label for="prenom">Password : </label>
	            <input  minlength="3" type="password" name="password" id="password" maxlength="20" required/>
	        </p>
	        
	        <input type="submit" value="Se connecter" />
	    </form>
	    -->

</body>
</html>