package com.cibertec.servicio;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.cibertec.entidad.Producto;
import com.cibertec.repositorio.ProductoRepository;

@Service
public class ProductoServiceImpl implements ProductoService{
	
	
	@Autowired
	private ProductoRepository repositoryProducto;
	
	
	@Override
	public List<Producto> listaProductoPorNombreLike(String filtro) {
		return repositoryProducto.listaProductoPorNombreLike(filtro);
	}

	@Override
	public Optional<Producto> obtienePorId(int idProducto) {
		return repositoryProducto.findById(idProducto);
	}

	@Override
	public List<Producto> listarIdProducto(int idproducto) {
		return repositoryProducto.findByidproducto(idproducto);
	}

	@Override
	public List<Producto> listaproducto(String filtro, Pageable pageable) {
		return repositoryProducto.listaproducto(filtro, pageable);
	}


	@Override
	public List<Producto> listaProducto() {
		return repositoryProducto.findAll();
	}

	@Override
	public Producto insertaActualizaProducto(Producto obj) {
		return repositoryProducto.save(obj);
	}

	@Override
	public void eliminaProducto(int id) {
		repositoryProducto.deleteById(id);
	}

	
	
	
}
