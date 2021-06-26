  <!-- Page Wrapper -->
   <jsp:include page="../papelera/opciones.jsp"/>
		
<div class="col-md-10" style="margin-left:20%;" >                       
<h4>PEDIDOS DE CLIENTES</h4>
					<div class="row my-2" >
						
						<div class="m-2" >
							<button type="button" class="btn btn-primary" id="id_btn_filtrar" style="width: 150px">FILTRAR</button>
						</div>
						
					</div>
					
					<div class="row" > 
						<div class="table-responsive">
						
									<table id="id_table" class="table table-bordered" >
										<thead>
											<tr>
												<th style="width: 10%">ID</th>
												<th style="width: 20%">Fecha</th>
												<th style="width: 10%">Estado</th>
												<th style="width: 10%">Cliente</th>
										        <th style="width: 10%">Correo</th>
												<th style="width: 20%">Producto</th>
												<th style="width: 10%">Actualiza </th>
												<th style="width: 10%">Elimina </th>
											</tr>
										</thead>
											<tbody>
											</tbody>
										</table>	
									
							
					</div>
		  </div>
  
  
		</div>
  
		 <div class="modal fade" id="id_div_modal_actualiza" >
			<div class="modal-dialog">
		
				<!-- Modal content-->
				<div class="modal-content">
				<div class="modal-header" >
				<h4><span class="glyphicon glyphicon-ok-sign"></span> Actualiza Producto</h4>
					<button type="button" class="btn-close btn btn-danger" data-bs-dismiss="modal" aria-label="Close"><i class="fas fa-times"></i></button>
					
				</div>
				<div class="modal-body">
						<form id="id_form_actualiza" accept-charset="UTF-8"  action="actualizaCrudProducto"  method="post" enctype="multipart/form-data">
		                    
		                                	<div class="form-group">
		                                        <label class="col-form-label" for="id_act_idservicio">Id Boleta</label>
													<input class="form-control" id="id_act_idservicio" name="idboleta" type="text" readonly />
		                                    </div>
		                                    
		                                  
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_act_descripcion">Estado</label>
											   <select class="form-control" name="estado">
												  <option value="1">Revision de Pago</option>
												  <option value="2" selected>En Camino</option>
												  <option value="3">Recibido</option>
												</select>
													
												
		                                    </div>
		                                    
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_act_precio">Cliente</label>
													<input class="form-control" id="id_act_precio" name="cliente.idCliente" value="" placeholder="Ingrese el Precio" type="text" maxlength="20" readonly readonly />
		                                    </div>
		                                  
		                                    <div class="form-group">
		                                    
		                                       
													<input class="form-control" id="id_act_fecha" name="usuario.idUsuario" value="1" placeholder="Ingrese la fecha de servicio" type="text" hidden />
		                                       
		                                    </div> 
		                                                
		                                    <div class="form-group">
		                                        <div class="col-lg-9 col-lg-offset-3">
		                                        	<button type="button" class="btn btn-primary my-2" id="id_btn_actualiza">ACTUALIZA</button>
		                                        </div>
		                                    </div>
		                              
		                </form>   
				
				</div>
			</div>
		</div>
			
		</div>
		
		
				 <div class="modal fade" id="idModalElimina" >
					<div class="modal-dialog" style="width: 60%">
				 	
				 	<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header" style="padding: 35px 50px">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4><span class="glyphicon glyphicon-ok-sign"></span>¿Desea eliminar el servicio?</h4>
						</div>
				
						  <div class="modal-footer">
						    <button type="button" id="idBtnElimina" name="modalDe" class="btn btn-primary">ELIMINAR</button>
						    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
						  </div>
					</div>
				</div>
				</div>

                    <!-- Page Heading -->
                   
                    <!-- Content Row -->
                  
                    <!-- Content Row -->

                
                    <!-- Content Row -->
                    <div class="row">

                        <!-- Content Column -->
                        <div class="col-lg-6 mb-4">

                            <!-- Project Card Example -->
                         
                            <!-- Color System -->
                           

                        </div>

                        <div class="col-lg-6 mb-4">


                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2020</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">Ã—</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>


