<?php
session_start();
error_reporting(0);
include('includes/config.php');
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
			header('location:index.php');
		} else {
			$message = "Producto no válido";
		}
	}
}
?>

<?php include('includes/header.php'); ?>

<div class="body-content outer-top-xs" id="top-banner-and-menu">
	<div class="container">
		<div class="furniture-container homepage-container">
			<!-- Carousel -->
			<div id="demo" class="carousel slide" data-bs-ride="carousel">

				<!-- Indicators/dots -->
				<div class="carousel-indicators">
					<button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
					<button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
					<button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
				</div>

				<!-- The slideshow/carousel -->
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="img/carousel/1.png" alt="AMD" class="d-block" style="width:100%">
					</div>
					<div class="carousel-item">
						<img src="img/carousel/2.png" alt="INTEL" class="d-block" style="width:100%">
					</div>
					<div class="carousel-item">
						<img src="img/carousel/3.png" alt="NVIDIA" class="d-block" style="width:100%">
					</div>
				</div>

				<!-- Left and right controls/icons -->
				<button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
					<span class="carousel-control-prev-icon"></span>
				</button>
				<button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
					<span class="carousel-control-next-icon"></span>
				</button>
			</div>
			<!-- ============================================== SCROLL TABS ============================================== -->
			<div id="product-tabs-slider" class="scroll-tabs inner-bottom-vs  wow fadeInUp">
			<div class="more-info-tab clearfix">
			   <h3 class="new-product-title pull-left">Productos Destacados</h3>
			</div>
				<div class="tab-content outer-top-xs">
					<div class="tab-pane in active" id="all">
						<div class="product-slider">
							<div class="owl-carousel home-owl-carousel custom-carousel owl-theme" data-item="4">
								<?php
								$ret = mysqli_query($con, "select * from products");
								while ($row = mysqli_fetch_array($ret)) {
								?>
									<div class="item item-carousel">
										<div class="products">
											<div class="product">
												<div class="product-image">
													<div class="image">
														<a href="product-details.php?pid=<?php echo htmlentities($row['id']); ?>">
															<img src="admin/productimages/<?php echo htmlentities($row['id']); ?>/<?php echo htmlentities($row['productImage1']); ?>" data-echo="admin/productimages/<?php echo htmlentities($row['id']); ?>/<?php echo htmlentities($row['productImage1']); ?>" width="180" height="180" alt=""></a>
													</div><!-- /.image -->
												</div><!-- /.product-image -->
												<div class="product-info text-left">
													<h3 class="name"><a href="product-details.php?pid=<?php echo htmlentities($row['id']); ?>"><?php echo htmlentities($row['productName']); ?></a></h3>
													<div class="description"></div>
													<div class="product-price">
														<span class="price">
															$<?php echo htmlentities($row['productPrice']); ?> </span>
														<span class="price-before-discount">$<?php echo htmlentities($row['productPriceBeforeDiscount']); ?> </span>
													</div><!-- /.product-price -->
												</div><!-- /.product-info -->
												<div class="action"><a href="index.php?page=product&action=add&id=<?php echo $row['id']; ?>" class="lnk btn btn-primary">Agregar a carrito</a></div>
											</div><!-- /.product -->
										</div><!-- /.products -->
									</div><!-- /.item -->
								<?php } ?>
							</div><!-- /.home-owl-carousel -->
						</div><!-- /.product-slider -->
					</div>
					<div class="tab-pane" id="books">
						<div class="product-slider">
							<div class="owl-carousel home-owl-carousel custom-carousel owl-theme">
								<?php
								$ret = mysqli_query($con, "select * from products where category=3");
								while ($row = mysqli_fetch_array($ret)) {
								?>
									<div class="item item-carousel">
										<div class="products">

											<div class="product">
												<div class="product-image">
													<div class="image">
														<a href="product-details.php?pid=<?php echo htmlentities($row['id']); ?>">
															<img src="admin/productimages/<?php echo htmlentities($row['id']); ?>/<?php echo htmlentities($row['productImage1']); ?>" data-echo="admin/productimages/<?php echo htmlentities($row['id']); ?>/<?php echo htmlentities($row['productImage1']); ?>" width="180" height="300" alt=""></a>
													</div><!-- /.image -->
												</div><!-- /.product-image -->
												<div class="product-info text-left">
													<h3 class="name"><a href="product-details.php?pid=<?php echo htmlentities($row['id']); ?>"><?php echo htmlentities($row['productName']); ?></a></h3>
													<div class="rating rateit-small"></div>
													<div class="description"></div>

													<div class="product-price">
														<span class="price">
															$. <?php echo htmlentities($row['productPrice']); ?> </span>
														<span class="price-before-discount">$.<?php echo htmlentities($row['productPriceBeforeDiscount']); ?></span>

													</div><!-- /.product-price -->

												</div><!-- /.product-info -->
												<div class="action"><a href="index.php?page=product&action=add&id=<?php echo $row['id']; ?>" class="lnk btn btn-primary">Agregar a carrito</a></div>
											</div><!-- /.product -->

										</div><!-- /.products -->
									</div><!-- /.item -->
								<?php } ?>
							</div><!-- /.home-owl-carousel -->
						</div><!-- /.product-slider -->
					</div>
					<div class="tab-pane" id="furniture">
						<div class="product-slider">
							<div class="owl-carousel home-owl-carousel custom-carousel owl-theme">
								<?php
								$ret = mysqli_query($con, "select * from products where category=5");
								while ($row = mysqli_fetch_array($ret)) {
									require 'productos.php';
								} ?>
							</div>
						</div>
					</div>
				</div>
			</div>


			<!-- ============================================== TABS ============================================== -->
			<div class="sections prod-slider-small outer-top-small">
				<div class="row">
					<div class="col-md-6">
						<section class="section">
							<h3 class="section-title">Smart Phones</h3>
							<div class="owl-carousel homepage-owl-carousel custom-carousel outer-top-xs owl-theme" data-item="2">

								<?php
								$ret = mysqli_query($con, "select * from products where category=4 and subCategory=4");
								while ($row = mysqli_fetch_array($ret)) {
								?>



									<div class="item item-carousel">
										<div class="products">

											<div class="product">
												<div class="product-image">
													<div class="image">
														<a href="product-details.php?pid=<?php echo htmlentities($row['id']); ?>"><img src="admin/productimages/<?php echo htmlentities($row['id']); ?>/<?php echo htmlentities($row['productImage1']); ?>" data-echo="admin/productimages/<?php echo htmlentities($row['id']); ?>/<?php echo htmlentities($row['productImage1']); ?>" width="180" height="300"></a>
													</div><!-- /.image -->
												</div><!-- /.product-image -->
												<div class="product-info text-left">
													<h3 class="name"><a href="product-details.php?pid=<?php echo htmlentities($row['id']); ?>"><?php echo htmlentities($row['productName']); ?></a></h3>
													<div class="rating rateit-small"></div>
													<div class="description"></div>
													<div class="product-price">
														<span class="price">
															$. <?php echo htmlentities($row['productPrice']); ?> </span>
														<span class="price-before-discount">$.<?php echo htmlentities($row['productPriceBeforeDiscount']); ?></span>
													</div>
												</div>
												<div class="action"><a href="index.php?page=product&action=add&id=<?php echo $row['id']; ?>" class="lnk btn btn-primary">Agregar a carrito</a></div>
											</div>
										</div>
									</div>
								<?php } ?>
							</div>
						</section>
					</div>
					<div class="col-md-6">
						<section class="section">
							<h3 class="section-title">Laptops</h3>
							<div class="owl-carousel homepage-owl-carousel custom-carousel outer-top-xs owl-theme" data-item="2">
								<?php
								$ret = mysqli_query($con, "select * from products where category=4 and subCategory=6");
								while ($row = mysqli_fetch_array($ret)) {
								?>
									<div class="item item-carousel">
										<div class="products">

											<div class="product">
												<div class="product-image">
													<div class="image">
														<a href="product-details.php?pid=<?php echo htmlentities($row['id']); ?>"><img src="admin/productimages/<?php echo htmlentities($row['id']); ?>/<?php echo htmlentities($row['productImage1']); ?>" data-echo="admin/productimages/<?php echo htmlentities($row['id']); ?>/<?php echo htmlentities($row['productImage1']); ?>" width="300" height="300"></a>
													</div><!-- /.image -->
												</div><!-- /.product-image -->


												<div class="product-info text-left">
													<h3 class="name"><a href="product-details.php?pid=<?php echo htmlentities($row['id']); ?>"><?php echo htmlentities($row['productName']); ?></a></h3>
													<div class="rating rateit-small"></div>
													<div class="description"></div>
													<div class="product-price">
														<span class="price">
															$ .<?php echo htmlentities($row['productPrice']); ?>
														</span>
														<span class="price-before-discount">$.<?php echo htmlentities($row['productPriceBeforeDiscount']); ?></span>
													</div>
												</div>
												<div class="action"><a href="index.php?page=product&action=add&id=<?php echo $row['id']; ?>" class="lnk btn btn-primary">Agregar a carrito</a></div>
											</div>
										</div>
									</div>
								<?php } ?>
							</div>
						</section>
					</div>
				</div>
			</div>
			<!-- ============================================== TABS : END ============================================== -->
		</div>
	</div>
	<?php include('includes/footer.php'); ?>