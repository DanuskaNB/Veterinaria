package com.cibertec.servicio;



import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Pageable;

import com.cibertec.entidad.Cliente;


public interface ClienteService {


	public abstract Cliente insertaCliente(Cliente obj);
	public List<Cliente> listaCliente();
	public abstract Cliente Login (Cliente obj);
	public abstract Optional<Cliente> obtienePorId(int idCliente);
	public abstract void eliminaCliente(int id);
	public abstract Cliente insertaActualizaCliente(Cliente obj);
	public abstract List<Cliente> listaPoridCliente(int idCliente);

	//jobispo
	public abstract List<Cliente> listaCliente(String filtro , Pageable pageable) ;

	
}
