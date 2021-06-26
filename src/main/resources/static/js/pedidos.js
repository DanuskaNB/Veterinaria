/**
 * 
  */


const pedido = document.querySelector('.pedidos')

const traerPedidos = async(id) =>{
	const result = await fetch('boletaCliente?filtro1='+id)
	const bd = await result.json()
	let cantidadPedidos = bd.lenght

	let bd_result = new Array();
	let detalle_boleta = [];
	let boleta = new Array();
	let productos = []
	let template= '';
	let idBoleta = new Array();
	bd.map(item => {
		//console.log(item.detallesBoleta)
		bd_result.push(item.detallesBoleta) 
			 //<p>  ${item.detallesBoleta[0].producto.nombre}  </p>
	   //console.log(bd_result)
	   boleta = bd_result
	   //console.log(boleta)
	})
	
	
	
boleta.map(e =>{
		//console.log('Boleta',e)
			detalle_boleta = e
			//console.log('detalle_boleta',detalle_boleta)
			detalle_boleta.map(item => {
				productos = item
				
				//console.log(e)

				template += `
				<div class="col-md-12 pedido">
						<div class="section-title text-center">
							<h3 class="title">Tu Orden</h3>
						</div>
						<div class="order-summary">
							<div class="order-col">
								<div><strong>PRODUCT0</strong></div>
								<div><strong>PRECIO</strong></div>
							</div>
							<div class="order-products">
								<div class="order-col">
									<div>${productos.cantidad}x ${productos.producto.nombre}</div>
									<div>${productos.producto.precio}</div>
								</div>
					
							</div>
							<div class="order-col">
								<div>Envio</div>
								<div><strong>Gratis</strong></div>
							</div>
						
						</div>
							<div class="order-col-t">
								<div><strong>TOTAL</strong></div>
								<div><strong class="order-total">${productos.cantidad * productos.producto.precio}</strong></div>
							</div>
						
						 <button type="button" class="btn btn-primary tracking2" onclick="verTracking(${productos.productoHasBoletaPK.idBoleta})">
                            <span class="glyphicon glyphicon-remove"></span> seguimiento
                        </button></td>
					</div>
					
					
					
           
                  
	`
			})
		})
		//console.log('item',item)


	
	pedido.innerHTML = template
	
}

const tracking = document.querySelector('.tracking2')

const verTracking = async(e) =>{
	const result = await fetch('boleta?filtro2='+e)
	const bd = await result.json()
	let valorEstado = 1
	let valorInput = 1
	let icon = ''
	bd.map(item => {
		console.log(e)
		if(item.estado === 0){
			item.estado = 1
		}
		console.log(item.estado)
		valorEstado = item.estado
	
	
	if(valorEstado == 1){
		valorEstado = 'Revision de pago'
		valorInput = 1
		icon = 'https://intercompras.com/images/product/BROBOTIX_190432-21.jpg'
	}else if(valorEstado == 2){
		valorEstado = 'En camino'
		valorInput = 50
		icon = 'https://lleva.pe/wp-content/uploads/2020/03/wqeq3weq-01.png'
	}else{
		valorEstado = 'Recibido'
		valorInput = 100
		icon = 'https://i.pinimg.com/originals/75/7c/8c/757c8c26c2551b41d5a40d239a69bf11.jpg'
	}
	})
  
   alertify.alert().setContent(`<h1 class="text-center">Estado de su Pedido</h1>
  <img class="w-25" style="margin:0 40%" src="${icon}" />
  <h2 class="text-center">${valorEstado}</h2>`).show(); 
  
}



