<jsp:include page="papelera/header.jsp"/>
<body style="background-color: #706fd3;">
<jsp:include page="papelera/navegacion.jsp"/>

<div class="container">

 <h3>Mi Mascota</h3>
    
					<div class="row my-2" >
							<div class="col-md-4 my-2" >
									<input class="form-control" id="id_txt_filtro"  name="filtro" placeholder="Ingrese el nombre" type="text" maxlength="30"/>
									<input class="form-control" id="id_txt_filtro1"  name="filtro1" type="hidden" value = "${sessionScope.objUsuario.idCliente}"/>
							</div>
							<div class="m-2" >
								<button type="button" class="btn btn-primary" id="id_btn_filtrar">FILTRAR</button>
								<button type="button" class="btn btn-primary levantarModal" data-bs-toggle="modal"  data-bs-whatever="@mdo">Registrar</button>
							</div>
					</div>
					<br>
					
						<div class="table-responsive">
									<table id="id_table" class="table table-bordered" >
										<thead>
											<tr>
												<th >ID</th>
												<th >Nombre</th>
												
												<th >Sexo</th>
												<th >Caracteristica</th>
												<th>Fec.Nac.</th>
												<th>Actualiza </th>
												<th>Elimina </th>
											</tr>
										</thead>
											<tbody>
											</tbody>
										</table>	
									

						</div>
  
  
  	 <div class="modal fade modal-registra" id="id_div_modal_registra" >
			<div class="modal-dialog">
		
				<!-- Modal content-->
				<div class="modal-content" >
				<div class="modal-header">
					   <h5 class="modal-title" id="exampleModalLabel">Ingrese Datos</h5>
                       <button type="button" class="btn-close btn btn-danger" data-bs-dismiss="modal" aria-label="Close" id="btn_reg_cerrar"><i class="fas fa-times"></i></button>
				</div>
				<div class="modal-body">
						<form id="id_form_registra" accept-charset="UTF-8" action="registraActualizaCrudMascota" method="post">
		                   
		                                     <div class="form-group">
													<input class="form-control" id="id_reg_idcliente" name="idcliente" type="hidden" value="${sessionScope.objUsuario.idCliente}"/>
		                                    </div>
		                                     <div class="form-group">
		                                        <label class="col-form-label" for="id_reg_nombre">Nombre</label>
													<input class="form-control" id="id_reg_nombre" name="nombre" placeholder="Ingrese el Nombre" type="text" maxlength="20"/>
		                                    </div>
		                                  
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_reg_sexo">Sexo</label>
													<select id="id_reg_sexo" name="sexo" class='form-control'>
							                                 <option value=" " >[SELECCIONE]</option>
							                         </select>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_reg_color">Caracteristica</label>
													<input class="form-control" id="id_reg_color" name="color" placeholder="Ingrese el color" type="text" />
		                                    </div>
		                                    
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_reg_fecha">Fecha Nacimiento</label>
													<input class="form-control" id="id_reg_fecha" name="fechaNacimiento" placeholder="Ingrese la fecha de nacimiento" type="date" />
		                                    </div> 
		                                    <div class="form-group my-2">
		                                        <div class="col-lg-9 col-lg-offset-3">
		                                        	<button type="button" class="btn btn-primary" id="id_btn_registra">REGISTRAR</button>
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
				<h4><span class="glyphicon glyphicon-ok-sign"></span> Actualiza Mascota</h4>
					<button type="button" class="btn-close btn btn-danger" data-bs-dismiss="modal" aria-label="Close" id="btn_act_cerrar"><i class="fas fa-times"></i></button>
					
				</div>
				<div class="modal-body">
						<form id="id_form_actualiza" accept-charset="UTF-8"  action="registraActualizaCrudMascota"  method="post">
		                    
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_ID">Código de Mascota</label>
		                                           <input class="form-control" id="id_ID" readonly="readonly" name="idmascota" type="text" maxlength="8"/>
		                                     </div>
		                                     <div class="form-group">
		                                        <label class="col-form-label" for="id_act_nombre">Nombre</label>
													<input class="form-control" id="id_act_nombre" name="nombre" placeholder="Ingrese el Nombre" type="text" maxlength="20"/>
		                                    </div>
		                                  
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_act_sexo">sexo</label>
													<select id="id_act_sexo" name="sexo" class='form-control'>
							                                 <option value=" " >[SELECCIONE]</option>
							                         </select>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_act_color">Caracteristica</label>
													<input class="form-control" id="id_act_color" name="color" placeholder="Ingrese el color" type="text" />
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_act_fecha">Fecha Nacimiento</label>
													<input class="form-control" id="id_act_fecha" name="fechaNacimiento" placeholder="Ingrese la fecha de nacimiento" type="date" />
		                                    </div>
		                                    <div class="form-group">
													<input class="form-control" id="id_act_idcliente" name="idcliente" type="hidden" />
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
							<h4><span class="glyphicon glyphicon-ok-sign"></span>¿Desea eliminar a su mascota?</h4>
						</div>
				
						  <div class="modal-footer">
						    <button type="button" id="idBtnElimina" name="modalDe" class="btn btn-primary">ELIMINAR</button>
						    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
						  </div>
					</div>
				</div>
				</div>

