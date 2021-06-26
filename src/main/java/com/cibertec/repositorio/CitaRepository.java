package com.cibertec.repositorio;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.cibertec.entidad.Boleta;
import com.cibertec.entidad.Cita;

public interface CitaRepository  extends JpaRepository<Cita, Integer>{
	@Query("Select m from Cita m where m.idcita = :fil1")
	public abstract List<Cita> listaCitaId(@Param("fil1") int filtro1);
	
	@Query("Select m from Cita m where m.cliente.idCliente = :fil2")
	public abstract List<Cita> listaCitaCliente(@Param("fil2") int filtro2);
}
