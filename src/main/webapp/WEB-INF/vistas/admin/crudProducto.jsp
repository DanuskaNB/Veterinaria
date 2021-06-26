<jsp:include page="../reusable/headerAdmin.jsp"/>
<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="admin">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">Hola! <sup>2</sup></div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item">
                <a class="nav-link" href="admin">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Interface
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item active">
                <a class="nav-link" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true"
                    aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>Crud's</span>
                </a>
                <div id="collapseTwo" class="collapse show" aria-labelledby="headingTwo"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Mantenimientos</h6>
                       <a class="collapse-item active" href="cliente">
                            Listado de Clientes
                        </a>
                        <a class="collapse-item" href="verCrudProducto">Mantenimiento Producto</a>
                        <a class="collapse-item" href="verCrudServicio">Mantenimiento Servicios</a>
                    </div>
                </div>
            </li>


         

            <!-- Nav Item - Charts -->
            <li class="nav-item">
                <a class="nav-link" href="tienda">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>Tienda</span></a>
            </li>

            <!-- Nav Item - Tables -->
           
            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>
       
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Search -->
                    <form
                        class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                                aria-label="Search" aria-describedby="basic-addon2">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="button">
                                    <i class="fas fa-search fa-sm"></i>
                                </button>
                            </div>
                        </div>
                    </form>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Search for..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>

                        <!-- Nav Item - Alerts -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-bell fa-fw"></i>
                                <!-- Counter - Alerts -->
                                <span class="badge badge-danger badge-counter">3+</span>
                            </a>
                            <!-- Dropdown - Alerts -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="alertsDropdown">
                                <h6 class="dropdown-header">
                                    Alerts Center
                                </h6>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-primary">
                                            <i class="fas fa-file-alt text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 12, 2019</div>
                                        <span class="font-weight-bold">A new monthly report is ready to download!</span>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-success">
                                            <i class="fas fa-donate text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 7, 2019</div>
                                        $290.29 has been deposited into your account!
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-warning">
                                            <i class="fas fa-exclamation-triangle text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 2, 2019</div>
                                        Spending Alert: We've noticed unusually high spending for your account.
                                    </div>
                                </a>
                                <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
                            </div>
                        </li>

                        <!-- Nav Item - Messages -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-envelope fa-fw"></i>
                                <!-- Counter - Messages -->
                                <span class="badge badge-danger badge-counter">7</span>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="messagesDropdown">
                                <h6 class="dropdown-header">
                                    Message Center
                                </h6>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="img/undraw_profile_1.svg"
                                            alt="">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div class="font-weight-bold">
                                        <div class="text-truncate">Hi there! I am wondering if you can help me with a
                                            problem I've been having.</div>
                                        <div class="small text-gray-500">Emily Fowler 路 58m</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="img/undraw_profile_2.svg"
                                            alt="">
                                        <div class="status-indicator"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">I have the photos that you ordered last month, how
                                            would you like them sent to you?</div>
                                        <div class="small text-gray-500">Jae Chun 路 1d</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="img/undraw_profile_3.svg"
                                            alt="">
                                        <div class="status-indicator bg-warning"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">Last month's report looks great, I am very happy with
                                            the progress so far, keep up the good work!</div>
                                        <div class="small text-gray-500">Morgan Alvarez 路 2d</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60"
                                            alt="">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">Am I a good boy? The reason I ask is because someone
                                            told me that people say this to all dogs, even if they aren't good...</div>
                                        <div class="small text-gray-500">Chicken the Dog 路 2w</div>
                                    </div>
                                </a>
                                <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
                            </div>
                        </li>

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Deyvis</span>
                                <img class="img-profile rounded-circle"
                                    src="img/undraw_profile.svg">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Profile
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Settings
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Activity Log
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->
                
                <!-- ------           CRUDS                  ------------- -->
                <!-- Begin Page Content -->
                <div class="container-fluid">
