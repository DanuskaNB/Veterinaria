package com.cibertec.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PetController {
	
	@RequestMapping("/")
	public String Login() {
		return "tienda";
	}
	@RequestMapping("/store")
	public String tienda() {
		return "tienda";
	}
	
	@RequestMapping("/panelAdmin")
	public String Admin() {
		return "admin/index";
	}
	
	@RequestMapping("/cuenta")
	public String MiCuenta() {
		return "miCuenta";
	}
	
	@RequestMapping("/cliente")
	public String CrudCliente() {
		return "admin/cliente";
	}
	
	@RequestMapping("/login")
	public String LoginUsuario() {
		return "login";
	}
	
	@RequestMapping("/pedidos")
	public String Pedidios() {
		return "admin/pedidos";
	}

}
