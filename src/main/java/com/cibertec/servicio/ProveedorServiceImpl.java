package com.cibertec.servicio;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cibertec.entidad.Proveedor;
import com.cibertec.repositorio.ProveedorRepositorio;

@Service
public class ProveedorServiceImpl implements ProveedorService {

	@Autowired
	private ProveedorRepositorio repository;
	

	@Override
	public List<Proveedor> listarTodos() {
		return repository.findAll();
	}
}
