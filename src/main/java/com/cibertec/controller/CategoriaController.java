package com.cibertec.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cibertec.entidad.Categoria;
import com.cibertec.servicio.CategoriaService;

@Controller
public class CategoriaController {
	
	
	public Categoria categoria;
	@Autowired
	private CategoriaService service;

	
	@RequestMapping("/listarCategoria")
	@ResponseBody
	public List<Categoria> lista(String filtro) {
		return service.listaCategoria();
	}
}
