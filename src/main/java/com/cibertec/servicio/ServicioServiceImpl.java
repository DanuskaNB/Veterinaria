package com.cibertec.servicio;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.cibertec.entidad.Servicio;
import com.cibertec.repositorio.ServicioRepository;

@Service
public class ServicioServiceImpl implements ServicioService{

	@Autowired
	private ServicioRepository repository;

	@Override
	public List<Servicio> listaServicio() {
		return repository.findAll();
	}

	@Override
	public Servicio insertaActualizaServicio(Servicio obj) {
		return repository.save(obj);
	}

	@Override
	public void eliminaServicio(int id) {
		repository.deleteById(id);
	}

	@Override
	public List<Servicio> listaServicioPorNombreLike(String filtro) {
		return repository.listaServicioPorNombreLike(filtro);
	}

	@Override
	public Optional<Servicio> obtienePorId(int idServicio) {
		return repository.findById(idServicio);
	}

	@Override
	public List<Servicio> listaServicio(String filtro, Pageable pageable) {
		return repository.listaServicio(filtro, pageable);
	}
	
	
}
