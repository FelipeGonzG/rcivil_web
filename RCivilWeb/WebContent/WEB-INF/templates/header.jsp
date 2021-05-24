<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="vendor/bulma/css/bulma.min.css" rel="stylesheet" />
</head>
<body>
	<header>
		<nav class="navbar has-background-white-ter" role="navigation"
			aria-label="main navigation">
			<div class="navbar-brand">
				<figure class="image is-128x128">
					<img src="img/logo-registro-civil-300-jpg.jpg">
				</figure>
				<a role="button" class="navbar-burger" aria-label="menu"
					aria-expanded="false" data-target="navbarBasicExample"> <span
					aria-hidden="true"></span> <span aria-hidden="true"></span> <span
					aria-hidden="true"></span>
				</a>
			</div>

			<div id="navbarBasicExample" class="navbar-menu">
				<div class="navbar-start">
					<a class="navbar-item "> Home </a>

					<div class="navbar-item has-dropdown is-hoverable">
						<a class="navbar-link "> Solicitudes </a>

						<div class="navbar-dropdown">
							<a class="navbar-item" href="AgregarSolicitudController.do"> Ingresar </a> 
							<a class="navbar-item" href="AtenderSolicitudesController.do">Atender </a>

						</div>
					</div>
				</div>

			</div>
		</nav>
	</header>
</html>