<h4>Mantener Producto | Entre Patas</h4>
					<div class="row my-2" >
						<div class="col-md-5 my-2" >
								<input class="form-control" id="id_txt_filtro"  name="filtro" placeholder="Ingrese el nombre" type="text" maxlength="30"/>
						</div>
						<div class="m-2" >
							<button type="button" class="btn btn-primary" id="id_btn_filtrar" style="width: 150px">FILTRAR</button>
						</div>
						<div class="m-2">
						<button type="button" class="btn btn-primary levantarRegistro" data-bs-toggle="modal">Registrar</button>
						</div>
					</div>
					
					<div class="row" > 
						<div class="table-responsive">
						
									<table id="id_table" class="table table-bordered" >
										<thead>
											<tr>
												<th style="width: 10%">ID</th>
												<th style="width: 20%">Nombre</th>
												<th style="width: 10%">Descripcion</th>
												<th style="width: 10%">caracteristicas</th>
												<th style="width: 10%">Marca</th>
												<th style="width: 20%">Serie</th>
												<th style="width: 20%">Proveedor</th>
												<th style="width: 15%">Precio</th>
												<th style="width: 20%">Stock</th>
												<th style="width: 20%">Categoria</th>
												<th style="width: 10%">Actualiza </th>
												<th style="width: 10%">Elimina </th>
											</tr>
										</thead>
											<tbody>
											</tbody>
										</table>	
									
							
					</div>
		  </div>
  
  
  	 <div class="modal fade " id="modal_registra" >
			<div class="modal-dialog">
		
				<!-- Modal content-->
				<div class="modal-content">
				<div class="modal-header">
					   <h5 class="modal-title" id="exampleModalLabel">Ingrese Datos</h5>
                       <button type="button" class="btn-close btn btn-danger" data-bs-dismiss="modal" aria-label="Close"><i class="fas fa-times"></i></button>
				</div>
				<div class="modal-body">
						<form id="id_form_registra" >
						
											<div class="form-group">
		                                        <label class="col-form-label" for="id_reg_nombre">Nombre</label>
													<input class="form-control" id="id_reg_nombre" name="nombre" placeholder="Ingrese el Nombre" type="text" maxlength="20"/>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_reg_descripcion">Descripcion</label>
													<input class="form-control" id="id_reg_descripcion" name="descripcion" placeholder="Ingrese la descripcion" type="text" maxlength="20"/>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_reg_detalles">Caracteristicas</label>
													<textarea class="form-control" id="id_reg_caracteristicas" name="caracteristicas"rows="2" cols="20" ></textarea>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_reg_marca">Marca</label>
													<select id="id_reg_marca" name="marca" class='form-control'>
							                                 <option value=" " >[SELECCIONE]</option>
							                         </select>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_reg_serie">Serie</label>
													<input class="form-control" id="id_reg_serie" name="serie" placeholder="Ingrese la serie del producto" type="text" maxlength="20"/>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_reg_proveedor">Proveedor</label>
													<select id="id_reg_proveedor" name="proveedor" class='form-control'>
							                                 <option value=" " >[SELECCIONE]</option>
							                         </select>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_reg_precios">Precio</label>
													<input class="form-control" id="id_reg_precios" name="precio" placeholder="Ingrese el Precio" type="text" maxlength="20"/>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_reg_stock">Stock</label>
													<input class="form-control" id="id_reg_stock" name="stock" placeholder="Ingrese el Stock" type="text" maxlength="20"/>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_reg_categoria">Categoria</label>
													<select id="id_reg_categoria" name="categoria" class='form-control'>
							                                 <option value=" " >[SELECCIONE]</option>
							                         </select>
		                                    </div>   
		                                   
		                                   <div class="form-group">
		                                        <label for="staticEmail">Foto1</label>
													<input type="file" id="foto1" class="form-control" name="foto1" />
		                                    </div>
		                                   
		                                     <div class="col-lg-2">								

													<img id="id_reg_preview" width="210" height="230">

										   </div>
										   
										    <div class="col-lg-2">								

													<img id="id_reg_preview2" width="210" height="230">

										   </div>
		                   
		                                     
		                                    <div class="form-group my-2">
		                                        <div class="col-lg-9 col-lg-offset-3">
		                                        	<button class="btn btn-primary" id="id_btn_registra">REGISTRAR</button>
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
				<h4><span class="glyphicon glyphicon-ok-sign"></span> Actualiza Producto</h4>
					<button type="button" class="btn-close btn btn-danger" data-bs-dismiss="modal" aria-label="Close"><i class="fas fa-times"></i></button>
					
				</div>
				<div class="modal-body">
						<form id="id_form_actualiza" accept-charset="UTF-8"  action=""  method="post" enctype="multipart/form-data">
		                    
		                                	<div class="form-group">
		                                        <label class="col-form-label" for="id_act_idproducto">idproducto</label>
													<input class="form-control" id="id_act_idproducto" name="idproducto" type="text" />
		                                    </div>
		                                     <div class="form-group">
		                                        <label class="col-form-label" for="id_act_nombre">Nombre</label>
													<input class="form-control" id="id_act_nombre" name="nombre" placeholder="Ingrese el Nombre" type="text" maxlength="20"/>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_act_descripcion">Descripcion</label>
													<input class="form-control" id="id_act_descripcion" name="descripcion" placeholder="Ingrese la descripcion" type="text" maxlength="20"/>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_act_des_detalles">Caracteristicas</label>
													<textarea class="form-control" id="id_act_caracteristicas" name="caracteristicas" rows="2" cols="20" ></textarea>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_act_marca">Marca</label>
													<select id="id_act_marca" name="marca" class='form-control'>
							                                 <option value=" " >[SELECCIONE]</option>
							                         </select>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_act_serie">Serie</label>
													<input class="form-control" id="id_act_serie" name="serie" placeholder="Ingrese la serie del producto" type="text" maxlength="20"/>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_act_proveedor">Proveedor</label>
													<select id="id_act_proveedor" name="proveedor" class='form-control'>
							                                 <option value=" " >[SELECCIONE]</option>
							                         </select>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_act_precio">Precio</label>
													<input class="form-control" id="id_act_precio" name="precio" placeholder="Ingrese el Precio" type="text" maxlength="20"/>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_act_stock">Stock</label>
													<input class="form-control" id="id_act_stock" name="stock" placeholder="Ingrese el Stock" type="text" maxlength="20"/>
		                                    </div>
		                                    <div class="form-group">
		                                        <label class="col-form-label" for="id_act_categoria">Categoria</label>
													<select id="id_act_categoria" name="categoria" class='form-control'>
							                                 <option value=" " >[SELECCIONE]</option>
							                         </select>
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
							<h4><span class="glyphicon glyphicon-ok-sign"></span>緿esea eliminar el producto?</h4>
						</div>
				
						  <div class="modal-footer">
						    <button type="button" id="idBtnElimina" name="modalDe" class="btn btn-primary">ELIMINAR</button>
						    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
						  </div>
					</div>
				</div>
				</div>

                    <!-- Page Heading -->
                   
                    <!-- Content Row -->
                  
                    <!-- Content Row -->

                
                    <!-- Content Row -->
                    <div class="row">

                        <!-- Content Column -->
                        <div class="col-lg-6 mb-4">

                            <!-- Project Card Example -->
                         
                            <!-- Color System -->
                           

                        </div>

                        <div class="col-lg-6 mb-4">


                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2020</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">脳</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>