</div>
<jsp:include page="papelera/footer.jsp"/>
</body>

<script type="text/javascript">	
<!-- Agregar aquí -->

<!-- REGISTRAR, LISTAR COMBO -->


<!-- ACTUALIZAR, LISTAR COMBO -->


$.getJSON("listarSexo",{}, function(data){
	$.each(data, function(i, item){
		$("#id_reg_sexo").val(" ");
		$("#id_act_sexo").val(" ");
		$("#id_reg_sexo").append("<option value='"+ item.idsexo +"'>"+ item.nombre+"</option>");
		$("#id_act_sexo").append("<option value='"+ item.idsexo +"'>"+ item.nombre+"</option>");
	});
});

$(document).on('click','#btn_reg_cerrar', function(){
	 $('#id_form_registra').data("bootstrapValidator").resetForm(true);
	 $('#id_form_registra').trigger("reset");
})

$(document).on('click','#btn_act_cerrar', function(){
	 $('#id_form_actualiza').data("bootstrapValidator").resetForm(true);
	 $('#id_form_actualiza').trigger("reset");
})

$("#id_btn_filtrar").click(function(){
	var fil=$("#id_txt_filtro").val();
	var fil1=$("#id_txt_filtro1").val();
	$.getJSON("consultaCrudMascota",{"filtro":fil,"filtro1":fil1}, function (lista){
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
					{data: "idmascota"},
					{data: "nombre"},
				
					{data: "sexo.nombre"},
					{data: "color"},
					{data: "strFechaFormateada"},
					{data: function(row, type, val, meta){
						var salida='<button type="button" style="width: 90px" class="btn btn-info btn-sm" onclick="editar(\''+row.idmascota + '\',\'' + row.nombre +'\',\''  +  row.sexo.idsexo + '\',\'' +  row.color + '\',\'' +  row.strFechaFormateada + '\',\'' +  row.idcliente + '\')">Editar</button>';
						return salida;
					},className:'text-center'},	
					{data: function(row, type, val, meta){
					    var salida='<button type="button" style="width: 90px" class="btn btn-danger btn-sm" onclick="eliminar(\'' + row.idmascota + '\')">Eliminar</button>';
						return salida;
					},className:'text-center'},													
				]                                     
		    });
	}
	
	function listarMascotas(){
		fetch('consultaCrudMascota?filtro= &filtro1=${sessionScope.objUsuario.idCliente}')
		.then(response => response.json())
		.then(data =>{
			agregarGrilla(data)
			console.log(data)
		})
	}
	
	
	function eliminar(id){
		
		alertify.confirm('Eliminar', 'Si, Eliminar', function(){ fetch('eliminaCrudMascota?id='+id)
			.then(response => response.json())
			.then(data=>{
				listarMascotas()
			}), alertify.error('Eliminado') }
        , function(){ alertify.error('Cancelado')});
	}


	
	function accionEliminar(id){	
		
	
	}
	
	function editar(id,nombre,idsexo,color,fechaNacimiento,idcliente){	
		$('#id_ID').val(id);
		$('#id_act_nombre').val(nombre);
		
		
        	
		$('#id_act_sexo').val(idsexo);
		$('#id_act_color').val(color);
		$('#id_act_fecha').val(fechaNacimiento);
		$('#id_act_idcliente').val(idcliente);
		
		$('#id_div_modal_actualiza').modal("show");  
	}
	
	function limpiarFormulario(){	
		$('#id_reg_nombre').val('');
		$('#id_reg_especie').val(' ');
		$('#id_reg_raza').val(' ');
		$('#id_reg_sexo').val(' ');
		$('#id_reg_raza').val(' ');
		$('#id_reg_color').val('');
		$('#id_reg_fecha').val('');
	}
	
	$('.levantarModal').click(function(){
		$('#id_div_modal_registra').modal("show");
	})
	
	$("#id_btn_registra").click(function(){
		var validator = $('#id_form_registra').data('bootstrapValidator');
	    validator.validate();
		
	    if (validator.isValid()) {
	        $.ajax({
	          type: "POST",
	          url: "registraCrudMascota", 
	          data: $('#id_form_registra').serialize(),
	          success: function(data){
	        	  listarMascotas()
	        	  console.log(data.lista)
	        	  $('#id_div_modal_registra').modal("hide");
	        	  alertify.success('Registro Añadido.'); 

	        	  limpiarFormulario();
	          },
	          error: function(){
	        	  alertify.error('Error en el registro.'); 

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
	          url: "actualizaCrudMascota", 
	          data: $('#id_form_actualiza').serialize(),
	          success: function(data){
	        	  listarMascotas()
	        	  $('#id_div_modal_actualiza').modal("hide");
	        	  alertify.success('Actualizado Correctamente.'); 

	          },
	          error: function(){
	        	  alertify.error('Error al actualizar'); 

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
                         message: '*El nombre de su mascota es obligatorio'
                    },
                    stringLength: {
                        min: 3,
                        max: 40,
                        message: 'Min: 3 - Max: 40'
                    },
                }
            },
            "especie":{
                selector: "#id_reg_especie",
                validators:{
                    notEmpty: {
                         message: '*Seleccione la especie de su mascota'
                    },
                }
            },
            "sexo":{
                selector: "#id_reg_sexo",
                validators:{
                    notEmpty: {
                         message: '*Seleccione el sexo de su mascota'
                    },
                }
            },
            "raza":{
                selector: "#id_reg_raza",
                validators:{
                    notEmpty: {
                         message: '*Seleccione la raza de su mascota'
                    },
                }
            },
            "color":{
                selector: "#id_reg_color",
                validators:{
                    notEmpty: {
                         message: '*El color de su mascota es obligatorio'
                    },
                    stringLength :{
                    	message:'*Min: 3 - Max: 45. ',
                    	min : 3,
                    	max : 45
                    },
                    regexp :{
                    	regexp:/^[A-Z ]+$/i,
                    	message : '*Ingrese solo letras. '
                    },
                }
            },
            "fechaNacimiento":{
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
                         message: 'El nombre de su mascota es obligatorio'
                    },
                    stringLength: {
                        min: 3,
                        max: 40,
                        message: 'Min: 3 - Max: 40'
                    },
                }
            },
            "especie":{
                selector: "#id_act_especie",
                validators:{
                    notEmpty: {
                         message: 'Seleccione la especie de su mascota'
                    },
                }
            },
            "sexo":{
                selector: "#id_act_sexo",
                validators:{
                    notEmpty: {
                         message: 'Seleccione el sexo de su mascota'
                    },
                }
            },
            "raza":{
                selector: "#id_act_raza",
                validators:{
                    notEmpty: {
                         message: 'Seleccione la raza de su mascota'
                    },
                }
            },
            "color":{
                selector: "#id_act_color",
                validators:{
                    notEmpty: {
                         message: 'El color de su mascota es obligatorio'
                    },
                    stringLength :{
                    	message:'*Min: 3 - Max: 45. ',
                    	min : 3,
                    	max : 45
                    },
                    regexp :{
                    	regexp:/^[A-Z ]+$/i,
                    	message : '*Ingrese solo letras. '
                    },
                }
            },
            "fechaNacimiento":{
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