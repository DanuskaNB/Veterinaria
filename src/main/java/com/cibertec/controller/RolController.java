package com.cibertec.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cibertec.entidad.Rol;
import com.cibertec.servicio.RolService;



@Controller
public class RolController {
	
	@Autowired
	private RolService service;

	
	@RequestMapping("/listarRol")
	@ResponseBody
	public List<Rol> lista(String filtro) {
		return service.listaRol();
	}
	
}
