<jsp:include page="papelera/header.jsp"/>
<body style="background-color: #40407a;">
<jsp:include page="papelera/navegacion2.jsp"/>

<div class="" style="width: 94%; margin: 0 3%">
		
           <div class="pedidos">
               
                  <div class="pedido"></div>
                  
             
            </div>
           
		 </div>
<jsp:include page="papelera/footer.jsp"/>

 <script type="text/javascript" src="js/pedidos.js"></script> 
<script >

	if(`${sessionScope.objUsuario.idCliente}`){
	traerPedidos(`${sessionScope.objUsuario.idCliente}`)
	}else{
		pedido.innerHTML = `<h1 class="text-center">Invitado</h1>`
	}



</script>
</body>
</html>