package com.cibertec.repositorio;


import org.springframework.data.jpa.repository.JpaRepository;

import com.cibertec.entidad.Rol;



public interface RolRepository  extends JpaRepository<Rol, Integer>{
	
}
