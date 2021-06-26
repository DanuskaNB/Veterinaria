package com.cibertec.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cibertec.entidad.Proveedor;
import com.cibertec.servicio.ProveedorService;

@Controller
public class ProveedorController {
	
	
	public Proveedor Proveedor;
	@Autowired
	private ProveedorService service;

	
	@RequestMapping("/listarProveedor")
	@ResponseBody
	public List<Proveedor> lista(String filtro) {
		return service.listaProveedor();
	}
}
