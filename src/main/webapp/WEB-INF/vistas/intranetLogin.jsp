<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<!DOCTYPE html>
<html lang="esS" >
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Expires" content="-1" />
<meta http-equiv="Cache-Control" content="private" />
<meta http-equiv="Cache-Control" content="no-store" />
<meta http-equiv="Pragma" content="no-cache" />

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrapValidator.js"></script>

<link rel="stylesheet" href="css/form-elements.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrapValidator.css">

<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">

<title>Veterinaria</title>
</head>   
<body>    


        <div class="grid grid-cols-2 w-screen h-screen">
        <div>
            <img src="https://www.sadenir.com.uy/wp-content/uploads/2020/11/veterinarian-check-ing-puppy-s-health-2.jpg"
            class="h-screen filter brightness-75"
        >
        </div>
        <div class="grid col-span-1 row-span-3 gap-y-10 flex h-screen justify-center content-center">
            <c:if test="${requestScope.mensaje != null}">
               		<div class="alert alert-danger fade in" id="success-alert">
				        <a href="#" class="close" data-dismiss="alert">&times;</a>
				        <strong>${requestScope.mensaje}</strong>
				    </div>
				    </c:if>
            <img src="https://i.pinimg.com/originals/cf/9c/0b/cf9c0b4e69a7e2433c2913c46f940713.png" class="w-96 h-48">            
            <h3 class="text-center text-2xl text-purple-700 font-bold uppercase tracking-wider">Sistema de Veterinaria</h3>            
                <form id="id_form" action="login" method="post" class="flex flex-col login-form">
                    <div class="mb-6 pt-3 rounded bg-gray-200 form-group">
                        <label class="block text-gray-700 text-sm font-bold mb-2 ml-3" for="form-username">Usuario</label>
                        <input type="text" id="form-username" maxlength="20" name="login" class="form-control bg-gray-200 rounded w-full text-gray-700 focus:outline-none border-b-4 border-gray-300 focus:border-purple-500 transition duration-500 px-3 pb-3">
                    </div>
                    <div class="mb-6 pt-3 rounded bg-gray-200 form-group">
                        <label class="block text-gray-700 text-sm font-bold mb-2 ml-3" for="password">Contraseña</label>
                        <input type="password" id="form-password" maxlength="20" name="password" class="form-control bg-gray-200 rounded w-full text-gray-700 focus:outline-none border-b-4 border-gray-300 focus:border-purple-500 transition duration-500 px-3 pb-3">
                    </div>
                    <div class="flex justify-end">
                        <a href="#" class="text-sm text-purple-500 hover:text-purple-600 hover:underline mb-6">¿No tienes una cuenta?</a>
                    </div>
                    <button class="bg-purple-500 hover:bg-purple-600 text-white font-bold py-2 rounded shadow-lg hover:shadow-xl transition duration-200" type="submit">Iniciar sesión</button>
                </form>
        </div>
        
    </div>


     
<script type="text/javascript">
$("#success-alert").fadeTo(1000, 500).slideUp(500, function(){
    $("#success-alert").slideUp(500);
});
</script>


<script type="text/javascript">
$(document).ready(function() {
    $('#id_form').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	dni: {
                validators: {
                    notEmpty: {
                        message: 'El usuario es obligatorio'
                    },
                    stringLength :{
                    	message: 'El usuario es de 3 a 20 caracteres',
                    	min : 3,
                    	max : 20
                    }
                }
            },
            password: {
                validators: {
                    notEmpty: {
                        message: 'La contraseña es obligatorio'
                    },
                    stringLength :{
                    	message: 'La contraseña es de 3 a 20 caracteres',
                    	min : 3,
                    	max : 20
                    }
                }
            }
        }   
    });

    $('#validateBtn').click(function() {
        $('#id_form').bootstrapValidator('validate');
    });
});
</script>

</body>
</html>