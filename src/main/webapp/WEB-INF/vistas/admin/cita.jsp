      <jsp:include page="../papelera/opciones.jsp"/>
       
<h4>Registro de Citas</h4>

	
		<div class="modal fade" id="idBuscaMascota">
			<div class="modal-dialog" style="width: 60%">

				<div class="modal-content">
					<div class="modal-header" style="padding: 35px 50px">
						<h4>
							<span class="glyphicon glyphicon-ok-sign"></span> Seleccionar Mascota
						</h4>
					</div>
					<div class="modal-body" style="padding: 20px 10px;">
						<div class="panel-group" id="steps">
							
						</div>
					</div>
				</div>
			</div>
		</div>
	
	<div class="col-md-8"  style="margin:0 20%;">
			<button type="button" class="btn btn-primary levantarRegistro" data-bs-toggle="modal">Registrar</button>
	</div>	

	 	 <div class="modal fade " id="modal_registra" >
			<div class="modal-dialog">	
				<!-- Modal content-->
				<div class="modal-content">
				<div class="modal-header">
					   <h5 class="modal-title" id="exampleModalLabel">Ingrese la Cita</h5>
                       <button type="button" class="btn-close btn btn-danger" data-bs-dismiss="modal" aria-label="Close"><i class="fas fa-times"></i></button>
				</div>
				<div class="modal-body">
			<form id="id_form_registra" accept-charset="UTF-8"
				action="registraCita" method="post">

				<div class="form-group row">
			
				
				</div>


				<div class="form-group row">

					<div class="col-sm-12">
						<label class="col-form-label" for="id_reg_observacion">Motivo de la Cita</label>
						<input type="text" class="form-control"
							id="id_reg_observacion" name="observacion">
					</div>
					<div class="col-sm-12">
						<input type="hidden" class="form-control form-control-user"
							id="id_FechaActual" name="fechaRegistro">
					</div>
				</div>
                 <div class="col-sm-12">
						<label class="col-form-label" for="id_reg_tipo">Tipo de CIta</label>
						<select id="id_reg_tipo" name="tipo" class='form-control'>
							<option value=" ">[Seleccione Tipo]</option>
							<option value="consulta">Consulta</option>
							<option value="incidente">Incidente</option>
							<option value="veterinaria">Veterinaria</option>
						</select>
					</div>

					<div class="col-sm-12">
						<label class="col-form-label" for="id_reg_servicio">Cliente</label>
						<select id="id_reg_servicio" name="cliente.idCliente" class='form-control'>
							<option value=" ">[Seleccione Cliente]</option>
						</select>
					</div>
					<div class="col-sm-12">
						<label class="col-form-label" for="id_reg_prestacion">Mascota</label>
						<select id="id_reg_prestacion" name="mascota.idmascota"
							class='form-control'>
							<option value=" ">[Seleccione Mascota]</option>
						</select>
					</div>
				</div>

				<div class="form-group my-5">
					<div class="col-lg-9 col-lg-offset-5">
						<button type="button" class="btn btn-primary" id="id_btn_registra">SOLICITAR
							CITA</button>
					</div>
				</div>

			</form>

		
	
				</div>
			</div>
		</div>
			
		</div>
					
		<div class="col-md-10" style="margin:0 20%;" > 
						<div class="col-md-11 table-responsive">
						
									<table id="id_table" class="table table-bordered" >
										<thead>
											<tr>
												<th>ID</th>
												<th>Cliente</th>
												<th>Correo</th>
												<th >Motivo</th>
												<th >Tipo</th>
												<th >Mascota</th>
												<th>Fecha</th>
											  	<th >Actualiza </th>
												<th >Elimina </th>
											</tr>
										</thead>
											<tbody>
											</tbody>
										</table>	
									
							
					</div>
		  </div>




<jsp:include page="../papelera/footerAdmin.jsp"/>
</body>

<script type="text/javascript">
<!-- Agregar aquí -->

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
				{data: "idCita"},
				{data: "cliente.nombre"},
				{data: "cliente.correo"},
				{data: "observacion"},
				{data: "tipo"},
				{data: "mascota.nombre"},
				{data: "fechaRegistro"},
				{data: function(row, type, val, meta){
					var salida='<button type="button" style="width: 90px" class="btn btn-info btn-sm" onclick="editar(\'' + row.idCita +'\',\'' + row.cliente.nombre +'\',\'' + row.cliente.correo  + '\',\'' + row.observacion + '\',\'' + row.tipo + '\',\'' + row.mascota.nombre +'\',\'' +  row.fechaRegistro +  '\')">Editar</button>';
					return salida;
				},className:'text-center'},	
				{data: function(row, type, val, meta){
				    var salida='<button type="button" style="width: 90px" class="btn btn-danger btn-sm" onclick="eliminar(\'' + row.idCita + '\')">Eliminar</button>';
					return salida;
				},className:'text-center'},													
			]                                     
	    });
}

