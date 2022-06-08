<?php
session_start();
error_reporting(0);
include('includes/config.php');
$cid = intval($_GET['cid']);
if (isset($_GET['action']) && $_GET['action'] == "add") {
	$id = intval($_GET['id']);
	if (isset($_SESSION['cart'][$id])) {
		$_SESSION['cart'][$id]['quantity']++;
	} else {
		$sql_p = "SELECT * FROM products WHERE id={$id}";
		$query_p = mysqli_query($con, $sql_p);
		if (mysqli_num_rows($query_p) != 0) {
			$row_p = mysqli_fetch_array($query_p);
			$_SESSION['cart'][$row_p['id']] = array("quantity" => 1, "price" => $row_p['productPrice']);
			header('location:my-cart.php');
		} else {
			$message = "Product ID is invalid";
		}
	}
}
// COde for Wishlist
if (isset($_GET['pid']) && $_GET['action'] == "wishlist") {
	if (strlen($_SESSION['login']) == 0) {
		header('location:login.php');
	} else {
		mysqli_query($con, "insert into wishlist(userId,productId) values('" . $_SESSION['id'] . "','" . $_GET['pid'] . "')");
		echo "<script>alert('Product aaded in wishlist');</script>";
		header('location:my-wishlist.php');
	}
}
?>
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

	<title>Mundo Digital - Productos</title>

	<!-- Bootstrap Core CSS -->
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">

	<!-- Customizable CSS -->
	<link rel="stylesheet" href="assets/css/main.css">
	<link rel="stylesheet" href="assets/css/blue.css">
	<link rel="stylesheet" href="assets/css/owl.carousel.css">
	<link rel="stylesheet" href="assets/css/owl.transitions.css">
	<!--<link rel="stylesheet" href="assets/css/owl.theme.css">-->
	<link href="assets/css/lightbox.css" rel="stylesheet">
	<link rel="stylesheet" href="assets/css/animate.min.css">
	<link rel="stylesheet" href="assets/css/rateit.css">
	<link rel="stylesheet" href="assets/css/bootstrap-select.min.css">
	
	<link rel="stylesheet" href="css/normalize.css">
	<link rel="stylesheet" href="css/style2.css">

	<!-- Icons/Glyphs -->
	<link rel="stylesheet" href="assets/css/font-awesome.min.css">

	<!-- Fonts -->
	<link href='http://fonts.googleapis.com/css?family=Roboto:300,400,500,700' rel='stylesheet' type='text/css'>

	<!-- Favicon -->
	<link rel="shortcut icon" href="assets/images/favicon.ico">

</head>

<body class="cnt-home">
	<?php require 'includes/header.php';?>
	<!-- ============================================== HEADER : END ============================================== -->
	</div><!-- /.breadcrumb -->
	<div class="body-content outer-top-xs">
		<div class='container'>
			<div class='row outer-bottom-sm'>
				<div class='col-md-3 sidebar'>
					<!-- ================================== TOP NAVIGATION ================================== -->
					<div class="side-menu animate-dropdown outer-bottom-xs">
						<div class="side-menu animate-dropdown outer-bottom-xs">
							<div class="head"><i class="icon fa fa-align-justify fa-fw"></i>Sub Categoria</div>
							<nav class="yamm megamenu-horizontal" role="navigation">

								<ul class="nav">
									<li class="dropdown menu-item">
										<?php $sql = mysqli_query($con, "select id,subcategory  from subcategory where categoryid='$cid'");

										while ($row = mysqli_fetch_array($sql)) {
										?>
											<a href="sub-category.php?scid=<?php echo $row['id']; ?>" class="dropdown-toggle"><i class="icon fa fa-desktop fa-fw"></i>
												<?php echo $row['subcategory']; ?></a>
										<?php } ?>

									</li>
								</ul>
							</nav>
						</div>
					</div><!-- /.side-menu -->
					<!-- ================================== TOP NAVIGATION : END ================================== -->
					<div class="sidebar-module-container">
						<h3 class="section-title">comprar por</h3>
						<div class="sidebar-filter">
							<!-- ============================================== SIDEBAR CATEGORY ============================================== -->
							<div class="sidebar-widget wow fadeInUp outer-bottom-xs ">
								<div class="widget-header m-t-20">
									<h4 class="widget-title">Categoria</h4>
								</div>
								<div class="sidebar-widget-body m-t-10">
									<?php $sql = mysqli_query($con, "select id,categoryName  from category");
									while ($row = mysqli_fetch_array($sql)) {
									?>
										<div class="accordion">
											<div class="accordion-group">
												<div class="accordion-heading">
													<a href="category.php?cid=<?php echo $row['id']; ?>" class="accordion-toggle collapsed">
														<?php echo $row['categoryName']; ?>
													</a>
												</div>
											</div>
										</div>
									<?php } ?>
								</div><!-- /.sidebar-widget-body -->
							</div><!-- /.sidebar-widget -->




							<!-- ============================================== COLOR: END ============================================== -->

						</div><!-- /.sidebar-filter -->
					</div><!-- /.sidebar-module-container -->
				</div><!-- /.sidebar -->
				<div class='col-md-9'>
					<!-- ========================================== SECTION – HERO ========================================= -->

					<div id="category" class="category-carousel hidden-xs">
						<div class="item">
							<div class="image">
								<img src="assets/images/banners/cat-banner-1.jpg" alt="" class="img-responsive">
							</div>
							<div class="container-fluid">
								<div class="caption vertical-top text-left">
									<div class="big-text">
										<br />
									</div>

									<?php $sql = mysqli_query($con, "select categoryName  from category where id='$cid'");
									while ($row = mysqli_fetch_array($sql)) {
									?>
										<div class="excerpt hidden-sm hidden-md">
											<?php echo htmlentities($row['categoryName']); ?>
										</div>
									<?php } ?>

								</div><!-- /.caption -->
							</div><!-- /.container-fluid -->
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<?php include('includes/footer.php'); ?>
	<script src="assets/js/jquery-1.11.1.min.js"></script>

	<script src="assets/js/bootstrap.min.js"></script>

	<script src="assets/js/bootstrap-hover-dropdown.min.js"></script>
	<script src="assets/js/owl.carousel.min.js"></script>

	<script src="assets/js/echo.min.js"></script>
	<script src="assets/js/jquery.easing-1.3.min.js"></script>
	<script src="assets/js/bootstrap-slider.min.js"></script>
	<script src="assets/js/jquery.rateit.min.js"></script>
	<script type="text/javascript" src="assets/js/lightbox.min.js"></script>
	<script src="assets/js/bootstrap-select.min.js"></script>
	<script src="assets/js/wow.min.js"></script>
	<script src="assets/js/scripts.js"></script>
</body>

</html>