<!DOCTYPE html>
<html lang="es">

<head>
	<!-- Meta -->
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="keywords" content="MediaCenter, Template, eCommerce">
	<meta name="robots" content="all">

	<title>Mundo Digital</title>

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">

	<!-- Customizable CSS -->
	<link rel="stylesheet" href="assets/css/main.css">
	<link rel="stylesheet" href="assets/css/blue.css">
	<link rel="stylesheet" href="assets/css/owl.carousel.css">
	<link rel="stylesheet" href="assets/css/owl.transitions.css">
	<link rel="stylesheet" href="assets/css/owl.theme.css">
	<link href="assets/css/lightbox.css" rel="stylesheet">
	<link rel="stylesheet" href="assets/css/animate.min.css">
	<link rel="stylesheet" href="assets/css/rateit.css">
	<link rel="stylesheet" href="assets/css/bootstrap-select.min.css">
	<link rel="stylesheet" href="assets/css/font-awesome.min.css">
	<link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>

	<!-- Favicon -->
	<link rel="shortcut icon" href="assets/images/favicon.ico">

	<link rel="stylesheet" href="css/normalize.css">
	<link rel="stylesheet" href="css/style2.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>

	<header id="cabecera">
		<a href="index.php">
			<img id="logotipo" src="img/MundoDigitalLogo.svg" alt="Logotipo" />
		</a>
		<nav class="enlaces-principales">
			<ul>
				<li>
					<a class="sombreado" href="index.php">Inicio</a>
				</li>
				<?php $sql = mysqli_query($con, "select id,categoryName  from category limit 6");
				while ($row = mysqli_fetch_array($sql)) {
				?>
					<li>
						<a class="sombreado" href="category.php?cid=<?php echo $row['id']; ?>"> <?php echo $row['categoryName']; ?></a>
					</li>
				<?php } ?>
			</ul>
		</nav>
		<nav class="enlaces-principales">
			<ul>
				<?php if (strlen($_SESSION['login'])) {   ?>
					<li><a href="#"><i class="icon fa fa-user"></i>Bienvenido -<?php echo htmlentities($_SESSION['username']); ?></a></li>
				<?php } ?>
					<li id="sesión"><a href="my-account.php"><i class="icon fa fa-user"></i> Mi cuenta</a></li>
				<?php if (strlen($_SESSION['login']) == 0) {   ?>
					<li><a href="login.php"><i class="icon fa fa-sign-in"></i> Iniciar sesión</a></li>
				<?php } else { ?>
					<li id="sesión"><a href="logout.php"><i class="icon fa fa-sign-out"></i>  Cerrar sesión</a></li>
				<?php } ?>
			</ul>
		</nav>
	</header>