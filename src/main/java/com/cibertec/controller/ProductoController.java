package com.cibertec.controller;


import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.cibertec.entidad.Categoria;
import com.cibertec.entidad.Marca;
import com.cibertec.entidad.Producto;
import com.cibertec.entidad.Proveedor;
import com.cibertec.servicio.CategoriaService;
import com.cibertec.servicio.MarcaService;
import com.cibertec.servicio.ProductoService;
import com.cibertec.servicio.ProveedorService;

@Controller
public class ProductoController {

	@Autowired
	private MarcaService marcaService;		
	
	@Autowired
	private ProductoService productoService;
	
	@Autowired
	private ProveedorService proveedorService;
	
	@Autowired
	private CategoriaService categoriaService;
	
	//No tocar, si funciona
	@RequestMapping("/listaMarca")	
	@ResponseBody
	public List<Marca> listaMarca() {
		return marcaService.listarTodos();
	}
	
	@RequestMapping("/listaProveedor")	
	@ResponseBody
	public List<Proveedor> listaProveedor() {
		return proveedorService.listarTodos();
	}
	
	@RequestMapping("/listaCategoria")	
	@ResponseBody
	public List<Categoria> listaCategoria() {
		return categoriaService.listarTodos();
	}
	
	@RequestMapping("/consultaCrudProducto")
	@ResponseBody
	public List<Producto> lista(String filtro) {
		return productoService.listarPorNombre(filtro.trim() + "%");
	}
	
	/*
	@RequestMapping("/consultaCrudProducto")
	@ResponseBody
	public String consultaCrudProducto(String filtro, HttpSession session) {
		List<Producto> lista = productoService.listarPorNombre(filtro.trim()+"%");
		session.setAttribute("productos", lista);
		return "intranetRegistroProducto";
	}
	*/
	
	@ResponseBody
	@PostMapping(value= "/registraProductoConFoto",consumes="multipart/form-data")
	public Map<String, Object> registraProductoConFoto(@RequestParam(value = "nombre") String nombre,
			@RequestParam(value = "descripcion") String descripcion, @RequestParam(value = "serie") String serie,
			@RequestParam(value = "precio") Double precio, @RequestParam(value = "stock") Integer stock,
			@RequestParam(value = "idMarca", required = false) Integer marca,
			@RequestParam(value = "idProveedor", required = false) Integer proveedor,
			@RequestParam(value = "idCategoria", required = false) Integer categoria,
			@RequestParam(value = "foto") MultipartFile foto) {

		Map<String, Object> salida = new HashMap<>();

		try {
			Producto producto = new Producto();
			
			producto.setNombre(nombre);
			producto.setDescripcion(descripcion);
			producto.setSerie(serie);
			producto.setPrecio(precio);
			producto.setStock(stock);
			producto.setIdMarca(marca);
			producto.setIdProveedor(proveedor);
			producto.setIdCategoria(categoria);
			producto.setFoto1(foto.getBytes());
			List<Producto> lstProducto=productoService.listarPorNombre(producto.getNombre());
			if(CollectionUtils.isEmpty(lstProducto)) {
				Producto objSalida=productoService.insertaActualizaProducto(producto);
				if(objSalida==null) {
					salida.put("mensaje","Error al insertar foto");
				}
				else {
					salida.put("mensaje", "Registro Exitoso");
					
				}
			}else {
				salida.put("mensaje", "Producto ya existe"+ producto.getNombre());
			}
				
			
		
		

		} catch(Exception e) {
			e.printStackTrace();
			salida.put("MENSAJE", "El registro no pudo ser completado");
		}

		return salida;

	}
	
	@RequestMapping("/actualizaProducto")
	public String actualiza(Producto obj, HttpSession session) {	
		try {
			productoService.insertaProducto(obj);
			session.setAttribute("MENSAJE", "Se registro correctamente");	
		} catch (Exception e) {
			session.setAttribute("MENSAJE", "Existe ERROR");
			e.printStackTrace();
		}
		return "redirect:salidaProducto";
	}
	
	
	
	@RequestMapping("/eliminaCrudProducto")
	public String elimina(int id, HttpSession session) {
		
		try {
			Optional<Producto> obj = productoService.buscaPorId(id);
			if(obj.isPresent()) {
				productoService.eliminaProducto(id);
				session.setAttribute("MENSAJE", "Se eliminó correctamente");
			}else {
				session.setAttribute("MENSAJE", "No existe el ID");	
			}	
		} catch (Exception e) {
			session.setAttribute("MENSAJE", "Existe ERROR");
			e.printStackTrace();
		}
		return "redirect:salidaProducto";
	}
	
	@RequestMapping("/salidaProducto")
	public String listarTodaslasMarcas(HttpSession session) {
		List<Producto> data = productoService.listarTodos();
		session.setAttribute("productos", data);
		return "intranetRegistroProducto";
	}
	
	
	
}
