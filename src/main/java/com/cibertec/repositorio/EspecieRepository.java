package com.cibertec.repositorio;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.cibertec.entidad.Especie;

@Repository
public interface EspecieRepository  extends JpaRepository<Especie, Integer>{
	
	@Query("select distinct e.nombre from Especie e")
	public abstract List<String> listaEspecies();
	
	@Query("select e from Especie e where e.nombre = :var_raz")
	public abstract List<Especie> listaRazas(@Param("var_raz")String especie);
}
