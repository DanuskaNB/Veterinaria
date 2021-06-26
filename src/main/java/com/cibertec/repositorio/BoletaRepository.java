package com.cibertec.repositorio;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.cibertec.entidad.Boleta;
import com.cibertec.entidad.Mascota;

public interface BoletaRepository extends JpaRepository<Boleta, Integer> {	
	@Query("Select m from Boleta m where m.cliente.idCliente = :fil1")
	public abstract List<Boleta> listaBoletaId(@Param("fil1") int filtro1);
	
	@Query("Select m from Boleta m where m.idboleta = :fil2")
	public abstract List<Boleta> listaBoletaId2(@Param("fil2") int filtro2);
	
	
	
}
