 <jsp:include page="../papelera/opciones.jsp"/>
      
<h4>Clientes</h4>					
		<div class="col-md-10" style="margin:0 20%;" > 
						<div class="col-md-11 table-responsive">
						
									<table id="id_table" class="table table-bordered" >
										<thead>
											<tr>
												<th>ID</th>
												<th>Nombre</th>
												<th >Apellido</th>
												<th >Correo</th>
												<th >Contraseña</th>
												<th>Fecha Nacimiento</th>
												<th >Lugar Entrega</th>								
												<th >Tipo</th>
											  	<th >Actualiza </th>
												<th >Elimina </th>
											</tr>
										</thead>
											<tbody>
											</tbody>
										</table>	
									
							
					</div>
		  </div>
  
  
  	 <div class="modal fade " id="modal_registra" >
			<div class="modal-dialog">
		
				<!-- Modal content-->
				<div class="modal-content">
				<div class="modal-header">
					   <h5 class="modal-title" id="exampleModalLabel">Ingrese Datos</h5>
                       <button type="button" class="btn-close btn btn-danger" data-bs-dismiss="modal" aria-label="Close"><i class="fas fa-times"></i></button>
				</div>
				<div class="modal-body">
						<form id="id_form_registra" accept-charset="UTF-8" action="registraCrudProducto" method="post" enctype="multipart/form-data">
						
											<div class="form-group">
		                                        <label class="col-form-label" for="id_reg_nombre">Nombre</label>
													<input class="form-control" id="id_reg_nombre" name="nombre" placeholder="Ingrese el Nombre" type="text" maxlength="20"/>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_reg_descripcion">Descripcion</label>
													<input class="form-control" id="id_reg_descripcion" name="descripcion" placeholder="Ingrese la descripcion" type="text" maxlength="20"/>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_reg_detalles">Caracteristicas</label>
													<textarea class="form-control" id="id_reg_caracteristicas" name="caracteristicas"rows="2" cols="20" ></textarea>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_reg_marca">Marca</label>
													<select id="id_reg_marca" name="marca" class='form-control'>
							                                 <option value=" " >[SELECCIONE]</option>
							                         </select>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_reg_serie">Serie</label>
													<input class="form-control" id="id_reg_serie" name="serie" placeholder="Ingrese la serie del producto" type="text" maxlength="20"/>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_reg_proveedor">Proveedor</label>
													<select id="id_reg_proveedor" name="proveedor" class='form-control'>
							                                 <option value=" " >[SELECCIONE]</option>
							                         </select>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_reg_precios">Precio</label>
													<input class="form-control" id="id_reg_precios" name="precio" placeholder="Ingrese el Precio" type="text" maxlength="20"/>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_reg_stock">Stock</label>
													<input class="form-control" id="id_reg_stock" name="stock" placeholder="Ingrese el Stock" type="text" maxlength="20"/>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_reg_categoria">Categoria</label>
													<select id="id_reg_categoria" name="categoria" class='form-control'>
							                                 <option value=" " >[SELECCIONE]</option>
							                         </select>
		                                    </div>   
		                                   
		                                   <div class="form-group">
		                                        <label for="staticEmail">Foto1</label>
													<input type="file" class="form-control" name="foto1" />
		                                    </div>
		                                    <div class="form-group">
		                                        <label for="staticEmail">Foto2</label>
													<input type="file" class="form-control" name="foto2" />
		                                    </div>
		                                    <div class="form-group">
		                                        <label for="staticEmail">Foto3</label>
													<input type="file" class="form-control" name="foto3" />
		                                    </div>
		                   
		                                     
		                                    <div class="form-group my-2">
		                                        <div class="col-lg-9 col-lg-offset-3">
		                                        	<button type="submit" class="btn btn-primary" id="id_btn_registra">REGISTRAR</button>
		                                        </div>
		                                    </div>
		                              
		                </form>   
				
				</div>
			</div>
		</div>
			
		</div>
  
		 <div class="modal fade" id="id_div_modal_actualiza" >
			<div class="modal-dialog">
		
				<!-- Modal content-->
				<div class="modal-content">
				<div class="modal-header" >
				<h4><span class="glyphicon glyphicon-ok-sign"></span> Actualiza Cliente</h4>
					<button type="button" class="btn-close btn btn-danger" data-bs-dismiss="modal" aria-label="Close"><i class="fas fa-times"></i></button>
					
				</div>
				<div class="modal-body">
						<form id="id_form_actualiza" accept-charset="UTF-8"  action="actualizaCrudCliente"  method="post" enctype="multipart/form-data">
		                    
		                                <div class="form-group">
		                                        <label class="col-form-label" for="id_act_id">ID</label>
													<input class="form-control" id="id_act_id" readonly="readonly" name="idCliente" type="text" maxlength="20"/>
		                                    </div>
		                                	
		                                     <div class="form-group">
		                                        <label class="col-form-label" for="id_act_nombre">Nombre</label>
													<input class="form-control" id="id_act_nombre" name="nombre" placeholder="Ingrese el Nombre" type="text" maxlength="20"/>
		                                    </div>
		                                    
		                                     <div class="form-group">
		                                        <label class="col-form-label" for="id_act_apellido">Apellido</label>
													<input class="form-control" id="id_act_apellido" name="apellido" placeholder="Ingrese el apellido" type="text" maxlength="20"/>
		                                    </div>
		                                    
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_act_correo">Correo</label>
													<input class="form-control" id="id_act_correo" name="correo" placeholder="Ingrese el correo" type="email" maxlength="20"/>
		                                    </div>
		                                    
		                                     <div class="form-group">
		                                        <label class="col-form-label" for="id_act_pass">Contraseña</label>
													<input type="password" class="form-control" id="id_act_pass" readonly="readonly" name="pass" placeholder="Ingrese la contraseña" type="text" maxlength="20"/>
		                                    </div>
		                                    
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_act_fecha">Fecha</label>
													<input class="form-control" id="id_act_fecha" name="fecha" placeholder="Ingrese la fecha" type="date" >
		                                    </div>
		                                    
		                                 
		 
		                                   
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_act_direccion">Direccion</label>
													<input class="form-control" id="id_act_direccion" name="direccion" placeholder="Ingrese la direccion" type="text" maxlength="20"/>
		                                    </div>
		                                    
		                                 
		                                    
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_act_rol">IDROL</label>
													<input class="form-control" id="id_act_rol" readonly="readonly" name="rol" type="text" maxlength="20"/>
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
							<h4><span class="glyphicon glyphicon-ok-sign"></span>¿Desea eliminar el producto?</h4>
						</div>
				
						  <div class="modal-footer">
						    <button type="button" id="idBtnElimina" name="modalDe" class="btn btn-primary">ELIMINAR</button>
						    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
						  </div>
					</div>
				</div>
				</div>


