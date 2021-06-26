package com.cibertec.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
import com.cibertec.entidad.Servicio;
import com.cibertec.servicio.ServicioService;
import com.cibertec.util.Constantes;

@Controller
public class ServicioController {

	@Autowired
	private ServicioService service;
	
	@RequestMapping("/verCrudServicio")
	public String verCrudServicio() {
		return "admin/crudServicio";
	}
	
	
	
	@RequestMapping("/consultaCrudServicio")
	@ResponseBody
	public List<Servicio> lista(String filtro) {
		return service.listaServicioPorNombreLike(filtro.trim() + "%");
	}
	
	@RequestMapping("/registraCrudServicio")
	@ResponseBody
	public Map<String, Object> registra(Servicio obj) {
		Map<String, Object> salida = new HashMap<String, Object>();
		Servicio objSalida = null;
		try {
			objSalida = service.insertaActualizaServicio(obj);
			if (objSalida == null) {
				salida.put("mensaje", Constantes.MENSAJE_REG_ERROR);
			} else {
				salida.put("mensaje", Constantes.MENSAJE_REG_EXITOSO);
			}
		} catch (Exception e) {
			salida.put("mensaje", Constantes.MENSAJE_REG_ERROR);
		} finally {
			List<Servicio> lista = service.listaServicio();
			salida.put("lista", lista);
		}
		return salida;
	}
	
	@RequestMapping("/actualizaCrudServicio")
	@ResponseBody
	public Map<String, Object> actualiza( Servicio obj ) {
		Map<String, Object> salida = new HashMap<String, Object>();
		try {
			
			Optional<Servicio> option = service.obtienePorId(obj.getIdservicio());
			if ( option.isPresent() ) {
				Servicio objSalida = service.insertaActualizaServicio(obj);
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
			List<Servicio> lista = service.listaServicio();
			salida.put("lista", lista);
		}
		return salida;
	}
	
	@RequestMapping("/eliminaCrudServicio")
	@ResponseBody
	public Map<String, Object> elimina(int id) {
		Map<String, Object> salida = new HashMap<String, Object>();
		Optional<Servicio> option = service.obtienePorId(id);
		try {
			if (option.isPresent()) {
				service.eliminaServicio(id);
				salida.put("mensaje", Constantes.MENSAJE_ELI_EXITOSO);
			} else {
				salida.put("mensaje", Constantes.MENSAJE_ELI_NO_EXISTE_ID);
			}
		} catch (Exception e) {
			e.printStackTrace();
			salida.put("mensaje", Constantes.MENSAJE_ELI_ERROR);
		} finally {
			List<Servicio> lista = service.listaServicio();
			salida.put("lista", lista);
		}
		return salida;
	}
	
}
