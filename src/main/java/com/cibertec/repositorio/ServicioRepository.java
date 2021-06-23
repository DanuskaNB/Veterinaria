package com.cibertec.repositorio;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.cibertec.entidad.Servicio;

@Repository
public interface ServicioRepository extends JpaRepository<Servicio, Integer> {
	
	@Query("Select s from Servicio s where horario like :fil")
	public abstract List<Servicio> listaPorTurnoLike(@Param("fil") String filtro);
	
	
	 public abstract List<Servicio> findByidServicio(int idServicio);
	    
	@Query("Select s from Servicio s where s.nombre like :fil")
	public abstract List<Servicio> listaservicio(@Param("fil") String filtro, Pageable pageable);
	
}