</body>

<jsp:include page="../reusable/footerAdmin.jsp"/>
<script>
const $form = document.querySelector('#id_form_registra')
$form.addEventListener('submit', async (event) => {
	 event.preventDefault()
    
	var validator = $('#id_form_registra').data('bootstrapValidator');
    validator.validate();
	
    if (validator.isValid()) {
   
    try{
   	 const formData = new FormData(event.currentTarget)
	 const result = await  fetch('registraCrudProducto', {
	        method: 'POST',
	        body: formData,
     });
   	 $('#modal_registra').modal("hide");
   	 limpiarFormulario();
	 validator.resetForm();
   	  Swal.fire(
	      'Guardado',
	      'Registro Guardado Correctamente',
	      'success'
	 )
	
    }catch(e){
    	console.log(e)
    	 Swal.fire(
	      'Error',
	      'Registro no se guardo',
	      'error'
	    )
    }
    }
 })




$(document).ready(function() {
	llenarMarca();
	llenarProveedor();
	llenarCategoria();
});
</script>
<script type="text/javascript">	

$("#foto1").change(function(event){

	  var filename = $("#foto1").val();

	  var extension = filename.split('.').pop().toLowerCase();

	  if(extension == 'jpg' || extension == 'png'){

	  	var src = URL.createObjectURL(event.target.files[0]);

			$("#id_reg_preview").attr("src",src);
		}
});

