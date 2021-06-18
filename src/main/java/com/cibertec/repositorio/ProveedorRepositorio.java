   package com.cibertec.repositorio;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;


import com.cibertec.entidad.Proveedor;


public interface ProveedorRepositorio extends JpaRepository<Proveedor, Integer>{
	@Query("select p from Proveedor p where p.descripcion like :parametro")
	public abstract List<Proveedor> listProveedorporNombre(@Param("parametro") String filtro);
	
	@Query("select distinct p.descripcion from Proveedor p")
	public abstract List<String> listaProveedores();
}

