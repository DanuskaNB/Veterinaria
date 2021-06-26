<jsp:include page="reusable/header.jsp"/>
<body style="background-color: #F2F2F2;">
<jsp:include page="reusable/navegacion.jsp"/>
<div class="container">

 <h3>Mi Mascota | Entre Patas</h3>
    
					<div class="row my-2" >
							<div class="col-md-5 my-2" >
									<input class="form-control" id="id_txt_filtro"  name="filtro" placeholder="Ingrese el nombre" type="text" maxlength="30"/>
									<input class="form-control" id="id_txt_filtro1"  name="filtro1" type="hidden" value = "${sessionScope.objUsuario.idCliente}"/>
							</div>
							<div class="m-2" >
								<button type="button" class="btn btn-primary" id="id_btn_filtrar">FILTRAR</button>
							</div>
							<div class="m-2"  >
							<button type="button" class="btn btn-primary levantarModal" data-bs-toggle="modal"  data-bs-whatever="@mdo">Registrar</button>
							</div>
					</div>
					
					
						<div class="table-responsive">
									<table id="id_table" class="table table-bordered" >
										<thead>
											<tr>
												<th >ID</th>
												<th >Nombre</th>
												<th >Especie</th>
												<th >Raza</th>
												<th >Sexo</th>
												<th >Color</th>
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
		                                        <label class="col-form-label" for="id_reg_especie">Especie</label>
													<select id="id_reg_especie" class='form-control'>
							                            	<option value=" ">[Seleccione Especie]</option>    
							                         </select>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_reg_raza">Raza</label>
													<select id="id_reg_raza" name="especie" class='form-control'>
							                            	<option value=" ">[Seleccione Raza]</option>    
							                         </select>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_reg_sexo">Sexo</label>
													<select id="id_reg_sexo" name="sexo" class='form-control'>
							                                 <option value=" " >[SELECCIONE]</option>
							                         </select>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_reg_color">Color</label>
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
		                                        <label class="col-form-label" for="id_act_especie">Especie</label>
													<select id="id_act_especie" class='form-control'>
							                            	<option value=" ">[Seleccione Especie]</option>    
							                         </select>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_act_raza">Raza</label>
													<select id="id_act_raza" name="especie.idespecie" class='form-control'>
							                            	<option value=" ">[Seleccione Raza]</option>    
							                         </select>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_act_sexo">sexo</label>
													<select id="id_act_sexo" name="sexo" class='form-control'>
							                                 <option value=" " >[SELECCIONE]</option>
							                         </select>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_act_color">Color</label>
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
<jsp:include page="reusable/footer.jsp"/>
</body>

<script type="text/javascript">	
<!-- Agregar aquí -->
$.getJSON("listaEspecies",{}, function(data){
	$.each(data, function(i, item){
		$("#id_reg_especie").val(" ");
		$("#id_act_especie").val(" ");
		$("#id_reg_especie").append("<option value='"+ item +"'>"+ item+"</option>");
		$("#id_act_especie").append("<option value='"+ item +"'>"+ item+"</option>");
	});
});

<!-- REGISTRAR, LISTAR COMBO -->
$("#id_reg_especie").change(function(){
	var var_raz = $("#id_reg_especie").val();
	$("#id_reg_raza").empty();
	$("#id_reg_raza").append("<option value=' '>[Seleccione Raza]</option>");
	
	$.getJSON("listaRazas",{"especie":var_raz}, function(data){
		$.each(data, function(i, item){
			$("#id_reg_raza").append("<option value='"+ item.idespecie +"'>"+ item.raza+"</option>");
		});
	});
});

<!-- ACTUALIZAR, LISTAR COMBO -->
$("#id_act_especie").change(function(){
	var var_raz = $("#id_act_especie").val();
	$("#id_act_raza").empty();
	$("#id_act_raza").append("<option value=' '>[Seleccione Raza]</option>");
	
	$.getJSON("listaRazas",{"especie":var_raz}, function(data){
		$.each(data, function(i, item){
			$("#id_act_raza").append("<option value='"+ item.idespecie +"'>"+ item.raza+"</option>");
		});
	});
});

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
					{data: "especie.nombre"},
					{data: "especie.raza"},
					{data: "sexo.nombre"},
					{data: "color"},
					{data: "strFechaFormateada"},
					{data: function(row, type, val, meta){
						var salida='<button type="button" style="width: 90px" class="btn btn-info btn-sm" onclick="editar(\''+row.idmascota + '\',\'' + row.nombre +'\',\'' + row.especie.nombre  + '\',\'' + row.especie.raza + '\',\'' +  row.sexo.idsexo + '\',\'' +  row.color + '\',\'' +  row.strFechaFormateada + '\',\'' +  row.idcliente + '\')">Editar</button>';
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
		
		Swal.fire({
			  title: 'Eliminar Registro?',
			  text: "Este registro no se podra recuperar!",
			  icon: 'warning',
			  showCancelButton: true,
			  confirmButtonColor: '#3085d6',
			  cancelButtonColor: '#d33',
			  confirmButtonText: 'Si, estoy seguro'
			}).then((result) => {
			  if (result.isConfirmed) {
				  fetch('eliminaCrudMascota?id='+id)
					.then(response => response.json())
					.then(data=>{
						  Swal.fire(
							      'Eliminado!',
							      'Registro eliminado Correctamente',
							      'success'
							    )
						listarMascotas()
					})
			  }
			})
		
		
	}
	
	function accionEliminar(id){	
		
	
	}
	
	function editar(id,nombre,especie,raza,idsexo,color,fechaNacimiento,idcliente){	
		$('#id_ID').val(id);
		$('#id_act_nombre').val(nombre);
		$("#id_act_raza").empty();
		$("#id_act_raza").append("<option value=' ' >[Seleccione Raza]</option>");
		$('#id_act_especie').val(especie);
		
	    $.getJSON("listaRazas",{"especie":especie},function(data){
	        $.each(data,function(index,obj){
	            if(obj.raza ==  raza){
	                  $("#id_act_raza").append("<option selected value='" + obj.idespecie+ "'>"+obj.raza+"</option>");
	            }else{
	                 $("#id_act_raza").append("<option value='" + obj.idespecie+ "'>"+obj.raza+"</option>");
	            }
	        });
	        });
        	
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
	        	  Swal.fire(
					      'Añadido',
					      'Registrado Correctamente',
					      'success'
					    )
	        	  limpiarFormulario();
	          },
	          error: function(){
	        	  Swal.fire(
					      'Error!',
					      'No se pudo Registrar',
					      'danger'
					    )
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
	        	  Swal.fire(
					      'Añadido',
					      'Actualizado Correctamente',
					      'success'
					    )
	          },
	          error: function(){
	        	  Swal.fire(
					      'Error!',
					      'No se pudo Actualizar',
					      'danger'
					    )
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