<jsp:include page="reusable/header.jsp"/>
<!DOCTYPE html>
<html lang="esS" >
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

<title>Registra Mascota</title>
</head>
<body style="background-color: #F2F2F2;">
<jsp:include page="reusable/navegacion.jsp"/>
  
<div class="row col-md-12" >
                    <div class="col-md-10 m-auto">
                        <div class="p-3">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">Mi Cuenta</h1>
                            </div>
                            <form class="user" action="actualizaCrudCliente" method="post" id="id_form_registra">
                            <input type="hidden" value="2"name="rol" />
                            
                            <input type="hidden" class="form-control form-control-user" id="idCodigo"
                               				name="idCliente" value="${sessionScope.objUsuario.idCliente}">
                            
                            
                                <div class="form-group row">
                                	
                                    <div class="col-sm-6">
                                    <label for="nombreRegistro" class="form-label">Nombre</label>
                                        <input type="text" class="form-control form-control-user" id="idNombre"
                                            placeholder="Ingresa nombre" name="nombre" value="${sessionScope.objUsuario.nombre}">
                                    </div>
                                    <div class="col-sm-6">
                                    <label for="apellidoRegistro" class="form-label">Apellido</label>
                                        <input type="text" class="form-control form-control-user" id="idApellido"
                                            placeholder="Ingresa apellido" name="apellido" value="${sessionScope.objUsuario.apellido}">
                                    </div>
                                </div>
                                
                                <div class="form-group row">
                                
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                     <label for="correo" class="form-label">Correo</label>
                                        <input type="email" class="form-control form-control-user" id="idCorreo"
                                        placeholder="Email" value="${sessionScope.objUsuario.correo}" name="correo">
                                    </div>
                                    
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                    <label for="contraseñaRegistro" class="form-label">Contraseña</label>
                                        <input type="password" class="form-control form-control-user"
                                            id="idClave" value="${sessionScope.objUsuario.pass}" placeholder="Ingresa contraseña" name="pass">
                                    </div>
                                    
                                    
                                    
                                    
                                </div>
                                <div class="form-group row">
                                
                                <div class="col-sm-6">
                                        <label for="fechaNacimiento" class="form-label">Fecha Nacimiento</label>
                                        <input type="date" class="form-control form-control-user"
                                            id="fechaNacimiento" placeholder="Fecha Nacimiento" name="idFecha"
                                            placeholder="Ingrese fecha nacimiento" value="${sessionScope.objUsuario.fecha}">
                                    </div>
                                    
                                    
                                    <div class="col-sm-6">
                                    <label for="direccionRegistro" class="form-label">Direccion</label>
                                        <input type="text" class="form-control form-control-user"
                                            id="idDireccion" placeholder="Ingresa Direccion" name="direccion" value="${sessionScope.objUsuario.direccion}">
                                    </div>
                                </div>
                                
                                
                                 <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                    <label for="dniRegistro" class="form-label">Dni</label>
                                        <input type="number" class="form-control form-control-user"
                                            id="idDni" placeholder="Ingresa dni" name="dni" value="${sessionScope.objUsuario.dni}">
                                    </div>
                                    <div class="col-sm-6">
                                    <label for="telefonoRegistro" class="form-label">Telefono</label>
                                        <input type="number" class="form-control form-control-user"
                                            id="telefonoRegistro" placeholder="Ingresa telefono" name="telefono"
                                            maxlength="9" value="${sessionScope.objUsuario.telefono}">
                                    </div>
                                </div>
                                <div class="form-group my-2">
		                              <div class="col-lg-9 col-lg-offset-3">
		                                    <button type="button" class="btn btn-primary" id="id_btn_registra">ACTUALIZAR</button>
		                              </div>
		                         </div>
                               
                                <hr>
                                
                            </form>
                           </div>
                          </div>
                         </div>
                         <br>

<jsp:include page="reusable/footer.jsp"/>
<script type="text/javascript">
$("#success-alert").fadeTo(1000, 500).slideUp(500, function(){
    $("#success-alert").slideUp(500);
});
</script>
 
<script type="text/javascript">




$("#id_btn_registra").click(function(){
	var validator = $('#id_form_registra').data('bootstrapValidator');
    validator.validate();
	
    if (validator.isValid()) {
        $.ajax({
          type: "POST",
          url: "actualizaCrudCliente", 
          data: $('#id_form_registra').serialize(),
          success: function(data){
        	  
        	  console.log(data.lista)
        	  Swal.fire(
				      'Actualizado',
				      'Sus datos han sido actualizados',
				      'success'
				    )
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
                selector: "#idNombre",
                validators:{
                    notEmpty: {
                         message: '*El nombre es obligatorio'
                    },
                    stringLength: {
                        min: 3,
                        max: 40,
                        message: 'Min: 3 - Max: 40'
                    },
                }
            },
            "apellido":{
                selector: "#idApellido",
                validators:{
                    notEmpty: {
                         message: '*El apellido es obligatorio'
                    },
                    stringLength: {
                        min: 3,
                        max: 40,
                        message: 'Min: 3 - Max: 40'
                    },
                }
            },
            "correo":{
                selector: "#idCorreo",
                validators:{
                    notEmpty: {
                         message: '*El correo es obligatorio'
                    },
                    regexp :{
                    	regexp:/^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i
                    },
                }
            },
            
            "fecha":{
           	 selector: "#idFecha",
                validators:{
               	 notEmpty: {
                        message: 'La fecha es obligatoria'
                   },
                   date: {
                       message: 'La fecha tiene formato DD/MM/YYYY',
                       format: 'DD/MM/YYYY'
                   },
               }
           },
           
            "clave":{
                selector: "#idClave",
                validators:{
                    notEmpty: {
                         message: '*La clave es obligatorio'
                    },
                    stringLength: {
                        min: 3,
                        max: 40,
                        message: 'Min: 3 - Max: 40'
                    },
                }
            },
            "direccion":{
                selector: "#idDireccion",
                validators:{
                    notEmpty: {
                         message: '*La direccion es obligatorio'
                    },
                    stringLength: {
                        min: 3,
                        max: 40,
                        message: 'Min: 3 - Max: 40'
                    },
                }
            },
            "dni":{
                selector: "#idDni",
                validators:{
                    notEmpty: {
                         message: '*El d.n.i es obligatorio'
                    },
                    stringLength: {
                        min: 8,
                        max: 8,
                        message: 'Min: 8 - Max: 8'
                    },
                }
            },
            "telefonno":{
                selector: "#idTelefono",
                validators:{
                    notEmpty: {
                         message: '*El telefono es obligatorio'
                    },
                    stringLength: {
                        min: 7,
                        max: 9,
                        message: '*ingrese telefono valido'
                    },
                }
            }
          
        }   
    });

</script>

  
  
 
    
</body>
</html> 