<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tienda</title>
     <link rel="icon" href="img/icono.jpg">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" integrity="sha384-vSIIfh2YWi9wW0r9iZe7RJPrKwp6bG+s9QZMoITbCckVJqGCCRhc+ccxNcdpHuYu" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    <link rel="stylesheet" href="css/estilosTienda.css">
</head>
<body>
<jsp:include page="reusable/navegacion.jsp"/>

   
    <div class="container col-md-11">
        <div class="ventas">
            <div class="categorias">
                <p>Categorias</p>
                <ul>
                    <li><a id="c-telefonia" href="#"><i class="fas fa-tshirt"></i>Ropa</a></li>
                    <li><a id="c-moda" href="#"><i class="fas fa-utensils"></i>Comida</a></li>
                    <li><a id="c-electronica" href="#"><i class="fas fa-bone"></i>Juguetes</a></li>
                    <li><a id="c-salud" href="#"><i class="fas fa-prescription-bottle-alt"></i>Medicinas</a></li>
                    <li><a id="c-laptop" href="#"><i class="fas fa-pump-soap"></i>Limpieza</a></li>
                    <li><a id="c-all" href="#"><i class="fas fa-compress-alt"></i>Todos</a></li>
                </ul>
            </div>
            <div class="banner">

            </div>
            <!-- <div class="ofertas" id="ofertas">
            </div> -->
        </div>

        <div class="general">
            <h3 class="h3">Destacados </h3>
            <div class="row"  id="verProductos" >
               
            </div>
        </div>
    </div>
    <br>
    <div class="botones-cuenta min">
        <button id="cesta2" title="Cesta"><i class="fas fa-cart-plus"></i><span class="cesta-numero" id="cesta-numero">0</span></button>
        <a href="cuenta" class="footer-a" ><button id="salir" title="Mi Cuenta"><i class="fas fa-user-friends"></i> Cuenta</button></a>
        <a href="login" class="footer-a" ><button id="salir" title="Salir"><i class="fas fa-sign-out-alt"></i> Login</button></a>
     </div>
     
    
</body>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="js/app.js"></script>
<script src="js/tienda.js"></script>
<script type="text/javascript">
const cesta2 = document.querySelector('#cesta2');
cesta2.addEventListener('click',()=>{
	  location.href = "verBoleta"
})

</script>
</html>