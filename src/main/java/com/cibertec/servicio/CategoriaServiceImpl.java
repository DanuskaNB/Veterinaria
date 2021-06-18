package com.cibertec.servicio;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cibertec.entidad.Categoria;
import com.cibertec.repositorio.CategoriaRepositorio;

@Service
public class CategoriaServiceImpl implements CategoriaService {

	@Autowired
	private CategoriaRepositorio repository;
	

	@Override
	public List<Categoria> listarTodos() {
		return repository.findAll();
	}
}
