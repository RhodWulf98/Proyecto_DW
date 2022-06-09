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
?>

<?php require 'includes/header.php'; ?>
<!-- ============================================== HEADER : END ============================================== -->
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
				<!-- ============================================== COLOR: END ============================================== -->

			</div><!-- /.sidebar-filter -->
		</div><!-- /.sidebar-module-container -->
	</div><!-- /.sidebar -->
	</div>
		<?php include('includes/footer.php'); ?>