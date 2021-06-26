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
    <title>Entre Patas</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
    <link href="css/estilosLogin.css" rel="stylesheet" >

</head>

<body class="bg-gradient-primary">

    <div class="container">
   
        <!-- Outer Login-->
        <div class="row justify-content-center login fadeInDown">
            <div class="col-xl-10 col-lg-12 col-md-12">
                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0 ">
             
                        <!-- Nested Row within Card Body -->
                        <div class="row">
                            <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">Bienvendio(a)!</h1>
                                    </div>
                                    <form class="user" action="iniciarSesion" method="post" >
                                        <div class="form-group">
                                            <input type="text" class="form-control form-control-user correo"
                                                id="exampleInputEmail" aria-describedby="emailHelp"
                                                placeholder="Ingresa tu correo" name="correo" required>
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control form-control-user pass"
                                                id="exampleInputPassword" placeholder="Ingresa Contrase�a" name="pass">
                                        </div>
                                        
                                        <input  class="btn btn-primary btn-user btn-block" type="submit" value="Login">
                                        <hr>
                                        
                                    </form>
                                   
                                    <div class="text-center">
                                        <button class="small registar btn btn-success">Crea una Cuenta!</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Outer Registro -->
        <div class="card o-hidden border-0 shadow-lg my-3 register fadeInDown" style="display: none;">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
                    <div class="col-lg-7">
                        <div class="p-3">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">Crea tu Cuenta!</h1>
                            </div>
                            <form class="user" action="intranetRegistraUsuario" method="post">
                            <input type="text" value="2" hidden name="rol" />
                                <div class="form-group row">
                                    <div class="col-sm-6">
                                    
                                        <input type="text" class="form-control form-control-user" id="nombreRegistro"
                                            placeholder="Ingresa nombre" name="nombre">
                                    </div>
                                    <div class="col-sm-6">
                                    
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
                                    <label for="contrase�aRegistro" class="form-label">Contrase�a</label>
                                        <input type="password" class="form-control form-control-user"
                                            id="contrase�aRegistro" placeholder="Ingresa contrase�a" name="pass">
                                    </div>
                                    <div class="col-sm-6">
                                    <label for="direccionRegistro" class="form-label">Direccion</label>
                                        <input type="text" class="form-control form-control-user"
                                            id="direccionRegistro" placeholder="Ingresa Direccion" name="direccion">
                                    </div>
                                </div>
                                 <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                    <label for="dniRegistro" class="form-label">Dni</label>
                                        <input type="number" class="form-control form-control-user"
                                            id="contrase�aRegistro" placeholder="Ingresa dni" name="dni" >
                                    </div>
                                    <div class="col-sm-6">
                                    <label for="telefonoRegistro" class="form-label">Telefono</label>
                                        <input type="number" class="form-control form-control-user"
                                            id="telefonoRegistro" placeholder="Ingresa telefono" name="telefono"
                                            value="Fecha" maxlength="9">
                                    </div>
                                </div>
                                <input class="btn btn-primary btn-user btn-block" type="submit" value="Registrate">
                               
                                <hr>
                                
                            </form>
                           
                            <div class="text-center">
                                <button class="small btn btn-success reverse_register">Ya tienes una cuenta? Logueate!</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    
    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>
    <script type="text/javascript">
     
    function ver (){
    	var email = $("#exampleInputEmail").val()
        var contra = $("#exampleInputPassword").val()
        console.log(email + contra)
        console.log('hola')
    }
    ver();
     
    </script>
    <script>
    
    if(${requestScope.mensaje != null}){
    
    	Swal.fire('${requestScope.mensaje}')
    }

        $('.registar').click( function(){
            $('.login').css('display','none')
            $('.register').css('display','flex')
        })

        $('.reverse_register').click(function(){
            $('.login').css('display','flex')
            $('.register').css('display','none')
        })
        
        $('.iniciar').click(function(e){
        	e.preventDefault()
        	var correo = $('.correo').val()
        	var pass = $('.pass').val()
        	if(correo == 'user' && pass=='1234'){
        		window.location='tienda'
        	}
        	else if(correo=='admin'&&pass=='1234'){
        		window.location ='admin'
        	}
        })
        
       
    </script>

</body>

</html>