package com.cibertec.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cibertec.entidad.Especie;
import com.cibertec.servicio.EspecieService;

@Controller
public class EspecieController {
	
	@Autowired
	private EspecieService service;

	@RequestMapping("/listaEspecies")
	@ResponseBody
	public List<String> verEspecies() {
		return service.listaEspecies();
	}
	
	@RequestMapping("/listaRazas")
	@ResponseBody
	public List<Especie> verRazas(String especie) {
		return service.listaRazas(especie);
	}
	
}
