package com.cibertec.repositorio;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.cibertec.entidad.ProductoSinFoto;

@Repository
public interface ProductoSinFotoRepository  extends JpaRepository<ProductoSinFoto, Integer>{
	
	
    //jobispo
    @Query("Select x from ProductoSinFoto x where x.nombre like :var_fil")
	public List<ProductoSinFoto> listaproducto(@Param("var_fil") String filtro, Pageable pageable);
    
   
    
}
