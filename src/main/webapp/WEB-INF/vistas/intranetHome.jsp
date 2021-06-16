<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<jsp:include page="intranetValida.jsp" />
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

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>

<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" href="css/dataTables.bootstrap.min.css"/>
<link rel="stylesheet" href="css/bootstrapValidator.css"/>

<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">


<title>Veterinaria</title>
</head>


<style>

.general {
   width: 80%;
    background-color: rgb(255, 255, 255);
    margin: 4% 10%;
    padding: 10px;
    border-radius: 20px;
    display: block;
}



</style>
<body>


<!-- <style type="text/css">
body {background:url("images/vete2.jpg");}
</style>  -->
<div class="main h-screen w-screen">
	<div class="menu">
		<jsp:include page="intranetCabecera.jsp" />
	</div>
	<div class="bg-white mt-32 h-screen w-3/4 mx-auto">
        <div class="title text-4xl text-red-600 uppercase font-bold text-center m-20">Nuestros productos</div>
        <div class="flex justify-evenly mt-16">
            <div class="bg-white rounded-md text-center w-72 p-4 border-4 shadow-2xl">
                <img src="https://plazavea.vteximg.com.br/arquivos/ids/347199-1000-1000/955926.jpg?v=637292430585400000"
                    class="w-56 mx-auto hover:opacity-75">
                <h1 class="text-md font-semibold mt-5 text-left">Producto 1 de prueba- Comida para perro</h1>
                <p class="text-red-600 text-lg text-right font-bold mt-2 mb-3">S/.500.00</p>                
                <button class="bg-red-600 w-full py-2 px-6 mt-4 mb-3 text-white font-semibold">Comprar</button>                
            </div>
            <div class="bg-white rounded-md text-center w-72 w-64 p-4 border-4 shadow-2xl">
                <img src="https://plazavea.vteximg.com.br/arquivos/ids/347199-1000-1000/955926.jpg?v=637292430585400000"
                    class="w-56 mx-auto hover:opacity-75">
                <h1 class="text-md font-semibold mt-5 text-left">Producto 1 de prueba- Comida para perro</h1>
                <p class="text-red-600 text-lg text-right font-bold mt-2 mb-3">S/.500.00</p>
                <button class="bg-red-600 w-full py-2 px-6 mt-4 mb-3 text-white font-semibold">Comprar</button>           
            </div>
            <div class="bg-white rounded-md text-center w-72 w-64 p-4 border-4 shadow-2xl">
                <img src="https://plazavea.vteximg.com.br/arquivos/ids/347199-1000-1000/955926.jpg?v=637292430585400000"
                    class="w-56 mx-auto hover:opacity-75">
                <h1 class="text-md font-semibold mt-5 text-left">Producto 1 de prueba- Comida para perro</h1>
                <p class="text-red-600 text-lg text-right font-bold mt-2 mb-3">S/.500.00</p>
                <button class="bg-red-600 w-full py-2 px-6 mt-4 mb-3 text-white font-semibold">Comprar</button>                
            </div>
            <div class="bg-white rounded-md text-center w-72 w-64 p-4 border-4 shadow-2xl">
                <img src="https://plazavea.vteximg.com.br/arquivos/ids/347199-1000-1000/955926.jpg?v=637292430585400000"
                    class="w-56 mx-auto hover:opacity-75">
                <h1 class="text-md font-semibold mt-5 text-left">Producto 1 de prueba- Comida para perro</h1>
                <p class="text-red-600 text-lg text-right font-bold mt-2 mb-3">S/.500.00</p>
                <button class="bg-red-600 w-full py-2 px-6 mt-4 mb-3 text-white font-semibold">Comprar</button>                
            </div>                  
        </div>
        <div class="flex justify-evenly mt-16">
            <div class="bg-white rounded-md text-center w-72 p-4 border-4 shadow-2xl">
                <img src="https://plazavea.vteximg.com.br/arquivos/ids/347199-1000-1000/955926.jpg?v=637292430585400000"
                    class="w-56 mx-auto hover:opacity-75">
                <h1 class="text-md font-semibold mt-5 text-left">Producto 1 de prueba- Comida para perro</h1>
                <p class="text-red-600 text-lg text-right font-bold mt-2 mb-3">S/.500.00</p>                
                <button class="bg-red-600 w-full py-2 px-6 mt-4 mb-3 text-white font-semibold">Comprar</button>                
            </div>
            <div class="bg-white rounded-md text-center w-72 w-64 p-4 border-4 shadow-2xl">
                <img src="https://plazavea.vteximg.com.br/arquivos/ids/347199-1000-1000/955926.jpg?v=637292430585400000"
                    class="w-56 mx-auto hover:opacity-75">
                <h1 class="text-md font-semibold mt-5 text-left">Producto 1 de prueba- Comida para perro</h1>
                <p class="text-red-600 text-lg text-right font-bold mt-2 mb-3">S/.500.00</p>
                <button class="bg-red-600 w-full py-2 px-6 mt-4 mb-3 text-white font-semibold">Comprar</button>           
            </div>
            <div class="bg-white rounded-md text-center w-72 w-64 p-4 border-4 shadow-2xl">
                <img src="https://plazavea.vteximg.com.br/arquivos/ids/347199-1000-1000/955926.jpg?v=637292430585400000"
                    class="w-56 mx-auto hover:opacity-75">
                <h1 class="text-md font-semibold mt-5 text-left">Producto 1 de prueba- Comida para perro</h1>
                <p class="text-red-600 text-lg text-right font-bold mt-2 mb-3">S/.500.00</p>
                <button class="bg-red-600 w-full py-2 px-6 mt-4 mb-3 text-white font-semibold">Comprar</button>                
            </div>
            <div class="bg-white rounded-md text-center w-72 w-64 p-4 border-4 shadow-2xl">
                <img src="https://plazavea.vteximg.com.br/arquivos/ids/347199-1000-1000/955926.jpg?v=637292430585400000"
                    class="w-56 mx-auto hover:opacity-75">
                <h1 class="text-md font-semibold mt-5 text-left">Producto 1 de prueba- Comida para perro</h1>
                <p class="text-red-600 text-lg text-right font-bold mt-2 mb-3">S/.500.00</p>
                <button class="bg-red-600 w-full py-2 px-6 mt-4 mb-3 text-white font-semibold">Comprar</button>                
            </div>                  
        </div>
        <div class="flex justify-evenly mt-16">
            <div class="bg-white rounded-md text-center w-72 p-4 border-4 shadow-2xl">
                <img src="https://plazavea.vteximg.com.br/arquivos/ids/347199-1000-1000/955926.jpg?v=637292430585400000"
                    class="w-56 mx-auto hover:opacity-75">
                <h1 class="text-md font-semibold mt-5 text-left">Producto 1 de prueba- Comida para perro</h1>
                <p class="text-red-600 text-lg text-right font-bold mt-2 mb-3">S/.500.00</p>                
                <button class="bg-red-600 w-full py-2 px-6 mt-4 mb-3 text-white font-semibold">Comprar</button>                
            </div>
            <div class="bg-white rounded-md text-center w-72 w-64 p-4 border-4 shadow-2xl">
                <img src="https://plazavea.vteximg.com.br/arquivos/ids/347199-1000-1000/955926.jpg?v=637292430585400000"
                    class="w-56 mx-auto hover:opacity-75">
                <h1 class="text-md font-semibold mt-5 text-left">Producto 1 de prueba- Comida para perro</h1>
                <p class="text-red-600 text-lg text-right font-bold mt-2 mb-3">S/.500.00</p>
                <button class="bg-red-600 w-full py-2 px-6 mt-4 mb-3 text-white font-semibold">Comprar</button>           
            </div>
            <div class="bg-white rounded-md text-center w-72 w-64 p-4 border-4 shadow-2xl">
                <img src="https://plazavea.vteximg.com.br/arquivos/ids/347199-1000-1000/955926.jpg?v=637292430585400000"
                    class="w-56 mx-auto hover:opacity-75">
                <h1 class="text-md font-semibold mt-5 text-left">Producto 1 de prueba- Comida para perro</h1>
                <p class="text-red-600 text-lg text-right font-bold mt-2 mb-3">S/.500.00</p>
                <button class="bg-red-600 w-full py-2 px-6 mt-4 mb-3 text-white font-semibold">Comprar</button>                
            </div>
            <div class="bg-white rounded-md text-center w-72 w-64 p-4 border-4 shadow-2xl">
                <img src="https://plazavea.vteximg.com.br/arquivos/ids/347199-1000-1000/955926.jpg?v=637292430585400000"
                    class="w-56 mx-auto hover:opacity-75">
                <h1 class="text-md font-semibold mt-5 text-left">Producto 1 de prueba- Comida para perro</h1>
                <p class="text-red-600 text-lg text-right font-bold mt-2 mb-3">S/.500.00</p>
                <button class="bg-red-600 w-full py-2 px-6 mt-4 mb-3 text-white font-semibold">Comprar</button>                
            </div>                  
        </div>
        <div class="flex justify-evenly mt-16">
            <div class="bg-white rounded-md text-center w-72 p-4 border-4 shadow-2xl">
                <img src="https://plazavea.vteximg.com.br/arquivos/ids/347199-1000-1000/955926.jpg?v=637292430585400000"
                    class="w-56 mx-auto hover:opacity-75">
                <h1 class="text-md font-semibold mt-5 text-left">Producto 1 de prueba- Comida para perro</h1>
                <p class="text-red-600 text-lg text-right font-bold mt-2 mb-3">S/.500.00</p>                
                <button class="bg-red-600 w-full py-2 px-6 mt-4 mb-3 text-white font-semibold">Comprar</button>                
            </div>
            <div class="bg-white rounded-md text-center w-72 w-64 p-4 border-4 shadow-2xl">
                <img src="https://plazavea.vteximg.com.br/arquivos/ids/347199-1000-1000/955926.jpg?v=637292430585400000"
                    class="w-56 mx-auto hover:opacity-75">
                <h1 class="text-md font-semibold mt-5 text-left">Producto 1 de prueba- Comida para perro</h1>
                <p class="text-red-600 text-lg text-right font-bold mt-2 mb-3">S/.500.00</p>
                <button class="bg-red-600 w-full py-2 px-6 mt-4 mb-3 text-white font-semibold">Comprar</button>           
            </div>
            <div class="bg-white rounded-md text-center w-72 w-64 p-4 border-4 shadow-2xl">
                <img src="https://plazavea.vteximg.com.br/arquivos/ids/347199-1000-1000/955926.jpg?v=637292430585400000"
                    class="w-56 mx-auto hover:opacity-75">
                <h1 class="text-md font-semibold mt-5 text-left">Producto 1 de prueba- Comida para perro</h1>
                <p class="text-red-600 text-lg text-right font-bold mt-2 mb-3">S/.500.00</p>
                <button class="bg-red-600 w-full py-2 px-6 mt-4 mb-3 text-white font-semibold">Comprar</button>                
            </div>
            <div class="bg-white rounded-md text-center w-72 w-64 p-4 border-4 shadow-2xl">
                <img src="https://plazavea.vteximg.com.br/arquivos/ids/347199-1000-1000/955926.jpg?v=637292430585400000"
                    class="w-56 mx-auto hover:opacity-75">
                <h1 class="text-md font-semibold mt-5 text-left">Producto 1 de prueba- Comida para perro</h1>
                <p class="text-red-600 text-lg text-right font-bold mt-2 mb-3">S/.500.00</p>
                <button class="bg-red-600 w-full py-2 px-6 mt-4 mb-3 text-white font-semibold">Comprar</button>                
            </div>                  
        </div>
        <div class="flex justify-evenly mt-16">
            <div class="bg-white rounded-md text-center w-72 p-4 border-4 shadow-2xl">
                <img src="https://plazavea.vteximg.com.br/arquivos/ids/347199-1000-1000/955926.jpg?v=637292430585400000"
                    class="w-56 mx-auto hover:opacity-75">
                <h1 class="text-md font-semibold mt-5 text-left">Producto 1 de prueba- Comida para perro</h1>
                <p class="text-red-600 text-lg text-right font-bold mt-2 mb-3">S/.500.00</p>                
                <button class="bg-red-600 w-full py-2 px-6 mt-4 mb-3 text-white font-semibold">Comprar</button>                
            </div>
            <div class="bg-white rounded-md text-center w-72 w-64 p-4 border-4 shadow-2xl">
                <img src="https://plazavea.vteximg.com.br/arquivos/ids/347199-1000-1000/955926.jpg?v=637292430585400000"
                    class="w-56 mx-auto hover:opacity-75">
                <h1 class="text-md font-semibold mt-5 text-left">Producto 1 de prueba- Comida para perro</h1>
                <p class="text-red-600 text-lg text-right font-bold mt-2 mb-3">S/.500.00</p>
                <button class="bg-red-600 w-full py-2 px-6 mt-4 mb-3 text-white font-semibold">Comprar</button>           
            </div>
            <div class="bg-white rounded-md text-center w-72 w-64 p-4 border-4 shadow-2xl">
                <img src="https://plazavea.vteximg.com.br/arquivos/ids/347199-1000-1000/955926.jpg?v=637292430585400000"
                    class="w-56 mx-auto hover:opacity-75">
                <h1 class="text-md font-semibold mt-5 text-left">Producto 1 de prueba- Comida para perro</h1>
                <p class="text-red-600 text-lg text-right font-bold mt-2 mb-3">S/.500.00</p>
                <button class="bg-red-600 w-full py-2 px-6 mt-4 mb-3 text-white font-semibold">Comprar</button>                
            </div>
            <div class="bg-white rounded-md text-center w-72 w-64 p-4 border-4 shadow-2xl">
                <img src="https://plazavea.vteximg.com.br/arquivos/ids/347199-1000-1000/955926.jpg?v=637292430585400000"
                    class="w-56 mx-auto hover:opacity-75">
                <h1 class="text-md font-semibold mt-5 text-left">Producto 1 de prueba- Comida para perro</h1>
                <p class="text-red-600 text-lg text-right font-bold mt-2 mb-3">S/.500.00</p>
                <button class="bg-red-600 w-full py-2 px-6 mt-4 mb-3 text-white font-semibold">Comprar</button>                
            </div>                  
        </div>
	</div>

</div>           
    


<%-- <div class="container" style="margin-top: 5%"Carlos Gutarra>
 <h3>Sistema Veterinaria</h3>
<br><br>
<h4>Bienvenido Sr(a): ${sessionScope.objUsuario.nombreCompleto}</h4><br>                
<h4>DNI: ${sessionScope.objUsuario.dni}</h4><br>
<h4>Roles:</h4>
	<ul>
        <c:forEach var="x" items="${sessionScope.objRoles}">
            <li>
                   ${x.nombre} 
            </li>
        </c:forEach>
    </ul><br> 
</div> 
 --%>
<div class="container" >
<div class="col-md-12" align="center" style="width: 50px; height: 150px" > 



</div>
</div>

	
</body>
</html>