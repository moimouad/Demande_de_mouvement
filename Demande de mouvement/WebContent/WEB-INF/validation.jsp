<!DOCTYPE html>
<html lang="en">
<head>
	<title>Validation</title>
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
			<form class="contact100-form validate-form" method="post" action="reception">
				<c:if test='${ demande.type == "PE" }'>
					<span class="contact100-form-title">
						Permission Exceptionnelle :
					</span>
	
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Nom :</span>
						<input class="input100" type="text" value="${ utilisateur.nom }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Prenom :</span>
						<input class="input100" type="text" value="${ utilisateur.prenom }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Code :</span>
						<input class="input100" type="text" value="${ utilisateur.code }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Matricule :</span>
						<input class="input100" type="text" value="${ utilisateur.mat }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Fonction :</span>
						<input class="input100" type="text" value="${ utilisateur.fonction }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Equipe :</span>
						<input class="input100" type="text" value="${ utilisateur.equipe }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Date de La demande :</span>
						<input class="input100" type="text" value="${ demande.date_demande }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Pour le :</span>
						<input class="input100" type="text" value="${ demande.date }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Motif :</span>
						<input class="input100" type="text" value="${ demande.motif }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Etat de la demande :</span>
						<input class="input100" type="text" value="${ demande.etat }" disabled>
						<span class="focus-input100"></span>
					</div>
					
				</c:if>
				
				<c:if test='${ demande.type == "RC" }'>
					<span class="contact100-form-title">
						Repos Compensé : 
					</span>
	
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Nom :</span>
						<input class="input100" type="text" value="${ utilisateur.nom }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Prenom :</span>
						<input class="input100" type="text" value="${ utilisateur.prenom }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Code :</span>
						<input class="input100" type="text" value="${ utilisateur.code }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Matricule :</span>
						<input class="input100" type="text" value="${ utilisateur.mat }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Fonction :</span>
						<input class="input100" type="text" value="${ utilisateur.fonction }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Equipe :</span>
						<input class="input100" type="text" value="${ utilisateur.equipe }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Date de La demande :</span>
						<input class="input100" type="text" value="${ demande.date_demande }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Pour le :</span>
						<input class="input100" type="text" value="${ demande.date }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Motif :</span>
						<input class="input100" type="text" value="${ demande.motif }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Etat de la demande :</span>
						<input class="input100" type="text" value="${ demande.etat }" disabled>
						<span class="focus-input100"></span>
					</div>
					
				</c:if>
				
				<c:if test='${ demande.type == "CH-P" }'>
					<span class="contact100-form-title">
						Changement de Poste : 
					</span>
	
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Nom :</span>
						<input class="input100" type="text" value="${ utilisateur.nom }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Prenom :</span>
						<input class="input100" type="text" value="${ utilisateur.prenom }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Code :</span>
						<input class="input100" type="text" value="${ utilisateur.code }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Matricule :</span>
						<input class="input100" type="text" value="${ utilisateur.mat }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Fonction :</span>
						<input class="input100" type="text" value="${ utilisateur.fonction }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Equipe :</span>
						<input class="input100" type="text" value="${ utilisateur.equipe }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Date de La demande :</span>
						<input class="input100" type="text" value="${ demande.date_demande }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Pour le :</span>
						<input class="input100" type="text" value="${ demande.date }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Poste actuel :</span>
						<input class="input100" type="text" value="${ demande.poste_act }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Poste demandé :</span>
						<input class="input100" type="text" value="${ demande.poste_dem }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Nom du permutant :</span>
						<input class="input100" type="text" value="${ permutant.nom }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Prenom du permutant :</span>
						<input class="input100" type="text" value="${ permutant.prenom }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Code du permutant :</span>
						<input class="input100" type="text" value="${ permutant.code }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Matricule du permutant :</span>
						<input class="input100" type="text" value="${ permutant.mat }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Fonction du permutant :</span>
						<input class="input100" type="text" value="${ permutant.fonction }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Equipe du permutant :</span>
						<input class="input100" type="text" value="${ permutant.equipe }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Etat de la demande :</span>
						<input class="input100" type="text" value="${ demande.etat }" disabled>
						<span class="focus-input100"></span>
					</div>
					
				</c:if>
				
				<c:if test='${ demande.type == "AUT-S" }'>
					<span class="contact100-form-title">
						Autorisation de Sortie : 
					</span>
	
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Nom :</span>
						<input class="input100" type="text" value="${ utilisateur.nom }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Prenom :</span>
						<input class="input100" type="text" value="${ utilisateur.prenom }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Code :</span>
						<input class="input100" type="text" value="${ utilisateur.code }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Matricule :</span>
						<input class="input100" type="text" value="${ utilisateur.mat }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Fonction :</span>
						<input class="input100" type="text" value="${ utilisateur.fonction }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Equipe :</span>
						<input class="input100" type="text" value="${ utilisateur.equipe }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Date de La demande :</span>
						<input class="input100" type="text" value="${ demande.date_demande }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Pour le :</span>
						<input class="input100" type="text" value="${ demande.date }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">L'heure :</span>
						<input class="input100" type="text" value="${ demande.heure }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Motif :</span>
						<input class="input100" type="text" value="${ demande.motif }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Etat de la demande :</span>
						<input class="input100" type="text" value="${ demande.etat }" disabled>
						<span class="focus-input100"></span>
					</div>
					
				</c:if>
				
				<c:if test='${ demande.type == "Autre" }'>
					<span class="contact100-form-title">
						Autre :
					</span>
	
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Nom :</span>
						<input class="input100" type="text" value="${ utilisateur.nom }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Prenom :</span>
						<input class="input100" type="text" value="${ utilisateur.prenom }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Code :</span>
						<input class="input100" type="text" value="${ utilisateur.code }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Matricule :</span>
						<input class="input100" type="text" value="${ utilisateur.mat }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Fonction :</span>
						<input class="input100" type="text" value="${ utilisateur.fonction }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Equipe :</span>
						<input class="input100" type="text" value="${ utilisateur.equipe }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Date de La demande :</span>
						<input class="input100" type="text" value="${ demande.date_demande }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Objet :</span>
						<input class="input100" type="text" value="${ demande.poste_act }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Description : :</span>
						<input class="input100" type="text" value="${ demande.poste_dem }" disabled>
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input" >
						<span class="label-input100">Etat de la demande :</span>
						<input class="input100" type="text" value="${ demande.etat }" disabled>
						<span class="focus-input100"></span>
					</div>
					
				</c:if>
	
	
				<div class="container-contact100-form-btn">
					<div class="wrap-contact100-form-btn">
						<div class="contact100-form-bgbtn"></div>
						<button class="contact100-form-btn">
							<span>
								Retourner
								<i class="fa fa-long-arrow-right m-l-7" aria-hidden="true"></i>
							</span>
						</button>
					</div>
				</div>	
			</form>
			
			<form class="contact100-form validate-form" method="post" action="validation">
				<input type="hidden" name="dicision" value = "valider">
				<input type="hidden" name="id_dem" value = "${demande.id}">
				<input type="hidden" name="id_user" value = "${demande.id_source}">
				<div class="container-contact100-form-btn">
					<div class="wrap-contact100-form-btn">
						<div class="contact100-form-bgbtn"></div>
						<button class="contact100-form-btn">
							<span>
								Valider
								<i class="fa fa-long-arrow-right m-l-7" aria-hidden="true"></i>
							</span>
						</button>
					</div>
				</div>	
			</form>
			
			<form class="contact100-form validate-form" method="post" action="validation">
				<input type="hidden" name="dicision" value = "rejeter">
				<input type="hidden" name="id_dem" value = "${demande.id}">
				<input type="hidden" name="id_user" value = "${demande.id_source}">
				<div class="container-contact100-form-btn">
					<div class="wrap-contact100-form-btn">
						<div class="contact100-form-bgbtn"></div>
						<button class="contact100-form-btn">
							<span>
								Rejeter
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
