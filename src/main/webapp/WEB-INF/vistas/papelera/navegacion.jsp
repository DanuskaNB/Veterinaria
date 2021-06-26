
		<!-- HEADER -->
		<header>
			<!-- TOP HEADER -->
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
						<li><a href="verCita"><i class="fa fa-user-o"></i>Citas</a></li>
						<li><a href="login"><i class="fa fa-lock"></i>Salir</a></li>
					</ul>
				</div>
			</div>
			<!-- /TOP HEADER -->

			<!-- MAIN HEADER -->
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
						<!-- /LOGO -->

						<!-- SEARCH BAR -->
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
						<!-- /SEARCH BAR -->

						<!-- ACCOUNT -->
						<div class="col-md-3 clearfix">
							<div class="header-ctn">
								<!-- Wishlist -->
								<div>
									<a href="cuenta">
										<i class="fa fa-heart-o"></i>
										<span>Pedidos</span>
										<div class="qty cantidadPedidos">2</div>
									</a>
								</div>
								<!-- /Wishlist -->

								<!-- Cart -->
								<div class="dropdown">
									<a href="carrito">
										<i class="fa fa-shopping-cart"></i>
										<span>Ir a comprar</span>
										<div class="qty">1</div>
									</a>
									<div class="cart-dropdown">
										<div class="cart-list">
											<div class="product-widget">
												<div class="product-img">
													<img src="./img/product01.png" alt="">
												</div>
												<div class="product-body">
													<h3 class="product-name"><a href="#">product name goes here</a></h3>
													<h4 class="product-price"><span class="qty">1x</span>$980.00</h4>
												</div>
												<button class="delete"><i class="fa fa-close"></i></button>
											</div>

											<div class="product-widget">
												<div class="product-img">
													<img src="./img/product02.png" alt="">
												</div>
												<div class="product-body">
													<h3 class="product-name"><a href="#">product name goes here</a></h3>
													<h4 class="product-price"><span class="qty">3x</span>$980.00</h4>
												</div>
												<button class="delete"><i class="fa fa-close"></i></button>
											</div>
										</div>
										<div class="cart-summary">
											<small>3 Item(s) selected</small>
											<h5>SUBTOTAL: $2940.00</h5>
										</div>
										<div class="cart-btns">
											<a href="#">View Cart</a>
											<a href="#">Checkout  <i class="fa fa-arrow-circle-right"></i></a>
										</div>
									</div>
								</div>
								<!-- /Cart -->

								<!-- Menu Toogle -->
								<div class="menu-toggle">
									<a href="#">
										<i class="fa fa-bars"></i>
										<span>Menu</span>
									</a>
								</div>
								<!-- /Menu Toogle -->
							</div>
						</div>
						<!-- /ACCOUNT -->
					</div>
					<!-- row -->
				</div>
				<!-- container -->
			</div>
			<!-- /MAIN HEADER -->
		</header>
		
   <script>
   
  
   const title = document.querySelector('.title');
   const cantidad = document.querySelector('.cantidadPedidos');

   const traerCantidad= async(id) =>{
   	const result = await fetch('boletaCliente?filtro1='+id)
   	const bd = await result.json()
   	let cantidadPedidos = bd.length
   	console.log(bd)
   	  cantidad.textContent = cantidadPedidos
   };
   
   if(`${sessionScope.objUsuario.idCliente}`){
	   traerCantidad(`${sessionScope.objUsuario.idCliente}`)
		}else{
			cantidad.textContent = 0
		}
   
   
   const verUsuario = () =>{
	  
	  
	   if(`${sessionScope.objUsuario.idCliente}`){
		   title.textContent =  `${sessionScope.objUsuario.nombre}`
	   }else{
		   title.textContent = 'Scobby'
	   }
	  // `${sessionScope.objUsuario.idCliente}` : `${sessionScope.objUsuario.idCliente}`  ? Entre Patas
   }
   
    verUsuario();
   
   </script>