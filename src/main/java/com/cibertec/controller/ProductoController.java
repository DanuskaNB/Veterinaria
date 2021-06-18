package com.cibertec.controller;


import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
	public String consultaCrud(String filtro, HttpSession session) {
		List<Producto> lista = productoService.listarPorNombre(filtro+"%");
		session.setAttribute("productos", lista);
		return "intranetRegistroProducto";
	}
	
	@RequestMapping("/registraProducto")
	public String registra(Producto obj, HttpSession session) {	
		try {
			productoService.insertaProducto(obj);	
			session.setAttribute("MENSAJE", "Se registro correctamente");	
		} catch (Exception e) {
			session.setAttribute("MENSAJE", "Existe ERROR");
			e.printStackTrace();
		}
		return "redirect:salidaProducto";
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
