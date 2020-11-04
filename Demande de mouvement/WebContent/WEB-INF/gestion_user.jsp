<!DOCTYPE html>
<html lang="en">
<head>
	<title>My Account</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="new_user_style/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="new_user_style/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="new_user_style/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="new_user_style/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="new_user_style/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="new_user_style/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="new_user_style/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="new_user_style/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="new_user_style/css/util.css">
	<link rel="stylesheet" type="text/css" href="new_user_style/css/main.css">
<!--===============================================================================================-->

</head>
<body>


	<%@ include file="menu.jsp" %>
	<br/>
	<br/>
	<br/>
	
	

	<div class="container-contact100">
		<div class="wrap-contact100">
			<form class="contact100-form validate-form" method="post" action="gestion_user">
				<span class="contact100-form-title">
					Gestion du Compte
				</span>


				<div class="wrap-input100 validate-input" data-validate="Username is required">
					<span class="label-input100">Username :</span>
					<input class="input100" type="text" name="username" placeholder="Enter votre Username" >
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="Password is required">
					<span class="label-input100">Password :</span>
					<input class="input100" type="password" name="password" placeholder="Enter votre Password" >
					<span class="focus-input100"></span>
				</div>
				
				<div class="wrap-input100 validate-input" data-validate="Password is required">
					<span class="label-input100">Code :</span>
					<input class="input100" type="text" name="code" placeholder="Enter votre Code" >
					<span class="focus-input100"></span>
				</div>
				
				<div class="wrap-input100 validate-input" data-validate="Password is required">
					<span class="label-input100">Matricule :</span>
					<input class="input100" type="text" name="mat" placeholder="Enter votre Matricule" >
					<span class="focus-input100"></span>
				</div>

				<div class="container-contact100-form-btn">
					<div class="wrap-contact100-form-btn">
						<div class="contact100-form-bgbtn"></div>
						<button class="contact100-form-btn">
							<span>
								Configurer
								<i class="fa fa-long-arrow-right m-l-7" aria-hidden="true"></i>
							</span>
						</button>
					</div>
				</div>
			</form>
		</div>
	</div>



	<div id="dropDownSelect1"></div>

<!--===============================================================================================-->
	<script src="new_user_style/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="new_user_style/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="new_user_style/vendor/bootstrap/js/popper.js"></script>
	<script src="new_user_style/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="new_user_style/vendor/select2/select2.min.js"></script>
	<script>
		$(".selection-2").select2({
			minimumResultsForSearch: 20,
			dropdownParent: $('#dropDownSelect1')
		});
	</script>
<!--===============================================================================================-->
	<script src="new_user_style/vendor/daterangepicker/moment.min.js"></script>
	<script src="new_user_style/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="new_user_style/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="new_user_style/js/main.js"></script>

	<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>

</body>
</html>
