package com.cibertec.repositorio;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.cibertec.entidad.Servicio;

public interface ServicioRepository  extends JpaRepository<Servicio, Integer>{
	
	@Query("Select s from Servicio s where nombre like :fil")
	public abstract List<Servicio> listaServicioPorNombreLike(@Param("fil") String filtro);
	
	//jobispo
	@Query("Select x from Servicio x where x.nombre like :var_fil")
	public List<Servicio> listaServicio(@Param("var_fil") String filtro, Pageable pageable);
}