<jsp:include page="../papelera/footerAdmin.jsp"/>
<script>
$(document).ready(function() {
	llenarRol();
	llenarProveedor();
	llenarCategoria();
	listarClientes();
});
</script>
<script type="text/javascript">	


function llenarRol(){
	$.getJSON("listarRol",{},function(data){
		console.log(data)
		$.each(data,function(index,item){
			
			$("#id_act_rol").append("<option value='"+ item.idRol+"'>"+item.descripcion+"</option>");
		})
	})
	
}


		function llenarProveedor(){
			$.getJSON("listarProveedor",{},function(data){
				console.log(data)
				$.each(data,function(index,item){
					$("#id_reg_proveedor").append("<option value='"+ item.idproveedor+"'>"+item.nombre+"</option>");
					$("#id_act_proveedor").append("<option value='"+ item.idproveedor+"'>"+item.nombre+"</option>");
				})
			})
			
		}


		function llenarCategoria(){
			$.getJSON("listarCategoria",{},function(data){
				console.log(data)
				$.each(data,function(index,item){
					$("#id_reg_categoria").append("<option value='"+ item.idcategoria+"'>"+item.nombre+"</option>");
					$("#id_act_categoria").append("<option value='"+ item.idcategoria+"'>"+item.nombre+"</option>");
				})
			})
			
		}


		



		$("#id_btn_filtrar").click(function(){
			var fil=$("#id_txt_filtro").val();
			$.getJSON("consultaCrudProducto",{"filtro":fil}, function (lista){
				agregarGrilla(lista);
			});
		});
		
	
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
						{data: "idCliente"},
						{data: "nombre"},
						{data: "apellido"},
						{data: "correo"},
						{data: "pass"},
						{data: "fecha"},
					
						{data: "direccion"},
					
						{data: "rol.descripcion"},
						

		
						
						{data: function(row, type, val, meta){
							var salida='<button type="button" style="width: 90px" class="btn btn-info btn-sm" onclick="editar(\'' + row.idCliente +'\',\'' + row.nombre +'\',\'' + row.apellido  + '\',\'' + row.correo + '\',\'' + row.pass + '\',\'' + row.fecha +'\',\'' +  row.direccion + '\',\'' +  row.dni + '\',\'' +  row.telefono + '\',\'' +  row.rol.idRol + '\')">Editar</button>';
							return salida;
						},className:'text-center'},	
						{data: function(row, type, val, meta){
						    var salida='<button type="button" style="width: 90px" class="btn btn-danger btn-sm" onclick="eliminar(\'' + row.idCliente + '\')">Eliminar</button>';
							return salida;
						},className:'text-center'},													
					]                                     
			    });
		}
	
	function listarClientes(){
		fetch('listadoCliente')
		.then(response => response.json())
		.then(data =>{
			agregarGrilla(data)
			console.log(data)
		})
	}
	
	
	function eliminar(id){	

		alertify.confirm('Eliminar', 'Si, Eliminar', function(){ fetch('eliminaCliente?id='+id)
			.then(response => response.json())
			.then(data=>{
				listarClientes()
			}), alertify.error('Eliminado') }
        , function(){ alertify.error('Cancelado')});
		
	}
		
	
	
	
	
	
	function accionEliminar(id){	
		
	
	}
	
	function editar(id,nombre,apellido,correo,pass,fecha,direccion,dni,telefono,rol){	
		$('#id_act_id').val(id);
		$('#id_act_nombre').val(nombre);
		$('#id_act_apellido').val(apellido);
		$('#id_act_correo').val(correo);
		$('#id_act_pass').val(pass);
	    $('#id_act_fecha').val(fecha);
		$('#id_act_direccion').val(direccion);
		$('#id_act_dni').val(dni);
		$('#id_act_telefono').val(telefono);
		$('#id_act_rol').val(rol);
		$('#id_div_modal_actualiza').modal("show");
	}
	
	function limpiarFormulario(){	
		$('#id_reg_idproducto').val('');
		$('#id_reg_nombre').val('');
		$('#id_reg_descripcion').val('');
		$('#id_reg_caracteristicas').val('');
		$('#id_reg_marca').val(' ');
		$('#id_reg_serie').val('');
		$('#id_reg_proveedor').val(' ');
		$('#id_reg_precio').val('');
		$('#id_reg_stock').val('');
		$('#id_reg_categoria').val(' ');
		$('#id_div_modal_actualiza').modal("show");
	}
	
	$('.levantarRegistro').click(function(){
		$('#modal_registra').modal("show");
	})
	
	
	$("#id_btn_registras").click(function(){
		var validator = $('#id_form_registra').data('bootstrapValidator');
	    validator.validate();
		
	    if (validator.isValid()) {
	        $.ajax({
	          type: "POST",
	          url: "registraCrudProducto", 
	          data: $('#id_form_registra').serialize(),
	          success: function(data){
	        	  agregarGrilla(data.lista);
	        	  $('#modal_registra').modal("hide");
	        	  console.log('registrado')
	        	 
	        	  validator.resetForm();
	          },
	          error: function(){
	        	 console.log('Error');
	          }
	        });
	        
	    }
	});

	
	$("#id_btn_actualiza").click(function(){
		var validator = $('#id_form_actualiza').data('bootstrapValidator');
	    validator.validate();
		
	    if (validator.isValid()) {
	        $.ajax({
	          type: "POST",
	          url: "actualizaCrudCliente", 
	          data: $('#id_form_actualiza').serialize(),
	          success: function(data){
	        	  agregarGrilla(data.lista);
	        	  $('#id_div_modal_actualiza').modal("hide");
	        	  alertify.success('Actualizado con exito.'); 
	          },
	          error: function(){
	        	  alertify.error('Error al actualizar.'); 
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
            "detalle":{
                selector: "#id_reg_detalles",
                validators:{
                    notEmpty: {
                         message: 'El detalle del producto es obligatorio'
                    },
                    stringLength: {
                        min: 3,
                        max: 400,
                        message: 'El detalle es de 3 a 40 caracteres'
                    },
                }
            },
            "marca":{
                selector: "#id_reg_marca",
                validators:{
                    notEmpty: {
                         message: 'Seleccione la marca'
                    },
                }
            },
            "serie":{
                selector: "#id_reg_serie",
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
                selector: "#id_reg_proveedor",
                validators:{
                    notEmpty: {
                         message: 'Seleccione el proveedor'
                    },
                }
            },
            "precio":{
                selector: "#id_reg_precios",
                validators:{
                    notEmpty: {
                         message: 'El precio es obligatorio'
                    }
                }
            },
            "stock":{
                selector: "#id_reg_stock",
                validators:{
                    notEmpty: {
                         message: 'El stock es obligatorio'
                    }
                }
            },
            "categoria":{
                selector: "#id_reg_categoria",
                validators:{
                    notEmpty: {
                         message: 'Seleccione la categoria'
                    },
                }
            },
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
                         message: 'El nombre es obligatorio'
                    },
                    stringLength: {
                        min: 3,
                        max: 40,
                        message: 'El nombre es de 3 a 40 caracteres'
                    },
                }
            },
            "apellido":{
                selector: "#id_act_apellido",
                validators:{
                    notEmpty: {
                         message: 'el apellido es obligatorio'
                    },
                    stringLength: {
                        min: 3,
                        max: 40,
                        message: 'el apellido es obligatorio'
                    },
                }
            },
            "correo":{
                selector: "#id_act_correo",
                validators:{
                    notEmpty: {
                         message: 'El correo es obligatorio'
                    },
                    stringLength: {
                        min: 3,
                        max: 40,
                        message: 'El correo es obligatorio'
                    },
                }
            },

            "pass":{
                selector: "#id_act_pass",
                validators:{
                    notEmpty: {
                         message: 'La contraseña es obligatorio'
                    },
                    stringLength: {
                        min: 3,
                        max: 40,
                        message: 'La contraseña es obligatorio'
                    },
                }
            },
            

            "direccion":{
                selector: "#id_act_direccion",
                validators:{
                    notEmpty: {
                         message: 'La direccion es obligatorio'
                    },
                    stringLength: {
                        min: 3,
                        max: 40,
                        message: 'La direccion es obligatorio'
                    },
                }
            },
            
            "dni":{
                selector: "#id_act_dni",
                validators:{
                    notEmpty: {
                         message: 'El dni es obligatorio'
                    },
                    regexp: {
                        regexp: /^[0-9]{8}$/,
                        message: 'el dni es 8 digitos'
                    }
                }
            },
            
            "telefono":{
                selector: "#id_act_telefono",
                validators:{
                    notEmpty: {
                         message: 'El telefono es obligatorio'
                    },
                    regexp: {
                        regexp: /^[0-9]{9}$/,
                        message: 'El telefono es obligatorio'
                    }
                }
            },
            
             "fecha":{
            	 selector: "#id_act_fecha",
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

</script>
</body>

</html>

 