</body>

<jsp:include page="../papelera/footerAdmin.jsp"/>

<script type="text/javascript">	

		$("#id_btn_filtrar").click(function(){
			var fil=$("#id_txt_filtro").val();
			$.getJSON("listaBoletas",{"filtro":fil}, function (lista){
				agregarGrilla(lista);
			});
		});
		
   function listarTodoBoletas(){
	   var fil=$("#id_txt_filtro").val();
		$.getJSON("listaBoletas",{"filtro":fil}, function (lista){
			agregarGrilla(lista);
		});
   }
		
	
	function agregarGrilla(lista){
		 $('#id_table').DataTable().clear();
		 $('#id_table').DataTable().destroy();
		 $('#id_table').DataTable({
				data: lista,
				searching: true,
				ordering: true,
				processing: true,
				pageLength: 5,
				lengthChange: false,
				columns:[
					{data: "idboleta"},
					{data: "fecha"},
					{data: function(row, type, val, meta){
						if(row.estado==1){
						return	'En revision de pago'
						}else if(row.estado==2){
						return 	'En Camino'
						}else{
						return	'Recibido'
						}
					},className:'text-center'},	
					
					{data: "cliente.nombre"},
					{data: "cliente.correo"},
					
					{data: "detallesBoleta[0].producto.nombre"},					
					{data: function(row, type, val, meta){
					    var salida='<button type="button" style="width: 90px" class="btn btn-info btn-sm" onclick="editar(\''+row.idboleta + '\',\'' + row.fecha +'\',\'' + row.estado  + '\',\'' + row.cliente.idCliente + '\')">Editar</button>';					   
						return salida;
					},className:'text-center'},	
					{data: function(row, type, val, meta){
					    var salida='<button type="button" style="width: 90px" class="btn btn-danger btn-sm" onclick="eliminar(\'' + row.idboleta + '\')">Eliminar</button>';
						return salida;
					},className:'text-center'},													
				]                                     
		    });
	}
	
	
	
	function eliminar(id){	
		
		alertify.confirm('Eliminar', 'Si, Eliminar', function(){ 
			 fetch('eliminaCrudServicio?id='+id)
				.then(response => response.json())
				.then(data=>{
					listarServicios()
				}), alertify.error('Eliminado') }
        , function(){ alertify.error('Cancelado')});

	}
	
	
	
	function editar(id,fecha,estado,cliente,producto){	
			$('#id_act_idservicio').val(id);
			$('#id_act_nombre').val(fecha);
			$('#id_act_descripcion').val(estado);
			$('#id_act_precio').val(cliente);
			
			$('#id_div_modal_actualiza').modal("show");
	}
	
	function limpiarFormulario(){	
		$('#id_reg_idservicio').val('');
		$('#id_reg_nombre').val('');
		$('#id_reg_descripcion').val('');
		$('#id_reg_precio').val('');
		$('#id_reg_horario').val('');
		$('#id_reg_fecha').val('');
		$('#id_div_modal_actualiza').modal("show");
	}
	
	$('.levantarRegistro').click(function(){
		$('#modal_registra').modal("show");
	})
	

	$("#id_btn_actualiza").click(function(){
		console.log('ingresó al evento actualizar')
		var validator = $('#id_form_actualiza').data('bootstrapValidator');
	    validator.validate();
		
	    if (validator.isValid()) {
	        $.ajax({
	          type: "POST",
	          url: "actualizaBoleta", 
	          data: $('#id_form_actualiza').serialize(),
	          success: function(data){
	        	  listarTodoBoletas()
	        	  $('#id_div_modal_actualiza').modal("hide");
	        	  alertify.success('Actualizado con exito')
	        	  limpiarFormulario();
	        	//  mostrarMensaje(data.mensaje);
	          },
	          error: function(){
	        	  alertify.error('Error al actualizar')
	          }
	        });
	        
	    }
	});

