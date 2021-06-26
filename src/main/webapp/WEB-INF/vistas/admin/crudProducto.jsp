<jsp:include page="../papelera/opciones.jsp"/>		
<div class="col-md-10" style="margin-left:20%;" >                               
			<h3>Productos</h3>
					<div class="row my-2" >
						<div class="col-md-5 my-2" >
								<input class="form-control" id="id_txt_filtro"  name="filtro" placeholder="Ingrese el nombre" type="text" maxlength="30"/>
						</div>
						<div class="m-2" >
							<button type="button" class="btn btn-primary" id="id_btn_filtrar" style="width: 150px">Filtrar</button>
						</div>
						<div class="m-2">
						<button type="button" class="btn btn-primary levantarRegistro" data-bs-toggle="modal">Registrar</button>
						</div>
					</div>					
					<div class="row" > 
						<div class="table-responsive">
									<table id="id_table" class="table table-bordered" >
										<thead>
											<tr>
												<th style="width: 10%">ID</th>
												<th style="width: 20%">Nombre</th>
												<th style="width: 10%">Descripcion</th>												
												<th style="width: 10%">Marca</th>								
												<th style="width: 15%">Precio</th>
												<th style="width: 20%">Stock</th>
												<th style="width: 20%">Categoria</th>
												<th style="width: 10%">Actualiza </th>
												<th style="width: 10%">Elimina </th>
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
						<form id="id_form_registra" >						
													<div class="form-group">
				                                        <label class="col-form-label" for="id_reg_nombre">Nombre</label>
															<input class="form-control" id="id_reg_nombre" name="nombre" placeholder="Ingrese el Nombre" type="text" maxlength="20"/>
				                                    </div>
				                                    <div class="form-group">
				                                        <label class="col-form-label" for="id_reg_descripcion">Descripcion</label>
															<input class="form-control" id="id_reg_descripcion" name="descripcion" placeholder="Ingrese la descripcion" type="text" maxlength="20"/>
				                                    </div>		                               
				                                    <div class="form-group">
				                                        <label class="col-form-label" for="id_reg_marca">Marca</label>
															<select id="id_reg_marca" name="marca" class='form-control'>
									                                 <option value=" " >[SELECCIONE]</option>
									                         </select>
				                                    </div>		                               		                                   
				                                    <div class="form-group">
				                                        <label class="col-form-label" for="id_reg_precio">Precio</label>
															<input class="form-control" id="id_reg_precio" name="precio" placeholder="Ingrese el Precio" type="text" maxlength="20"/>
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
															<input type="file" id="foto1" class="form-control" name="foto1" />
				                                    </div>		                                   
				                                     <div class="col-lg-2">								
															<img id="id_reg_preview" width="210" height="230">
												   </div>										   										  		                                     
				                                    <div class="form-group my-2">
				                                        <div class="col-lg-9 col-lg-offset-3">
				                                        	<button class="btn btn-primary" id="id_btn_registra">REGISTRAR</button>
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
				<h4><span class="glyphicon glyphicon-ok-sign"></span> Actualiza Producto</h4>
					<button type="button" class="btn-close btn btn-danger" data-bs-dismiss="modal" aria-label="Close"><i class="fas fa-times"></i></button>					
				</div>
				<div class="modal-body">
						<form id="id_form_actualiza" accept-charset="UTF-8"  action=""  method="post" enctype="multipart/form-data">
		                    
		                                	<div class="form-group">
		                                        <label class="col-form-label" for="id_act_idproducto">idproducto</label>
													<input class="form-control" id="id_act_idproducto" name="idproducto" type="text" />
		                                    </div>
		                                     <div class="form-group">
		                                        <label class="col-form-label" for="id_act_nombre">Nombre</label>
													<input class="form-control" id="id_act_nombre" name="nombre" placeholder="Ingrese el Nombre" type="text" maxlength="20"/>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_act_descripcion">Descripcion</label>
													<input class="form-control" id="id_act_descripcion" name="descripcion" placeholder="Ingrese la descripcion" type="text" maxlength="20"/>
		                                    </div>
		                                   
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_act_marca">Marca</label>
													<select id="id_act_marca" name="marca" class='form-control'>
							                                 <option value=" " >[SELECCIONE]</option>
							                         </select>
		                                    </div>		                                  		                                    
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_act_precio">Precio</label>
													<input class="form-control" id="id_act_precio" name="precio" placeholder="Ingrese el Precio" type="text" maxlength="20"/>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_act_stock">Stock</label>
													<input class="form-control" id="id_act_stock" name="stock" placeholder="Ingrese el Stock" type="text" maxlength="20"/>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_act_categoria">Categoria</label>
													<select id="id_act_categoria" name="categoria" class='form-control'>
							                                 <option value=" " >[SELECCIONE]</option>
							                         </select>
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
</body>
<jsp:include page="../papelera/footerAdmin.jsp"/>
<script>
const $form = document.querySelector('#id_form_registra')
$form.addEventListener('submit', async (event) => {
	 event.preventDefault()    
	var validator = $('#id_form_registra').data('bootstrapValidator');
    validator.validate();	
    if (validator.isValid()) {  
    try{
   	 const formData = new FormData(event.currentTarget)
	 const result = await  fetch('registraCrudProducto', {
	        method: 'POST',
	        body: formData,
     });
   	 $('#modal_registra').modal("hide");
   	 limpiarFormulario();
	 validator.resetForm();
	 alertify.success('Registro Guardado')
	
    }catch(e){
    	console.log(e)
    	alertify.error('Registro Erroneo')
    }
    }
 })
