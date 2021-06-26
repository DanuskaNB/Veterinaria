package com.cibertec.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cibertec.entidad.Boleta;
import com.cibertec.entidad.Cliente;
import com.cibertec.entidad.Mascota;
import com.cibertec.entidad.Mensaje;
import com.cibertec.entidad.Producto;
import com.cibertec.entidad.ProductoHasBoleta;
import com.cibertec.entidad.ProductoHasBoletaPK;
import com.cibertec.entidad.ProductoSinFoto;
import com.cibertec.entidad.Seleccion;
import com.cibertec.entidad.Servicio;
import com.cibertec.entidad.ServicioHasBoleta;
import com.cibertec.entidad.ServicioHasBoletaPK;
import com.cibertec.entidad.Usuario;
import com.cibertec.servicio.BoletaService;
import com.cibertec.servicio.ClienteService;
import com.cibertec.servicio.ProductoService;
import com.cibertec.servicio.ProductoSinFotoService;
import com.cibertec.servicio.ServicioService;


@Controller
public class BoletaController {

	@Autowired
	private ClienteService clienteService;
	
	@Autowired
	private ProductoSinFotoService productoService;
	

	@Autowired
	private ServicioService servicioService;
	
	@Autowired
	private BoletaService boletaService;
	
	@RequestMapping("/boleta")
	@ResponseBody
	public List<Boleta> listaBoleta2(int filtro2) {
		return boletaService.listaBoletaId2(filtro2);
	}
	

	private List<Seleccion> seleccionados = new ArrayList<Seleccion>();
	
	
	@RequestMapping("/carrito")
	public String verBoleta() {
		return "boleta";
	}

	@RequestMapping("/boletaCliente")
	@ResponseBody
	public List<Boleta> listaBoleta(int filtro1) {
		return boletaService.listaBoletaId(filtro1);
	}
	
	@RequestMapping("/listaBoletas")
	@ResponseBody
	public List<Boleta> listaBoletas() {
		return boletaService.listaBoletas();
	}
	
	
	

	@RequestMapping("/eliminaSeleccion")
	@ResponseBody
	public List<Seleccion> eliminar(int idProducto) {
		for (Seleccion x : seleccionados) {
			if (x.getIdProducto() == idProducto) {
				seleccionados.remove(x);
				break;
			}
		}
		return seleccionados;
	}
	
	

	@RequestMapping("/agregarSeleccion")
	@ResponseBody
	public List<Seleccion> agregar(Seleccion obj) {
		seleccionados.add(obj);
		return seleccionados;
	}
	
	@RequestMapping("/listaSeleccion")
	@ResponseBody
	public List<Seleccion> lista(){
		return seleccionados;
	}
	

	
	@RequestMapping("/registraBoleta")
	@ResponseBody
	public Mensaje registra(Cliente objCliente) {
		Usuario objUsuario = new Usuario();
		objUsuario.setIdUsuario(1);

		List<ProductoHasBoleta> detalles = new ArrayList<ProductoHasBoleta>();
		List<ServicioHasBoleta> detalles_servicios = new ArrayList<ServicioHasBoleta>();
		System.out.println("***********************************************+ " + seleccionados);
		
		for (Seleccion x : seleccionados) {
			if ( x.getIdProducto() < 90000) {
			
				ProductoHasBoletaPK pk = new ProductoHasBoletaPK();
				pk.setIdProducto(x.getIdProducto());
	
				ProductoHasBoleta phb = new ProductoHasBoleta();
				phb.setCantidad(x.getCantidad());
				phb.setPrecio(x.getPrecio());
				phb.setProductoHasBoletaPK(pk);
	
				detalles.add(phb);
			} else {
				ServicioHasBoletaPK pk = new ServicioHasBoletaPK();
				pk.setIdBoleta( x.getIdProducto() );

				ServicioHasBoleta phb = new ServicioHasBoleta();
				phb.setCantidad(x.getCantidad());
				phb.setPrecio(x.getPrecio());
				phb.setServicioHasBoletaPK(pk);

				detalles_servicios.add(phb);
				
			}
		}

		Boleta objBoleta = new Boleta();
		objBoleta.setCliente(objCliente);
		objBoleta.setUsuario(objUsuario);
		objBoleta.setDetallesBoleta(detalles);

		Boleta objIns = boletaService.insertaBoleta(objBoleta);
		String salida = "-1";

		if (objIns != null) {
			salida = "Se genero la boleta con codigo N° : " + objIns.getIdboleta() + "<br><br>";
			salida += "Cliente: " + objIns.getCliente().getNombre() + "<br><br>";
			salida += "<table class=\"table\"><tr><td>Producto</td><td>Precio</td><td>Cantidad</td><td>Subtotal</td></tr>";
			double monto = 0;
			for (Seleccion x : seleccionados) {
				salida += "<tr><td>"  + x.getNombre() + "</td><td>" + x.getPrecio() + "</td><td>" + x.getCantidad()
						+ "</td><td>" + x.getTotalParcial() + "</td></tr>";
				monto += x.getCantidad() * x.getPrecio();
			}
			salida += "</table><br>";
			salida += "Monto a pagar : " + monto;

			seleccionados.clear();
		}

		Mensaje objMensaje = new Mensaje();
		objMensaje.setTexto(salida);

		return objMensaje;
	}
	
	@RequestMapping("/actualizarBoleta")
	@ResponseBody
	public Map<String, Object> registraBoleta(Boleta obj) {
		Map<String, Object> salida = new HashMap<String, Object>();
		try {
			Optional<Boleta> option = boletaService.obtienePorId(obj.getIdboleta());
			if (option.isPresent()) {
				Boleta objSalida = boletaService.insertaBoletas(obj);
				if (objSalida == null) {
					salida.put("mensaje", "Error al actualizar");
				}else {
					salida.put("mensaje", "Se actualizo con exito");
				}
			}else {
				salida.put("mensaje", "No existe el id");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return salida;
	}
	
	
	
	@RequestMapping("/cargaCliente")
	@ResponseBody
	public List<Cliente> listaCliente(String filtro){
		
		int page = 0;
		int size = 5;
		Pageable paginacion = PageRequest.of(page, size);
		return clienteService.listaCliente(filtro+"%",paginacion);
	}
	
	@RequestMapping("/cargaProducto")
	@ResponseBody
	public List<ProductoSinFoto> listaProducto(String filtro) {
		int page = 0;
		int size = 5;
		Pageable paginacion = PageRequest.of(page, size);
		return productoService.listaproducto(filtro+"%", paginacion);
	}
	@RequestMapping("/cargaServicio")
	@ResponseBody
	public List<Servicio> listaServicio(String filtro) {
		int page = 0;
		int size = 5;
		Pageable paginacion = PageRequest.of(page, size);
		return servicioService.listaServicio(filtro+"%", paginacion);
	}
	
}