</script>
<script type="text/javascript">

	$('#id_form_registra').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	"nombre":{
                selector: "#id_reg_nombre",
                validators:{
                    notEmpty: {
                         message: 'El nombre del Servicio es obligatorio'
                    },
                    stringLength: {
                        min: 3,
                        max: 40,
                        message: 'El nombre del Servicio es de 3 a 40 caracteres'
                    },
                }
            },
            "descripcion":{
                selector: "#id_reg_descripcion",
                validators:{
                    notEmpty: {
                         message: 'La descripcion es obligatorio'
                    },
                    stringLength: {
                        min: 3,
                        max: 40,
                        message: 'La descripcion es de 3 a 40 caracteres'
                    },
                }
            },
            "precio":{
                selector: "#id_reg_precio",
                validators:{
                    notEmpty: {
                         message: 'El nombre del Servicio es obligatorio'
                    },
                    stringLength: {
                        min: 2,
                        max: 40,
                        message: 'Solo se permiten números'
                    },
                }
            },
            "horario":{
                selector: "#id_reg_horario",
                validators:{
                    notEmpty: {
                         message: 'El horario es obligatorio'
                    },
                    stringLength: {
                        min: 3,
                        max: 10,
                        message: 'El horario es de 3 a 10 caracteres'
                    },
                }
            },
            "fecha":{
           	 selector: "#id_reg_fecha",
                validators:{
               	 notEmpty: {
                        message: 'La fecha es obligatoria'
                   },
                   date: {
                       message: 'La fecha tiene formato DD/MM/YYYY',
                       format: 'DD/MM/YYYY'
                   },
                }
           }
        }   
    });


	$('#id_form_actualiza').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	"nombre":{
                selector: "#id_act_nombre",
                validators:{
                    notEmpty: {
                         message: 'El nombre del producto es obligatorio'
                    },
                    stringLength: {
                        min: 3,
                        max: 40,
                        message: 'El nombre del producto es de 3 a 40 caracteres'
                    },
                }
            },
            "descripcion":{
                selector: "#id_act_descripcion",
                validators:{
                    notEmpty: {
                         message: 'La descripcion es obligatorio'
                    },
                    stringLength: {
                        min: 3,
                        max: 40,
                        message: 'La descripcion es de 3 a 40 caracteres'
                    },
                }
            },
            "detalle":{
                selector: "#id_act_detalles",
                validators:{
                    notEmpty: {
                         message: 'El detalle del producto es obligatorio'
                    },
                    stringLength: {
                        min: 3,
                        max: 40,
                        message: 'El detalle es de 3 a 40 caracteres'
                    },
                }
            },
            "marca":{
                selector: "#id_act_marca",
                validators:{
                    notEmpty: {
                         message: 'Seleccione la marca'
                    },
                }
            },
            "serie":{
                selector: "#id_act_serie",
                validators:{
                    notEmpty: {
                         message: 'La serie es obligatorio'
                    },
                    stringLength: {
                        min: 3,
                        max: 40,
                        message: 'La serie es de 3 a 40 caracteres'
                    },
                }
            },
            "proveedor":{
                selector: "#id_act_proveedor",
                validators:{
                    notEmpty: {
                         message: 'Seleccione el proveedor'
                    },
                }
            },
        	"precio":{
                selector: "#id_act_precio",
                validators:{
                    notEmpty: {
                         message: 'El precio es obligatorio'
                    },
                    
                }
            },
            "stock":{
                selector: "#id_act_stock",
                validators:{
                    notEmpty: {
                         message: 'El stock es obligatorio'
                    }
                }
            },
            "categoria":{
                selector: "#id_act_categoria",
                validators:{
                    notEmpty: {
                         message: 'Seleccione la categoria'
                    },
                }
            },
            "fecha":{
                selector: "#id_act_fecha",
                validators:{
                    notEmpty: {
                         message: 'Seleccione la fecha'
                    },
                }
            }
       
        }   
    });

	//jobispointeger value validation
	$('input.floatNumber').on('input', function() {
	    this.value = this.value.replace(/[^0-9.]/g,'').replace(/(\..*)\./g, '$1');
	});
	
</script>

 
 