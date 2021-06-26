package com.cibertec.controller;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.CollectionUtils;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cibertec.entidad.Producto;
import com.cibertec.servicio.ProductoService;
import com.cibertec.util.Constantes;

@Controller
public class ProductoController {

	@Autowired
	private ProductoService service;
	
	@RequestMapping("/verCrudProducto")
	public String verCrudProducto() {
		return "admin/crudProducto";
	}
	
	
	
	@RequestMapping("/consultaCrudProducto")
	@ResponseBody
	public List<Producto> lista(String filtro) {
		return service.listaProductoPorNombreLike(filtro.trim() + "%");
	}
	
	@ResponseBody
	@PostMapping(value= "/registraCrudProducto", consumes = "multipart/form-data")
	public Map<String, Object> registra(
			@RequestParam("nombre")String nombre,
			@RequestParam("descripcion")String descripcion,
			
			@RequestParam("marca")int marca,
		
			@RequestParam("precio")double precio,
			@RequestParam("stock")int stock,
			@RequestParam("categoria")int categoria,
			@RequestParam("foto1")MultipartFile foto1) {
		
		Map<String, Object> salida = new HashMap<>();
		try {
			Producto obj = new Producto();
			obj.setNombre(nombre);
			obj.setDescripcion(descripcion);
			obj.setMarca(marca);
			obj.setPrecio(precio);
			obj.setStock(stock);
			obj.setCategoria(categoria);
			obj.setFoto1(foto1.getBytes());
//			obj.setFoto2(foto2.getBytes());
			
//			List<Producto> lstProducto = service.listarIdProducto(obj.getIdproducto());
			
				Producto objS = service.insertaActualizaProducto(obj);
				if(objS == null) {
					salida.put("mensaje", "Error al registrar");
				}else {
					salida.put("mensaje", "Se registro exitosamente");
				}
			
		} catch (Exception e) {
			e.printStackTrace();
			salida.put("mensaje","Error en el controlador");
		}finally {
			List<Producto> lista = service.listaProducto();
			salida.put("lista",lista);
		}
		return salida;	
	}
	
	@RequestMapping("/actualizaCrudProducto")
	@ResponseBody
	public Map<String, Object> actualiza(Producto obj) {
		Map<String, Object> salida = new HashMap<String, Object>();
		try {
			Optional<Producto> option = service.obtienePorId(obj.getIdproducto());
			System.out.println("**************+-----------");
			System.out.println( option.get().toString());
			if (option.isPresent()) {
				Producto objSalida = service.insertaActualizaProducto(obj);
				if (objSalida == null) {
					salida.put("mensaje", Constantes.MENSAJE_ACT_ERROR);
				} else {
					salida.put("mensaje", Constantes.MENSAJE_ACT_EXITOSO);
				}
			} else {
				salida.put("mensaje", Constantes.MENSAJE_ACT_NO_EXISTE_ID);
			}
		} catch (Exception e) {
			salida.put("mensaje", Constantes.MENSAJE_ACT_ERROR);
		} finally {
			List<Producto> lista = service.listaProducto();
			salida.put("lista", lista);
		}
		return salida;
	}

	@RequestMapping("/eliminaCrudProducto")
	@ResponseBody
	public Map<String, Object> elimina(int id) {
		Map<String, Object> salida = new HashMap<String, Object>();
		Optional<Producto> option = service.obtienePorId(id);
		try {
			if (option.isPresent()) {
				service.eliminaProducto(id);
				salida.put("mensaje", Constantes.MENSAJE_ELI_EXITOSO);
			} else {
				salida.put("mensaje", Constantes.MENSAJE_ELI_NO_EXISTE_ID);
			}
		} catch (Exception e) {
			e.printStackTrace();
			salida.put("mensaje", Constantes.MENSAJE_ELI_ERROR);
		} finally {
			List<Producto> lista = service.listaProducto();
			salida.put("lista", lista);
		}
		return salida;
	}
	
}
