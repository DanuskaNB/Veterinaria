package com.cibertec.repositorio;



import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.cibertec.entidad.Producto;
@Repository
public interface ProductoRepositorio extends JpaRepository<Producto, Integer> {
	
	@Query("select p from Producto p where nombre like :fil")
	public abstract List<Producto> listaPorNombre(@Param("fil") String filtro);
	
}
