package com.cibertec.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cibertec.entidad.Cita;
import com.cibertec.servicio.CitaService;
import com.cibertec.util.Constantes;

@Controller
public class CitaController {

	@Autowired
	private CitaService service;
	
	@RequestMapping("/cita")
	public String verRegistroCita() {
		return "admin/cita";
	}
	
	@RequestMapping("/verCita")
	public String verCita() {
		return "verCitas";
	}
	
	@RequestMapping("/registraCita")
	@ResponseBody
	public Map<String, Object> registra(Cita obj) {
		Map<String, Object> salida = new HashMap<String, Object>();
		Cita objSalida = null;
		try {
			objSalida = service.insertaCita(obj);
			if (objSalida == null) {
				salida.put("mensaje", Constantes.MENSAJE_REG_ERROR);
			} else {
				salida.put("mensaje", Constantes.MENSAJE_REG_EXITOSO);
			}
		} catch (Exception e) {
			salida.put("mensaje", Constantes.MENSAJE_REG_ERROR);
		}
		return salida;
	}
	
	@RequestMapping("/listarCitaId")
	@ResponseBody
	public List<Cita> listaCitaId(int filtro1) {
		return service.listaCitaId(filtro1);
	}
	
	@RequestMapping("/listarCita")
	@ResponseBody
	public List<Cita> listaCitas() {
		return service.listarCitas();
	}
	
	@RequestMapping("/listarCitaCliente")
	@ResponseBody
	public List<Cita> listaCitaCliente(int filtro2) {
		return service.listaCitaCliente(filtro2);
	}
	
	
	
	
}
