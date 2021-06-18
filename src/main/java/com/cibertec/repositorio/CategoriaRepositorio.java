   package com.cibertec.repositorio;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.cibertec.entidad.Categoria;


public interface CategoriaRepositorio extends JpaRepository<Categoria, Integer>{
	@Query("select c from Categoria c where c.nombre like :parametro")
	public abstract List<Categoria> listaCategoria(@Param("parametro") String filtro);
	
	@Query("select distinct c.nombre from Categoria c")
	public abstract List<String> listaCategorias();
}

