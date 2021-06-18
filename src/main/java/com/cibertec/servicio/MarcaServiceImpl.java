package com.cibertec.servicio;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cibertec.entidad.Marca;
import com.cibertec.repositorio.MarcaRepositorio;

@Service
public class MarcaServiceImpl implements MarcaService {

	@Autowired
	private MarcaRepositorio repository;
	

	@Override
	public List<Marca> listarTodos() {
		return repository.findAll();
	}
}
