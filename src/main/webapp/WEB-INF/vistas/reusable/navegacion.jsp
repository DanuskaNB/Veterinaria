 <header class="col-md-12">
        <nav>
           <div class="navbar">
               <ul class="menu">
                   <li class="animate__animated animate__backInLeft"><a href="tienda" class="title"></a></li>
                   <!-- <li><a href="">Contacto</a></li> -->
               </ul>
               <div class="buscar">
                <input id="buscar" type="text" placeholder="Buscar Producto">
                <span><i class="fas fa-search"></i></span>
               </div>

               <div class="botones-cuenta">
               
			       <button id="cesta" title="Cesta"><i class="fas fa-cart-plus"></i><span class="cesta-numero" id="cesta-numero">0</span></button>
			       <a href="cuenta" class="footer-a" ><button id="salir" title="Mi Cuenta"><i class="fas fa-user-friends"></i> Cuenta</button></a>
			       <a href="login" class="footer-a" ><button id="salir" title="Salir"><i class="fas fa-sign-out-alt"></i> Acceso</button></a>
                </div>
           </div>
        </nav>
        <br><br><br>
    </header>
    <br>
    
   <script>
   
   const cesta = document.querySelector('#cesta');
   cesta.addEventListener('click',()=>{
	  location.href = "verBoleta"
   })
   
   const title = document.querySelector('.title');
   const verUsuario = () =>{
	   if(`${sessionScope.objUsuario.idCliente}`){
		   title.textContent =  `${sessionScope.objUsuario.nombre}`
	   }else{
		   title.textContent = 'Entre Patas'
	   }
	  // `${sessionScope.objUsuario.idCliente}` : `${sessionScope.objUsuario.idCliente}`  ? Entre Patas
   }
   
    verUsuario();
   
   </script>