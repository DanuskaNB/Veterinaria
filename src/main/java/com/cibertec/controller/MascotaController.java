package com.cibertec.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cibertec.entidad.Mascota;
import com.cibertec.servicio.MascotaService;
import com.cibertec.util.Constantes;

@Controller
public class MascotaController {

	@Autowired
	private MascotaService service;
	
	@RequestMapping("/registroMascota")
	public String verCrudMascota() {
		return "crudMascota";
	}
	
	
	
	@RequestMapping("/consultaCrudMascota")
	@ResponseBody
	public List<Mascota> lista(String filtro, int filtro1) {
		return service.listaMascotaPorNombreLike(filtro.trim() + "%", filtro1);
	}
	
	@RequestMapping("/registraCrudMascota")
	@ResponseBody
	public Map<String, Object> registra(Mascota obj) {
		Map<String, Object> salida = new HashMap<String, Object>();
		Mascota objSalida = null;
		try {
			objSalida = service.insertaActualizaMascota(obj);
			if (objSalida == null) {
				salida.put("mensaje", Constantes.MENSAJE_REG_ERROR);
			} else {
				salida.put("mensaje", Constantes.MENSAJE_REG_EXITOSO);
			}
		} catch (Exception e) {
			salida.put("mensaje", Constantes.MENSAJE_REG_ERROR);
		} finally {
			List<Mascota> lista = service.listaMascota();
			salida.put("lista", lista);
		}
		return salida;
	}
	
	@RequestMapping("/actualizaCrudMascota")
	@ResponseBody
	public Map<String, Object> actualiza(Mascota obj) {
		Map<String, Object> salida = new HashMap<String, Object>();
		try {
			Optional<Mascota> option = service.obtienePorId(obj.getIdmascota());
			if (option.isPresent()) {
				Mascota objSalida = service.insertaActualizaMascota(obj);
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
			List<Mascota> lista = service.listaMascota();
			salida.put("lista", lista);
		}
		return salida;
	}

	@RequestMapping("/eliminaCrudMascota")
	@ResponseBody
	public Map<String, Object> elimina(int id) {
		Map<String, Object> salida = new HashMap<String, Object>();
		Optional<Mascota> option = service.obtienePorId(id);
		try {
			if (option.isPresent()) {
				service.eliminaMascota(id);
				salida.put("mensaje", Constantes.MENSAJE_ELI_EXITOSO);
			} else {
				salida.put("mensaje", Constantes.MENSAJE_ELI_NO_EXISTE_ID);
			}
		} catch (Exception e) {
			e.printStackTrace();
			salida.put("mensaje", Constantes.MENSAJE_ELI_ERROR);
		} finally {
			List<Mascota> lista = service.listaMascota();
			salida.put("lista", lista);
		}
		return salida;
	}
	
	@RequestMapping("/listarMascotas")
	@ResponseBody
	public List<Mascota> listaMascotas() {
		return service.listaMascota();
	}
	

	
}
