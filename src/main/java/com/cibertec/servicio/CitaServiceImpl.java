package com.cibertec.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cibertec.entidad.Cita;
import com.cibertec.repositorio.CitaRepository;

@Service
public class CitaServiceImpl implements CitaService{

	@Autowired
	private CitaRepository repository;

	@Override
	public Cita insertaCita(Cita obj) {
		return repository.save(obj);
	}

	@Override
	public List<Cita> listaCitaId(int filtro1) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Cita> listarCitas() {
		// TODO Auto-generated method stub
		return repository.findAll();
	}

	@Override
	public List<Cita> listaCitaCliente(int filtro2) {
		// TODO Auto-generated method stub
		return repository.listaCitaCliente(filtro2);
	}
	
}