function listarCitas(){
	fetch('listarCita')
	.then(response => response.json())
	.then(data =>{
		agregarGrilla(data)
	})
}

listarCitas();



$.getJSON("listadoCliente", {}, function(data) {
	$.each(data, function(i, item) {
		$("#id_reg_servicio").val(" ");
		$("#id_reg_servicio").append(
				"<option value='"+ item.idCliente +"'>" + item.nombre
						+ "</option>");
	});
});
<!-- REGISTRAR, LISTAR COMBO -->
$("#id_reg_servicio").change(function(){
	var var_raz = $("#id_reg_servicio").val();
	$("#id_reg_prestacion").empty();
	$("#id_reg_prestacion").append("<option value=' '>[Seleccione Raza]</option>");
	
	$.getJSON("listarMascotaCliente",{"cliente":var_raz}, function(data){
		$.each(data, function(i, item){
			$("#id_reg_prestacion").append("<option value='"+ item.idmascota +"'>"+ item.nombre+"</option>");
		});
	});
});



	
	$('.levantarRegistro').click(function(){
		$('#modal_registra').modal("show");
	})
	

	$('.levantarModal').click(function() {
		muestraMascota();
		$('#idBuscaMascota').modal("show");

	})
	//Al escribir en la caja de texto del producto
	$("#id_txt_filtro").keyup(function(e) {
		muestraMascota();
	});
	//Se anula el enter
	$(document).on("keypress", "form", function(event) {
		return event.keyCode != 13;
	});

	function editar(idmascota, nombre) {
		$("#idNombreMascota").val(nombre);
		$("#id_idemascota").val(idmascota);
		$("#idBuscaMascota").modal("hide");
	}

	function limpiarFormulario() {
		
		$('#id_reg_observacion').val('');
		$('#id_reg_tipo').val(' ');
		$('#id_reg_servicio').val(' ');
		$('#id_reg_prestacion').val(' ');
	}

	function obtenerFechaActual() {
		var hoy = new Date();
		var fecha = hoy.getFullYear() + '-' + (hoy.getMonth() + 1) + '-'
				+ hoy.getDate();
		var hora = hoy.getHours() + ':' + hoy.getMinutes() + ':'
				+ hoy.getSeconds();
		var fechaYHora = fecha + ' ' + hora;
		//Obteniendo una variable con la máscara d-m-Y H:i:s

		$("#id_FechaActual").val(fechaYHora)
	}

	$("#id_btn_registra").click(function() {
		var validator = $('#id_form_registra').data('bootstrapValidator');
		validator.validate();
		var var_masc = $("#idNombreMascota").val();
		if(var_masc == ''){
			Swal.fire('Ups! No Selecciono su mascota', 'Debe Seleccionar la mascota que recibira la atencion', 'danger')
		}else{
		if (validator.isValid()) {
			obtenerFechaActual()
			$.ajax({
				type : "POST",
				url : "registraCita",
				data : $('#id_form_registra').serialize(),
				success : function(data) {
					 alertify.success('Registrado con exito.'); 
					$('#modal_registra').modal("hide");
					limpiarFormulario();
					validator.resetForm();
					listarCitas();
				},
				error : function() {
					 alertify.error('Error al Actualizar.'); 
				}
			});

		}
		}
	});
</script>
<script type="text/javascript">
	$('#id_form_registra')
			.bootstrapValidator(
					{
						message : 'This value is not valid',
						feedbackIcons : {
							valid : 'glyphicon glyphicon-ok',
							invalid : 'glyphicon glyphicon-remove',
							validating : 'glyphicon glyphicon-refresh'
						},
						fields : {
							"Observacion" : {
								selector : "#id_reg_observacion",
								validators : {
									notEmpty : {
										message : '*La Observacion de su mascota es obligatorio'
									},
									stringLength : {
										min : 3,
										max : 500,
										message : 'Min: 3 - Max: 500'
									},
								}
							},
							"fecha" : {
								selector : "#id_reg_fechaReserva",
								validators : {
									notEmpty : {
										message : '*Seleccione la fecha de su cita'
									},
								}
							},
							"Especialidad" : {
								selector : "#id_reg_servicio",
								validators : {
									notEmpty : {
										message : '*Seleccione la Especialidad'
									},
								}
							},
							"Prestacion" : {
								selector : "#id_reg_prestacion",
								validators : {
									notEmpty : {
										message : '*Seleccione el Tipo de Prestacion'
									},
								}
							}

						}
					});
</script>