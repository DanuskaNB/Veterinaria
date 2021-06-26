package com.cibertec.servicio;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.cibertec.entidad.ProductoSinFoto;
import com.cibertec.repositorio.ProductoSinFotoRepository;

@Service
public class ProductoSinFotoServiceImpl implements ProductoSinFotoService{

	@Autowired
	private ProductoSinFotoRepository repository;

	public List<ProductoSinFoto> listarProducto() {
		return repository.findAll();
	}

	@Override
	public List<ProductoSinFoto> listaproducto(String filtro, Pageable pageable) {
		return repository.listaproducto(filtro, pageable);
	}


	@Override
	public ProductoSinFoto ActualizaProductoSinFoto(ProductoSinFoto obj) {
		return repository.save(obj);
	}


	@Override
	public Optional<ProductoSinFoto> obtienePorId(int idProducto) {
		return repository.findById(idProducto);
	}


	@Override
	public List<ProductoSinFoto> listarProductos() {
		return repository.findAll();
	}
	
	
}
