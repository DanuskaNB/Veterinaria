package com.cibertec.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cibertec.entidad.Rol;
import com.cibertec.repositorio.RolRepository;



@Service
public class RolServiceImpl implements RolService{

	@Autowired
	private RolRepository repository;

	@Override
	public List<Rol> listaRol() {
		return repository.findAll();
	}

	
}
