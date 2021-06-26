<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
     <link rel="shortcut icon" href="img/icono.jpg">
    <title>Scobyy Doo</title>
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
    <!-- Custom fonts for this template-->
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>

    <!-- Custom styles for this template-->
    <link href="css/estilosLogin.css" rel="stylesheet" >

</head>
<body class="bg-gradient-primary">
<div class="container">
    	<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div class="col-xs-6">
								<a href="#" class="active" id="login-form-link">Login</a>
							</div>
							<div class="col-xs-6">
								<a href="#" id="register-form-link">Registrar</a>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								 <form id="login-form" class="user" action="iniciarSesion" method="post"  role="form" style="display: block;" >
                                        <div class="form-group">
                                            <input type="text" class="form-control form-control-user correo"
                                                id="exampleInputEmail" aria-describedby="emailHelp"
                                                placeholder="Ingresa tu correo" name="correo" required>
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control form-control-user pass"
                                                id="exampleInputPassword" placeholder="Ingresa Contraseña" name="pass">
                                        </div>
                                        
                                        <input  class="btn btn-primary btn-user btn-block" type="submit" value="Login">
                                        <hr>
                                        
                                    </form>
					<form id="register-form" class="user" action="intranetRegistraUsuario" method="post" style="display: none;">
                            <input type="text" value="2" hidden name="rol"  />
                                <div class="form-group row">
                                    <div class="col-sm-6">
                                     <label for="nombre" class="form-label">Nombre</label>
                                        <input type="text" class="form-control form-control-user" id="nombreRegistro"
                                            placeholder="Ingresa nombre" name="nombre">
                                    </div>
                                    <div class="col-sm-6">
                                     <label for="apellido" class="form-label">Apellido</label>
                                        <input type="text" class="form-control form-control-user" id="apellidoRegistro"
                                            placeholder="Ingresa apellido" name="apellido">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                     <label for="correo" class="form-label">Correo</label>
                                        <input type="email" class="form-control form-control-user" id="correo"
                                        placeholder="Email" name="correo">
                                    </div>
                                    <div class="col-sm-6">
                                        <label for="fechaNacimiento" class="form-label">Fecha Nacimiento</label>
                                        <input type="date" class="form-control form-control-user"
                                            id="fechaNacimiento" placeholder="Fecha Nacimiento" name="fecha"
                                            placeholder="Ingrese fecha nacimiento">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                    <label for="contraseñaRegistro" class="form-label">Contraseña</label>
                                        <input type="password" class="form-control form-control-user"
                                            id="contraseñaRegistro" placeholder="Ingresa contraseña" name="pass">
                                    </div>
                                    <div class="col-sm-6">
                                    <label for="direccionRegistro" class="form-label">Lugar Entrega</label>
                                        <input type="text" class="form-control form-control-user"
                                            id="direccionRegistro" placeholder="Ingresa Direccion" name="direccion">
                                    </div>
                                </div>
                                
                                <input class="btn btn-primary btn-user btn-block" type="submit" value="Registrate">
                               
                                <hr>
                                
                            </form>
                           
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

    <script type="text/javascript">   
    function ver (){
    	var email = $("#exampleInputEmail").val()
        var contra = $("#exampleInputPassword").val()
        console.log(email + contra)
        console.log('Prueba')
    }
    ver();
    console.log('holii');
     
    </script>
    <script>
    
    if(${requestScope.mensaje != null}){
    	alertify.notify('${requestScope.mensaje}', 'custom', 2, function(){console.log('dismissed');});
    	
    }
   
        $(function() {

    $('#login-form-link').click(function(e) {
		$("#login-form").delay(100).fadeIn(100);
 		$("#register-form").fadeOut(100);
		$('#register-form-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});
	$('#register-form-link').click(function(e) {
		$("#register-form").delay(100).fadeIn(100);
 		$("#login-form").fadeOut(100);
		$('#login-form-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});

});

      
    </script>

</body>

</html>