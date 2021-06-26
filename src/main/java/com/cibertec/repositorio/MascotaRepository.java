package com.cibertec.repositorio;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.cibertec.entidad.Mascota;

public interface MascotaRepository  extends JpaRepository<Mascota, Integer>{
	
	@Query("Select m from Mascota m where m.nombre like :fil and m.idcliente = :fil1")
	public abstract List<Mascota> listaMascotaPorNombreLike(@Param("fil") String filtro, @Param("fil1") int filtro1);
	
	
}