$(document).ready(function() {
	llenarMarca();
	llenarProveedor();
	llenarCategoria();
});
</script>
<script type="text/javascript">	
$("#foto1").change(function(event){
	  var filename = $("#foto1").val();
	  var extension = filename.split('.').pop().toLowerCase();
	  if(extension == 'jpg' || extension == 'png'){
	  	var src = URL.createObjectURL(event.target.files[0]);
			$("#id_reg_preview").attr("src",src);
		}
});
$("#foto2").change(function(event){
	  var filename = $("#foto2").val();
	  var extension = filename.split('.').pop().toLowerCase();
	  if(extension == 'jpg' || extension == 'png'){
	  	var src = URL.createObjectURL(event.target.files[0]);
			$("#id_reg_preview2").attr("src",src);
		}
});
		function llenarMarca(){
			$.getJSON("listarMarca",{},function(data){
				console.log(data)
				$.each(data,function(index,item){
					$("#id_reg_marca").append("<option value='"+ item.idmarca+"'>"+item.nombre+"</option>");
					$("#id_act_marca").append("<option value='"+ item.idmarca+"'>"+item.nombre+"</option>");
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
				searching: false,
				ordering: true,
				processing: true,
				pageLength: 5,
				lengthChange: false,
				columns:[
					{data: "idproducto"},
					{data: "nombre"},
					{data: "descripcion"},					
					{data: "marca"},	
					{data: "precio"},
					{data: "stock"},
					{data: "categoria"},
					{data: function(row, type, val, meta){
						var salida='<button type="button" style="width: 90px" class="btn btn-info btn-sm" onclick="editar(\''+row.idproducto + '\',\'' + row.nombre +'\',\'' + row.descripcion  + '\',\'' + row.caracteristicas + '\',\'' +  row.marca + '\',\'' +  row.serie + '\',\'' +  row.proveedor + '\',\'' + row.precio +'\',\'' + row.stock  + '\',\'' + row.categoria +'\')">Editar</button>';
						console.log(row.nombre)
						return salida;
					},className:'text-center'},	
					{data: function(row, type, val, meta){
					    var salida='<button type="button" style="width: 90px" class="btn btn-danger btn-sm" onclick="eliminar(\'' + row.idproducto + '\')">Eliminar</button>';
						return salida;
					},className:'text-center'},													
				]                                     
		    });
	}	
	function listarProductos(){
		fetch('consultaCrudProducto?filtro=')
		.then(response => response.json())
		.then(data =>{
			agregarGrilla(data)
			console.log(data)
		})
	}	
	$("#id_btn_registraS").click(function(){
		var validator = $('#id_form_registra').data('bootstrapValidator');
	    validator.validate();		
	    if (validator.isValid()) {
	        var formData = new FormData();
	        var file = $('#foto1')[0].files[0];
	        var file2 = $('#foto2')[0].files[0];	        
	        formData.append("foto1", file);
	        formData.append("foto2", file2);
	        formData.append("nombre", $('#id_reg_nombre').val());
	        formData.append("descripcion",$('#id_reg_descripcion').val());
	        formData.append("caracteristicas",$('#id_reg_caracteristicas').val());
	        formData.append("marca",$('#id_reg_marca').val());
	        formData.append("serie",$('#id_reg_serie').val());
	        formData.append("proveedor",$('#id_reg_proveedor').val());
	        formData.append("precio",$('#id_reg_precio').val());
	        formData.append("stock",$('#id_reg_stock').val());
	        formData.append("categoria",$('#id_reg_categoria').val());	       	        
	        $.ajax({
	          type: "POST",
	          url: "registraCrudProducto", 
	          data: formData,
	          enctype : 'multipart/form-data',
	          contentType : false,
	          processData : false,
	          cache:false,
	          success: function(data){
	        	  agregarGrilla(data.lista);
	        	  $('#id_div_modal_registra').modal("hide");
	        	  console.log(data.mensaje);
	        	  limpiarFormulario();
	        	  validator.resetForm();
	          },
	          error: function(){
	        	  console.log("Error");
	          }
	        });	        
	    }
	});		
	function eliminar(id){	
		alertify.confirm('Eliminar', 'Si, Eliminar', function(){ fetch('eliminaCrudProducto?id='+id)
			.then(response => response.json())
			.then(data=>{
				listarProductos()
			}), alertify.error('Eliminado') }
        , function(){ alertify.error('Cancelado')});
	}
	function editar(id,nombre,descripcion,caracteristicas,marca,serie,proveedor,precio,stock,categoria){
		console.log('editar');	
		$('#id_act_idproducto').val(id);
		$('#id_act_nombre').val(nombre);
		$('#id_act_descripcion').val(descripcion);
		$('#id_act_caracteristicas').val(caracteristicas);
		$('#id_act_marca').val(marca);
		$('#id_act_serie').val(serie);
		$('#id_act_proveedor').val(proveedor);
		$('#id_act_precio').val(precio);
		$('#id_act_stock').val(stock);
		$('#id_act_categoria').val(categoria);
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
	}
	$('.levantarRegistro').click(function(){
		$('#modal_registra').modal("show");
	})	
	$("#id_btn_actualiza").click(function(){
		var validator = $('#id_form_actualiza').data('bootstrapValidator');
	    validator.validate();		
	    if (validator.isValid()) {
	        $.ajax({
	          type: "POST",
	          url: "actualizaCrudProducto", 
	          data: $('#id_form_actualiza').serialize(),
	          success: function(data){
	        	  agregarGrilla(data.lista);
	        	  $('#id_div_modal_actualiza').modal("hide");
	        	  alertify.success('Actualizado')
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
                         message: 'El nombre del producto es obligatorio'
                    },
                    stringLength: {
                        min: 3,
                        max: 40,
                        message: 'El nombre del producto es de 3 a 80 caracteres'
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
                         message: 'Seleccione el proveedor es un campo obligatorio'
                    },
                }
            },
            "precio":{
                selector: "#id_reg_precio",
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
                         message: 'El nombre del producto es obligatorio'
                    },
                    stringLength: {
                        min: 3,
                        max: 40,
                        message: 'El nombre del producto es de 3 a 60 caracteres'
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
                        message: 'La descripcion es de 3 a 60 caracteres'
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
                        message: 'El detalle es de 3 a 60 caracteres'
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
                        message: 'La serie es de 3 a 40 caractéres'
                    },
                }
            },
            "proveedor":{
                selector: "#id_act_proveedor",
                validators:{
                    notEmpty: {
                         message: 'Seleccionar el proveedor es obligatorio'
                    },
                }
            },
            "precio":{
                selector: "#id_act_precios",
                validators:{
                    notEmpty: {
                         message: 'El precio es un campo obligatorio'
                    }
                }
            },
            "stock":{
                selector: "#id_act_stock",
                validators:{
                    notEmpty: {
                         message: 'El stock es un campo obligatorio'
                    }
                }
            },
            "categoria":{
                selector: "#id_act_categoria",
                validators:{
                    notEmpty: {
                         message: 'Seleccionar la categoria es un campo obligatorio'
                    },
                }
            }
       
        }   
    });
</script>
