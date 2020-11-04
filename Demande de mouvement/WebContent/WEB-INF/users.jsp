<!DOCTYPE html>
<html lang="en">
<head>
	<title>Existing Users</title>
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
								<th class="column1">Id</th>
								<th class="column1">Nom</th>
								<th class="column1">Prenom</th>
								<th class="column1">Code</th>
								<th class="column1">Matricule</th>
								<th class="column1">Fonction</th>
								<th class="column1">Equipe</th>
								<c:if test="${sessionScope.id == 1}"> 
									<th class="column1">Username</th>
									<th class="column1">Password</th>
									<th class="column1">Boutton</th>
								</c:if>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="utilisateur" items="${ utilisateurs }">
					            <tr>
					            	<td class="column1"> <c:out value="${ utilisateur.id }" /></td>
					            	<td class="column1"> <c:out value="${ utilisateur.nom }" /></td>
					            	<td class="column1"> <c:out value="${ utilisateur.prenom }" /></td>
					            	<td class="column1"> <c:out value="${ utilisateur.code }" /></td>
					            	<td class="column1"> <c:out value="${ utilisateur.mat }" /></td>
					            	<td class="column1"> <c:out value="${ utilisateur.fonction }" /></td>
					            	<td class="column1"> <c:out value="${ utilisateur.equipe }" /></td>
					            	<c:if test="${sessionScope.id == 1}">
					            		<td class="column1"> <c:out value="${ utilisateur.username }" /></td>
					            		<td class="column1"> <c:out value="${ utilisateur.password }" /></td>
					            		<td class="column1"> 
							            	<form method="post" action="users"> 
							            		<input type="hidden" name="id" value = "${utilisateur.id}">
							            		<input type="submit" value = "Supprimer">
							            	</form>
					            	</td>
					            	</c:if>
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