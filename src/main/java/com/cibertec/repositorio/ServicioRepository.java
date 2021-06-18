package com.cibertec.repositorio;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.cibertec.entidad.Servicio;

public interface ServicioRepository extends JpaRepository<Servicio, Integer> {
	
	@Query("Select s from Servicio s where horario like :fil")
	public abstract List<Servicio> listaAlumnoPorNombreLike(@Param("fil") String filtro);

	
	
}