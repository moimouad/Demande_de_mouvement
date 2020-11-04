<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">

<nav class="navbar navbar-expand-lg navbar-black bg-light fixed-top">

  <div class="collapse navbar-collapse" id="navbarText">
    <ul class="navbar-nav mr-auto">
      <c:if test="${sessionScope.id == 1}"><li class="nav-item"> <a class="nav-link" href="/test/page1">Add User</a> </li></c:if>
      <li class="nav-item"> <a class="nav-link" href="/test/users">Existing Users</a> </li>
      <li class="nav-item"> <a class="nav-link" href="/test/reception">Reception Box</a> </li>
      <li class="nav-item"> <a class="nav-link" href="/test/mes_dem">My Demands</a> </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          New Demand
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="/test/pe">PE</a>
          <a class="dropdown-item" href="/test/rc">RC</a>
          <a class="dropdown-item" href="/test/ch_p">CH.P</a>
          <a class="dropdown-item" href="/test/aut_s">AUT.S</a>
          <a class="dropdown-item" href="/test/autre">Autre</a>
        </div>
      </li>
    </ul>
    <c:if test="${ !empty sessionScope.prenom && !empty sessionScope.nom }">
	    <span class="navbar-text">
	   
	      <ul class="navbar-nav mr-auto">
	      	<li class="nav-item"> <a class="nav-link disabled" href="#"> Hello ${ sessionScope.prenom } ${ sessionScope.nom } !</a>  </li>
	      	<li class="nav-item"> <a class="nav-link" href="/test/gestion_user">My Account</a>  </li>
	      	<li class="nav-item"> <a class="nav-link" href="/test/login">Log Out</a>  </li>
	      </ul>
	    </span>
    </c:if>
  </div>
</nav>