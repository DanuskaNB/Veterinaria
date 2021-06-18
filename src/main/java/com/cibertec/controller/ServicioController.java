package com.cibertec.controller;

import java.util.List;

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
		return service.listaServicioPorHorarioLike(filtro.trim() + "%");
	}

	/*
	 * @RequestMapping(value = "/verImagen/{id}", produces =
	 * MediaType.IMAGE_JPEG_VALUE) public ResponseEntity<byte[]>
	 * getImage(@PathVariable("id") int imageId) throws IOException {
	 * 
	 * Optional<Servicio> optServicio = service.obtienePorId(imageId);
	 * 
	 * byte[] imageContent = optServicio.get().getFoto1();
	 * 
	 * HttpHeaders headers = new HttpHeaders();
	 * headers.setContentType(MediaType.IMAGE_JPEG);
	 * 
	 * return new ResponseEntity<byte[]>(imageContent, headers, HttpStatus.OK); }
	 * 
	 * 
	 */

}
