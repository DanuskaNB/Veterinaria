<jsp:include page="reusable/header.jsp"/>
<body style="background-color: #F2F2F2;">
<jsp:include page="reusable/navegacion.jsp"/>
<div class="container  col-md-12">
		<div class="ventas">
           <div class="categorias">
               <p>Historias</p>
               <ul>
                   <li><a id="c-telefonia" href="verCrudMascota"><i class="fas fa-bone"></i>Mascota</a></li>
                   <li><a id="c-moda" href="verRegistroCliente"><i class="fas fa-user"></i>Datos</a></li>
            <!--       <li><a id="c-electronica" href="#"><i class="fas fa-bone"></i>Juguetes</a></li>
                   <li><a id="c-salud" href="#"><i class="fas fa-prescription-bottle-alt"></i>Medicinas</a></li>
                   <li><a id="c-laptop" href="#"><i class="fas fa-pump-soap"></i>Limpieza</a></li>
                   <li><a id="c-bolsa" href="#"><i class="fas fa-wine-bottle"></i>Otros</a></li>
                   <li><a id="c-all" href="#"><i class="fas fa-compress-alt"></i>Todos</a></li>  -->  
               </ul>
           </div>
           
           <div class="pedidos table-responsive">
                <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Producto</th>
                        <th>Cantidad</th>
                        <th class="text-center">Precio</th>
                        <th class="text-center">Total</th>
                        <th>Status</th>
                    </tr>
                </thead>
                  <tbody class="pedido"></tbody>
                  
              </table>
                 
            </div>
           
		 </div>
		  
</div>
<jsp:include page="reusable/footer.jsp"/>

 <script type="text/javascript" src="js/pedidos.js"></script> 
<script >

	if(`${sessionScope.objUsuario.idCliente}`){
	traerPedidos(`${sessionScope.objUsuario.idCliente}`)
	}else{
		pedido.innerHTML = `<h1 class="text-center">Inicie Sesion</h1>`
	}



</script>
</body>
</html>