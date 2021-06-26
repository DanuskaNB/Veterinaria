package com.cibertec.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cibertec.entidad.Sexo;
import com.cibertec.repositorio.SexoRepository;

@Service
public class SexoServiceImpl implements SexoService{

	@Autowired
	private SexoRepository repository;

	@Override
	public List<Sexo> listaSexo() {
		return repository.findAll();
	}

	
}
