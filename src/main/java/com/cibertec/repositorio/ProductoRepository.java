package com.cibertec.repositorio;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.cibertec.entidad.Producto;

@Repository
public interface ProductoRepository  extends JpaRepository<Producto, Integer>{
	
	@Query("Select p from Producto p where nombre like :fil")
	public abstract List<Producto> listaProductoPorNombreLike(@Param("fil") String filtro);
    public abstract List<Producto> findByidproducto(int idproducto);
    @Query("Select x from Producto x where x.nombre like :var_fil")
	public List<Producto> listaproducto(@Param("var_fil") String filtro, Pageable pageable);
    
}
