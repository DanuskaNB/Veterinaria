package com.cibertec.servicio;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.cibertec.entidad.Cliente;
import com.cibertec.entidad.Mascota;
import com.cibertec.repositorio.ClienteRepository;

import java.util.List;
import java.util.Optional;

@Service
public class ClienteServiceImpl implements ClienteService{

	@Autowired
	private ClienteRepository repository;


	@Override
	public Cliente insertaCliente(Cliente obj) {
		return repository.save(obj);
	}


	@Override
	public List<Cliente> listaCliente() {
		return repository.findAll();
	}


	@Override
	public Cliente Login(Cliente obj) {
		// TODO Auto-generated method stub
		return repository.login(obj);
	}
	
	@Override
	public void eliminaCliente(int id) {
		repository.deleteById(id);
	}
	

	@Override
	public Optional<Cliente> obtienePorId(int id) {
		return repository.findById(id);
	}
	@Override
	public Cliente insertaActualizaCliente(Cliente obj) {
		return repository.save(obj);
	}
	
	@Override
	public List<Cliente> listaPoridCliente(int idCliente) {
		return repository.findByidCliente(idCliente);
	}


	@Override
	public List<Cliente> listaCliente(String filtro, Pageable pageable) {
		return repository.listaCliente(filtro, pageable);
	}


	@Override
	public List<Mascota> listaMascotasCliente(int cliente) {
		// TODO Auto-generated method stub
		return repository.listaMascotaCliente(cliente);
	}




}
