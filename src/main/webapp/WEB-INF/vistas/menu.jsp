<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>

<script> (function(b,c){var e=document.createElement('link');e.rel='stylesheet',e.type='text/css',e.href='https://chatboxlive.blahbox.net/static/css/main.css',document.getElementsByTagName('head')[0].appendChild(e); var f=document.createElement('script');f.onload=function(){var g;if(c)g='previewInit';else{var h=document.createElement('div');g='cbinit',h.id='cbinit',document.body.append(h)} console.log(document.querySelector('#'+g)),chatbox.initChat(document.querySelector('#'+g),b,c)},f.src='https://chatboxlive.blahbox.net/static/js/chat-lib.js',document.getElementsByTagName('head')[0].appendChild(f)}) ('0dea4737237629a956eaa4ceeb21b542', 0); </script>

<title></title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>
<body>
<div class="pos-f-t">
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	  	  <div class="navbar-header">
		       <div class="navbar-header">
	     		 <a class="navbar-brand" href="#">Scobby Store</a>
	  			</div>
	  	</div>
	  
	  <div class="collapse navbar-collapse">
		  <ul class="navbar-nav">
				<c:forEach items="${sessionScope.ENLACES}" var="row">
					<li class="nav-item">
		      			<a class="nav-link" href="${row.ruta}">${row.descripcion}</a>
		    		</li>
				</c:forEach>
		  
		    
			
	
		    
		  </ul>
	
		  <div class="navbar-nav ml-auto">
		  		
		     	<span class="nav-item nav-link">
		     		${sessionScope.USUARIO.apellidos}
		     		${sessionScope.USUARIO.nombres}
		     	</span>  
		     
		        <a href="cerrarSesion" class="nav-item nav-link">Cerar Sesión</a>
	      </div>
    </div>
	</nav>
</div>	


<div class="container">


</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script   src="http://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>



</body>
</html>