$("#foto2").change(function(event){

	  var filename = $("#foto2").val();

	  var extension = filename.split('.').pop().toLowerCase();

	  if(extension == 'jpg' || extension == 'png'){

	  	var src = URL.createObjectURL(event.target.files[0]);

			$("#id_reg_preview2").attr("src",src);
		}
});

		function llenarMarca(){
			$.getJSON("listarMarca",{},function(data){
				console.log(data)
				$.each(data,function(index,item){
					$("#id_reg_marca").append("<option value='"+ item.idmarca+"'>"+item.nombre+"</option>");
					$("#id_act_marca").append("<option value='"+ item.idmarca+"'>"+item.nombre+"</option>");
				})
			})
			
		}


		function llenarProveedor(){
			$.getJSON("listarProveedor",{},function(data){
				console.log(data)
				$.each(data,function(index,item){
					$("#id_reg_proveedor").append("<option value='"+ item.idproveedor+"'>"+item.nombre+"</option>");
					$("#id_act_proveedor").append("<option value='"+ item.idproveedor+"'>"+item.nombre+"</option>");
				})
			})
			
		}


		function llenarCategoria(){
			$.getJSON("listarCategoria",{},function(data){
				console.log(data)
				$.each(data,function(index,item){
					$("#id_reg_categoria").append("<option value='"+ item.idcategoria+"'>"+item.nombre+"</option>");
					$("#id_act_categoria").append("<option value='"+ item.idcategoria+"'>"+item.nombre+"</option>");
				})
			})
			
		}



		$("#id_btn_filtrar").click(function(){
			var fil=$("#id_txt_filtro").val();
			$.getJSON("consultaCrudProducto",{"filtro":fil}, function (lista){
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
					{data: "idproducto"},
					{data: "nombre"},
					{data: "descripcion"},
					{data: "caracteristicas"},
					{data: "marca"},
					{data: "serie"},
					{data: "proveedor"},
					{data: "precio"},
					{data: "stock"},
					{data: "categoria"},
					{data: function(row, type, val, meta){
						var salida='<button type="button" style="width: 90px" class="btn btn-info btn-sm" onclick="editar(\''+row.idproducto + '\',\'' + row.nombre +'\',\'' + row.descripcion  + '\',\'' + row.caracteristicas + '\',\'' +  row.marca + '\',\'' +  row.serie + '\',\'' +  row.proveedor + '\',\'' + row.precio +'\',\'' + row.stock  + '\',\'' + row.categoria +'\')">Editar</button>';
						console.log(row.nombre)
						return salida;
					},className:'text-center'},	
					{data: function(row, type, val, meta){
					    var salida='<button type="button" style="width: 90px" class="btn btn-danger btn-sm" onclick="eliminar(\'' + row.idproducto + '\')">Eliminar</button>';
						return salida;
					},className:'text-center'},													
				]                                     
		    });
	}
	
	function listarProductos(){
		fetch('consultaCrudProducto?filtro=')
		.then(response => response.json())
		.then(data =>{
			agregarGrilla(data)
			console.log(data)
		})
	}
	
	
	$("#id_btn_registraS").click(function(){
		var validator = $('#id_form_registra').data('bootstrapValidator');
	    validator.validate();
		
	    if (validator.isValid()) {

	        var formData = new FormData();
	        var file = $('#foto1')[0].files[0];
	        var file2 = $('#foto2')[0].files[0];
	        
	        formData.append("foto1", file);
	        formData.append("foto2", file2);
	        formData.append("nombre", $('#id_reg_nombre').val());
	        formData.append("descripcion",$('#id_reg_descripcion').val());
	        formData.append("caracteristicas",$('#id_reg_caracteristicas').val());
	        formData.append("marca",$('#id_reg_marca').val());
	        formData.append("serie",$('#id_reg_serie').val());
	        formData.append("proveedor",$('#id_reg_proveedor').val());
	        formData.append("precio",$('#id_reg_precio').val());
	        formData.append("stock",$('#id_reg_stock').val());
	        formData.append("categoria",$('#id_reg_categoria').val());
	       
	        
	        $.ajax({
	          type: "POST",
	          url: "registraCrudProducto", 
	          data: formData,
	          enctype : 'multipart/form-data',
	          contentType : false,
	          processData : false,
	          cache:false,
	          success: function(data){
	        	  agregarGrilla(data.lista);
	        	  $('#id_div_modal_registra').modal("hide");
	        	  console.log(data.mensaje);
	        	  limpiarFormulario();
	        	  validator.resetForm();
	          },
	          error: function(){
	        	  console.log("Error");
	          }
	        });
	        
	    }
	});
	
	
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
				  fetch('eliminaCrudProducto?id='+id)
					.then(response => response.json())
					.then(data=>{
						  Swal.fire(
							      'Eliminado!',
							      'Registro eliminado Correctamente',
							      'success'
							    )
						listarProductos()
					})
			  }
			})
		
		
	}
	
	function accionEliminar(id){	
		
	
	}
	
	function editar(id,nombre,descripcion,caracteristicas,marca,serie,proveedor,precio,stock,categoria){
		console.log('editar');	
		$('#id_act_idproducto').val(id);
		$('#id_act_nombre').val(nombre);
		$('#id_act_descripcion').val(descripcion);
		$('#id_act_caracteristicas').val(caracteristicas);
		$('#id_act_marca').val(marca);
		$('#id_act_serie').val(serie);
		$('#id_act_proveedor').val(proveedor);
		$('#id_act_precio').val(precio);
		$('#id_act_stock').val(stock);
		$('#id_act_categoria').val(categoria);
		$('#id_div_modal_actualiza').modal("show");
	}
	
	function limpiarFormulario(){	
		$('#id_reg_idproducto').val('');
		$('#id_reg_nombre').val('');
		$('#id_reg_descripcion').val('');
		$('#id_reg_caracteristicas').val('');
		$('#id_reg_marca').val(' ');
		$('#id_reg_serie').val('');
		$('#id_reg_proveedor').val(' ');
		$('#id_reg_precio').val('');
		$('#id_reg_stock').val('');
		$('#id_reg_categoria').val(' ');
		
	}
	
	$('.levantarRegistro').click(function(){
		$('#modal_registra').modal("show");
	})
	

	
	$("#id_btn_actualiza").click(function(){
		var validator = $('#id_form_actualiza').data('bootstrapValidator');
	    validator.validate();
		
	    if (validator.isValid()) {
	        $.ajax({
	          type: "POST",
	          url: "actualizaCrudProducto", 
	          data: $('#id_form_actualiza').serialize(),
	          success: function(data){
	        	  agregarGrilla(data.lista);
	        	  $('#id_div_modal_actualiza').modal("hide");
	        	  mostrarMensaje(data.mensaje);
	          },
	          error: function(){
	        	  mostrarMensaje(MSG_ERROR);
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
                         message: 'El nombre del producto es obligatorio'
                    },
                    stringLength: {
                        min: 3,
                        max: 40,
                        message: 'El nombre del producto es de 3 a 40 caracteres'
                    },
                }
            },
            "descripcion":{
                selector: "#id_reg_descripcion",
                validators:{
                    notEmpty: {
                         message: 'La descripcion es obligatorio'
                    },
                    stringLength: {
                        min: 3,
                        max: 40,
                        message: 'La descripcion es de 3 a 40 caracteres'
                    },
                }
            },
            "detalle":{
                selector: "#id_reg_detalles",
                validators:{
                    notEmpty: {
                         message: 'El detalle del producto es obligatorio'
                    },
                    stringLength: {
                        min: 3,
                        max: 400,
                        message: 'El detalle es de 3 a 40 caracteres'
                    },
                }
            },
            "marca":{
                selector: "#id_reg_marca",
                validators:{
                    notEmpty: {
                         message: 'Seleccione la marca'
                    },
                }
            },
            "serie":{
                selector: "#id_reg_serie",
                validators:{
                    notEmpty: {
                         message: 'La serie es obligatorio'
                    },
                    stringLength: {
                        min: 3,
                        max: 40,
                        message: 'La serie es de 3 a 40 caracteres'
                    },
                }
            },
            "proveedor":{
                selector: "#id_reg_proveedor",
                validators:{
                    notEmpty: {
                         message: 'Seleccione el proveedor'
                    },
                }
            },
            "precio":{
                selector: "#id_reg_precios",
                validators:{
                    notEmpty: {
                         message: 'El precio es obligatorio'
                    }
                }
            },
            "stock":{
                selector: "#id_reg_stock",
                validators:{
                    notEmpty: {
                         message: 'El stock es obligatorio'
                    }
                }
            },
            "categoria":{
                selector: "#id_reg_categoria",
                validators:{
                    notEmpty: {
                         message: 'Seleccione la categoria'
                    },
                }
            },
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
                         message: 'El nombre del producto es obligatorio'
                    },
                    stringLength: {
                        min: 3,
                        max: 40,
                        message: 'El nombre del producto es de 3 a 40 caracteres'
                    },
                }
            },
            "descripcion":{
                selector: "#id_act_descripcion",
                validators:{
                    notEmpty: {
                         message: 'La descripcion es obligatorio'
                    },
                    stringLength: {
                        min: 3,
                        max: 40,
                        message: 'La descripcion es de 3 a 40 caracteres'
                    },
                }
            },
            "detalle":{
                selector: "#id_act_detalles",
                validators:{
                    notEmpty: {
                         message: 'El detalle del producto es obligatorio'
                    },
                    stringLength: {
                        min: 3,
                        max: 40,
                        message: 'El detalle es de 3 a 40 caracteres'
                    },
                }
            },
            "marca":{
                selector: "#id_act_marca",
                validators:{
                    notEmpty: {
                         message: 'Seleccione la marca'
                    },
                }
            },
            "serie":{
                selector: "#id_act_serie",
                validators:{
                    notEmpty: {
                         message: 'La serie es obligatorio'
                    },
                    stringLength: {
                        min: 3,
                        max: 40,
                        message: 'La serie es de 3 a 40 caracteres'
                    },
                }
            },
            "proveedor":{
                selector: "#id_act_proveedor",
                validators:{
                    notEmpty: {
                         message: 'Seleccione el proveedor'
                    },
                }
            },
            "precio":{
                selector: "#id_act_precios",
                validators:{
                    notEmpty: {
                         message: 'El precio es obligatorio'
                    }
                }
            },
            "stock":{
                selector: "#id_act_stock",
                validators:{
                    notEmpty: {
                         message: 'El stock es obligatorio'
                    }
                }
            },
            "categoria":{
                selector: "#id_act_categoria",
                validators:{
                    notEmpty: {
                         message: 'Seleccione la categoria'
                    },
                }
            }
       
        }   
    });

</script>

 