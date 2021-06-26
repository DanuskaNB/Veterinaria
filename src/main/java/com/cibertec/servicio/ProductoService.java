package com.cibertec.servicio;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Pageable;

import com.cibertec.entidad.Producto;

public interface ProductoService {
	
	
	public abstract void eliminaProducto(int id);
	public abstract List<Producto> listaProductoPorNombreLike(String filtro);
	public abstract List<Producto> listarIdProducto(int idProducto);
	public List<Producto> listaproducto(String filtro, Pageable pegable);
	public abstract List<Producto> listaProducto();
	public abstract Producto insertaActualizaProducto(Producto obj);
	public abstract Optional<Producto> obtienePorId(int idProducto);
	
	
}
