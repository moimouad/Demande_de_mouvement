<!DOCTYPE html>
<html lang="en">
<head>
	<title>Boite de Reception</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="Users_table_style/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Users_table_style/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="new_user_style/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Users_table_style/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Users_table_style/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Users_table_style/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Users_table_style/css/util.css">
	<link rel="stylesheet" type="text/css" href="Users_table_style/css/main.css">
<!--===============================================================================================-->
</head>
<body>

	<%@ include file="menu.jsp" %>
		<br/>
	<br/>
	<br/>
	
	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100">
					<table>
						<thead>
							<tr class="table100-head">
								<th class="column1">Id de la demande</th>
								<th class="column1">Date de demande</th>
								<th class="column1">Type de demande</th>
								<th class="column1">Etat</th>
								<th class="column1">Boutton</th>
								<!--<th class="column6">Username</th>
								<th class="column6">Password</th>-->
							</tr>
						</thead>
						<tbody>
							<c:forEach var="demande" items="${ demandes }">
						    	<tr>
						           	<td class="column1"> <c:out value="${ demande.id }" /></td>
						           	<td class="column1"> <c:out value="${ demande.date_demande }" /></td>
						           	<td class="column1"> <c:out value="${ demande.type }" /></td>
						           	<td class="column1"> <c:out value="${ demande.etat }" /></td>
						           	<td class="column1"> 
						            	<form method="get" action="validation"> 
						            		<input type="hidden" name="id" value = "${demande.id}">
						            		<input type="submit" name="id" value = "Consulter">
						            	</form>
					            	</td>
						            	<!-- <td class="column6"> <c:out value="${ utilisateur.username }" /></td>
						            	<td class="column6"> <c:out value="${ utilisateur.password }" /></td> -->
					            </tr>
				        	</c:forEach>							
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>


	

<!--===============================================================================================-->	
	<script src="Users_table_style/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="Users_table_style/vendor/bootstrap/js/popper.js"></script>
	<script src="Users_table_style/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="Users_table_style/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="Users_table_style/js/main.js"></script>

</body>
</html>