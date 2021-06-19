package com.cibertec.controller;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cibertec.entidad.Servicio;
import com.cibertec.servicio.ServicioService;

@Controller
public class ServicioController {

	@Autowired
	private ServicioService service;

	@ResponseBody
	@RequestMapping("/consultaCrudServicio")
	public List<Servicio> lista(String filtro) {
		return service.listarPorNombre(filtro.trim() + "%");
	}

	@RequestMapping("/registraServicio")
	public String registra(Servicio obj, HttpSession session) {
		try {
			service.insertaServicio(obj);
			session.setAttribute("MENSAJE", "Se registro correctamente");
		} catch (Exception e) {
			session.setAttribute("MENSAJE", "Existe ERROR");
			e.printStackTrace();
		}
		return "redirect:salidaServicio";
	}

	@RequestMapping("/actualizaServicio")
	public String actualiza(Servicio obj, HttpSession session) {
		try {
			service.insertaServicio(obj);
			session.setAttribute("MENSAJE", "Se registro correctamente");
		} catch (Exception e) {
			session.setAttribute("MENSAJE", "Existe ERROR");
			e.printStackTrace();
		}
		return "redirect:salidaServicio";
	}

	@RequestMapping("/eliminaCrudServicio")
	public String elimina(int id, HttpSession session) {

		try {
			Optional<Servicio> obj = service.buscaPorId(id);
			if (obj.isPresent()) {
				service.eliminaServicio(id);
				session.setAttribute("MENSAJE", "Se eliminó correctamente");
			} else {
				session.setAttribute("MENSAJE", "No existe el ID");
			}
		} catch (Exception e) {
			session.setAttribute("MENSAJE", "Existe ERROR");
			e.printStackTrace();
		}
		return "redirect:salidaServicio";
	}

	@RequestMapping("/salidaServicio")
	public String listarTodaslosServicios(HttpSession session) {
		List<Servicio> data = service.listarTodos();
		session.setAttribute("servicio", data);
		return "intranetRegistroServicio";
	}

}
