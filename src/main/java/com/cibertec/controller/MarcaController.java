package com.cibertec.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cibertec.entidad.Marca;
import com.cibertec.servicio.MarcaService;

@Controller
public class MarcaController {

	@Autowired
	private MarcaService service;

	@RequestMapping("/listarMarca")
	@ResponseBody
	public List<Marca> lista(String filtro) {
		return service.listadoMarca();
	}
}
