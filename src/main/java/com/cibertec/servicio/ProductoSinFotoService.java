package com.cibertec.servicio;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Pageable;

import com.cibertec.entidad.ProductoSinFoto;

public interface ProductoSinFotoService {

	
	public abstract List<ProductoSinFoto> listarProductos();
	public List<ProductoSinFoto> listaproducto(String filtro, Pageable pegable);
	public abstract ProductoSinFoto ActualizaProductoSinFoto(ProductoSinFoto obj);
	public abstract Optional<ProductoSinFoto> obtienePorId(int idProducto);
}
