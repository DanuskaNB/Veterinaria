package com.cibertec.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cibertec.entidad.Cliente;
import com.cibertec.servicio.ClienteService;
import com.cibertec.util.Constantes;

@Controller
public class ClienteController {

	@Autowired
	private ClienteService service;

	@RequestMapping("/registroCliente")
	public String verRegistroCliente() {
		return "registroCliente";
	}

	@RequestMapping("/listadoCliente")
	@ResponseBody
	public List<Cliente> listadoCliente() {
		return service.listaCliente();
	}

	@RequestMapping("/registraCliente")
	public String registra(Cliente obj, Model m, HttpSession session) {
		Cliente aux = service.insertaCliente(obj);
		List<Cliente> lista = service.listaCliente();
		m.addAttribute("prueba", lista);
		if (aux == null) {
			session.setAttribute("MENSAJE", "Registro erróneo");
		} else {
			session.setAttribute("MENSAJE", "Registro exitos");
		}

		return "registroCliente";
	}

	@RequestMapping("/intranetRegistraUsuario")
	public String metRegistra(Cliente obj, HttpSession session) {
		Cliente aux = service.insertaCliente(obj);
		if (aux == null) {
			session.setAttribute("MENSAJE", "Registro erróneo");
		} else {
			session.setAttribute("MENSAJE", "Registro exitos");
		}
		return "redirect:login";
	}

	@RequestMapping("/iniciarSesion")
	public String login(Cliente cli, HttpSession session, HttpServletRequest request) {
		Cliente objCli = service.Login(cli);

		if (objCli == null) {
			request.setAttribute("mensaje", "El usuario no esta registrado");
			return "login";
		} else {
			session.setAttribute("objUsuario", objCli);
			return "redirect:store";
		}

	}
	
//	@RequestMapping("/logout")
//	public String logout(HttpSession session, HttpServletRequest request, HttpServletResponse response) {
//		session.invalidate();
//
//		response.setHeader("Cache-control", "no-cache");
//		response.setHeader("Expires", "0");
//		response.setHeader("Pragma", "no-cache");
//
//		request.setAttribute("mensaje", "El usuario salió de sesión");
//		return "login";
//
//	}
	
	

///////////////////////ACTUALIZA CLIENTE

	@RequestMapping("/actualizaCrudCliente")
	@ResponseBody
	public Map<String, Object> actualizaa(Cliente obj) {
		Map<String, Object> salida = new HashMap<String, Object>();
		try {
			Optional<Cliente> option = service.obtienePorId(obj.getIdCliente());
			if (option.isPresent()) {
				Cliente objSalida = service.insertaActualizaCliente(obj);
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
			List<Cliente> lista = service.listaCliente();
			salida.put("lista", lista);
		}
		return salida;
	}
	
	@RequestMapping("/eliminaCliente")
	@ResponseBody
	public Map<String, Object> elimina(int id) {
		Map<String, Object> salida = new HashMap<String, Object>();
		Optional<Cliente> option = service.obtienePorId(id);
		try {
			if (option.isPresent()) {
				service.eliminaCliente(id);
				salida.put("mensaje", Constantes.MENSAJE_ELI_EXITOSO);
			} else {
				salida.put("mensaje", Constantes.MENSAJE_ELI_NO_EXISTE_ID);
			}
		} catch (Exception e) {
			e.printStackTrace();
			salida.put("mensaje", Constantes.MENSAJE_ELI_ERROR);
		} finally {
			List<Cliente> lista = service.listaCliente();
			salida.put("lista", lista);
		}
		return salida;
	}

}
