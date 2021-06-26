package com.cibertec.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cibertec.entidad.Proveedor;
import com.cibertec.repositorio.ProveedorRepository;

@Service
public class ProveedorServiceImpl implements ProveedorService{

	@Autowired
	private ProveedorRepository repository;

	@Override
	public List<Proveedor> listaProveedor() {
		return repository.findAll();
	}

	
}
