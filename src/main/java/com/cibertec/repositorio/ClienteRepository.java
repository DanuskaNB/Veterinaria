package com.cibertec.repositorio;
	
import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.cibertec.entidad.Cliente;

@Repository
public interface ClienteRepository  extends JpaRepository<Cliente, Integer>{
	
	@Query("Select m from Cliente m where nombre like :fil")
	public abstract List<Cliente> listaClientePorNombreLike(@Param("fil") String filtro);
	
	@Query("Select c from Cliente c where c.correo = :#{#usu.correo} and c.pass = :#{#usu.pass}")
	public abstract Cliente login(@Param(value="usu")Cliente bean);
	
	public abstract List<Cliente> findByidCliente(int idCliente);

	//jobispo
	@Query("Select x from Cliente x where nombre like :var_filtro or apellido like :var_filtro")
	public abstract List<Cliente> listaCliente(@Param("var_filtro") String filtro, Pageable pageable);


}
