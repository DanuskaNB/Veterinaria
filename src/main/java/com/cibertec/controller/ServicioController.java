package com.cibertec.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.cibertec.entidad.Servicio;
import com.cibertec.servicio.ServicioService;

@Controller
public class ServicioController {

	@Autowired
	private ServicioService service;

	@ResponseBody
	@RequestMapping("/consultaCrudServicio")
	public List<Servicio> lista(String filtro) {
		return service.listaPorTurnoLike(filtro.trim() + "%");
	}

	@ResponseBody
	@PostMapping(value= "/registraCrudServicio", consumes = "multipart/form-data")
	public Map<String, Object> registra(
			@RequestParam("nombre")String nombre,
			@RequestParam("descripcion")String descripcion,
			@RequestParam("precio")double precio,
			@RequestParam("horario")String horario,
			@RequestParam("fechaRegistro")String fechaRegistro,
			/*
			 * @RequestParam("proveedor")int proveedor,
			 * 
			 * @RequestParam("precio")double precio,
			 * 
			 * @RequestParam("stock")int stock,
			 * 
			 * @RequestParam("categoria")int categoria,
			 * 
			 * @RequestParam("foto1")MultipartFile foto1,
			 */
			@RequestParam("foto1") MultipartFile foto1) {
		
		Map<String, Object> salida = new HashMap<>();
		try {
			Servicio obj = new Servicio();
			obj.setNombre(nombre);
			obj.setDescripcion(descripcion);
			obj.setPrecio(precio);
			obj.setHorario(horario);
			
			Date FechaRegistro = new Date();
			DateFormat df = new SimpleDateFormat("yyyy-mm-dd");
			String strDate = df.format(fechaRegistro);
			/*
			 * obj.setProveedor(proveedor); obj.setPrecio(precio); obj.setStock(stock);
			 * obj.setCategoria(categoria); obj.setFoto1(foto1.getBytes());
			 */
			obj.setFoto1(foto1.getBytes());
			
//			List<Producto> lstProducto = service.listarIdProducto(obj.getIdproducto());
			
			Servicio objS = service.insertaActualizaServicio(obj);
				if(objS == null) {
					salida.put("mensaje", "Error al registrar");
				}else {
					salida.put("mensaje", "Se registro exitosamente");
				}
			
		} catch (Exception e) {
			e.printStackTrace();
			salida.put("mensaje","Error en el controlador");
		}finally {
			List<Servicio> lista = service.listaServicios();
			salida.put("lista",lista);
		}
		return salida;	
	}
	
	@ResponseBody
	@RequestMapping("/eliminaCrudServicio")
	public String elimina(int id, HttpSession session) {

		try {
			Optional<Servicio> obj = service.buscaPorId(id);
			if (obj.isPresent()) {
				service.eliminaServicio(id);
				session.setAttribute("MENSAJE", "Se eliminó correctamente");
			} else {
				session.setAttribute("MENSAJE", "No existe el ID");
			}
		} catch (Exception e) {
			session.setAttribute("MENSAJE", "Existe ERROR");
			e.printStackTrace();
		}
		return "redirect:salidaServicio";
	}

	@RequestMapping("/salidaServicio")
	public String listarTodaslosServicios(HttpSession session) {
		List<Servicio> data = service.listaServicios();
		session.setAttribute("servicio", data);
		return "intranetRegistroServicio";
	}

}
