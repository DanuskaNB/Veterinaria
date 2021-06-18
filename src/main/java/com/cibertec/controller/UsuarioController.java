package com.cibertec.controller;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.cibertec.entidad.Usuario;
import com.cibertec.servicio.UsuarioServicio;

@Controller
public class UsuarioController {

	@Autowired
	private UsuarioServicio service;
	
	
	
	@RequestMapping("/registraUsuario")
	@ResponseBody
	public Map<String, Object> registra( Usuario obj){
		Map<String, Object> salida = new HashMap<>();
		obj.setFechaRegistro(new Date());
		 Usuario objSalida = service.insertaUsuario(obj);
		if (objSalida == null) {
			salida.put("MENSAJE", "Registro erróneo");
		}else {
			salida.put("MENSAJE", "Registro exitoso");
		}
		return salida;
	}
	
	
	
}
