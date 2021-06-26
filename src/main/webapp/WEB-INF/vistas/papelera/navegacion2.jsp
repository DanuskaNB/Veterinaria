		<header>
			<div id="top-header">
				<div class="container">
					<ul class="header-links pull-left">
						<li><a href="#"><i class="fa fa-phone"></i> +021-95-51-84</a></li>
						<li><a href="#"><i class="fa fa-envelope-o"></i> email@email.com</a></li>
						<li><a href="#"><i class="fa fa-map-marker"></i> 1734 Stonecoal Road</a></li>
					</ul>
					<ul class="header-links pull-right">
						<li><a href="registroMascota"><i class="fa fa-dollar"></i> Mi Mascota</a></li>
						<li><a href="registroCliente"><i class="fa fa-user-o"></i>Mi Cuenta</a></li>
					</ul>
				</div>
			</div>
			<div id="header">
				<!-- container -->
				<div class="container">
					<!-- row -->
					<div class="row">
						<!-- LOGO -->
						<div class="col-md-3">
							
								<a href="store">
									<h1 class="title">SSSS</h1>
								</a>
							
						</div>
						<div class="col-md-6">
							<div class="header-search">
								<form>
									<select class="input-select">
										<option value="0">All Categories</option>
										<option value="1">Category 01</option>
										<option value="1">Category 02</option>
									</select>
									<input class="input" placeholder="Search here">
									<button class="search-btn">Search</button>
								</form>
							</div>
						</div>
		</header>
    <script> 
   const title = document.querySelector('.title');
   const verUsuario = () =>{
	   if(`${sessionScope.objUsuario.idCliente}`){
		   title.textContent =  `${sessionScope.objUsuario.nombre}`
	   }else{
		   title.textContent = 'Scobby'
	   }
   }
   
    verUsuario();
   
   </script>