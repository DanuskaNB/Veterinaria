package com.cibertec.repositorio;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.cibertec.entidad.ServicioHasBoleta;



public interface ServicioHasBoletaRepository extends JpaRepository<ServicioHasBoleta, Integer> {


	
	
}
