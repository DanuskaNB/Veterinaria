/**
 * 
 <div class="product-grid3">
                        <div class="product-image3">
                            <a href="#">
                                <img class="pic-1" src="img/disfraz_1.webp">
                                <img class="pic-2" src="img/disfraz_1.2.webp">
                            </a>
                            <ul class="social">
                                <li><a href="#"><i class="fa fa-shopping-bag"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                            <span class="product-new-label">Nuevo</span>
                        </div>
                        <div class="product-content">
                            <h3 class="title"><a href="#">Chaleco de perro verano sudadera</a></h3>
                            <div class="price">
                                $20.00
                                <span>$35.00</span>
                            </div>
                            <ul class="rating">
                                <li class="fa fa-star"></li>
                                <li class="fa fa-star"></li>
                                <li class="fa fa-star"></li>
                                <li class="fa fa-star disable"></li>
                                <li class="fa fa-star disable"></li>
                            </ul>
                        </div>
                    </div>
 */
 
 const productoConatiner = document.querySelector('.verProductos');
 
 const verProductos = async() =>{
	const res = await fetch('consultaCrudProducto?filtro=');
	const data = await res.json();
	
	let template = '';
	data.map(item =>{
		template+=`
		
										<div class="product">
											<div class="product-img">
												<img src="data:image/png;base64,${item.foto1}">
												<div class="product-label">
													<span class="sale">-30%</span>
													<span class="new">NEW</span>
												</div>
											</div>
											<div class="product-body">
												<p class="product-category">Category</p>
												<h3 class="product-name"><a href="#">${item.nombre}</a></h3>
												<h4 class="product-price">S/.${item.precio}<del class="product-old-price">S/.${item.precio}</del></h4>
												<div class="product-rating">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
												</div>
												<div class="product-btns">
													<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
													<button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>
													<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
												</div>
											</div>
											<div class="add-to-cart">
												<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>
											</div>
										</div>
						
										
									
		

		`
	})
	productoConatiner.innerHTML = template;
	
	
	//console.log(data)
}

	  document.addEventListener('DOMContentLoaded',()=>{
     verProductos();
    
  })
	
  




 
 
 
 
 
 
 
 
 
 
 