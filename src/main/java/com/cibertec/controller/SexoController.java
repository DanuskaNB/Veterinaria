package com.cibertec.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cibertec.entidad.Sexo;
import com.cibertec.servicio.SexoService;

@Controller
public class SexoController {
	
	@Autowired
	private SexoService service;

	
	@RequestMapping("/listarSexo")
	@ResponseBody
	public List<Sexo> lista(String filtro) {
		return service.listaSexo();
	}
	
}
