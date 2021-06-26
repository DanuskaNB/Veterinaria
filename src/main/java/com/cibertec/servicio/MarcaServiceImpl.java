package com.cibertec.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cibertec.entidad.Marca;
import com.cibertec.repositorio.MarcaRepository;



@Service
public class MarcaServiceImpl implements MarcaService{

	@Autowired
	private MarcaRepository repository;

	@Override
	public List<Marca> listadoMarca() {
		return repository.findAll();
	}

	
}
