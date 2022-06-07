<div class="top-bar animate-dropdown">
	<div class="container">
		<div class="header-top-inner">
			<div class="cnt-account">
				<ul class="list-unstyled">
					<?php if (strlen($_SESSION['login'])) {   ?>
						<li><a href="#"><i class="icon fa fa-user"></i>Bienvenido -<?php echo htmlentities($_SESSION['username']); ?></a></li>
					<?php } ?>

					<li><a href="my-account.php"><i class="icon fa fa-user"></i>Mi cuenta</a></li>
					<?php if (strlen($_SESSION['login']) == 0) {   ?>
						<li><a href="login.php"><i class="icon fa fa-sign-in"></i>Iniciar sesión</a></li>
					<?php } else { ?>

						<li><a href="logout.php"><i class="icon fa fa-sign-out"></i>Cerrar sesión</a></li>
					<?php } ?>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>