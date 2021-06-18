package com.cibertec.servicio;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cibertec.entidad.Servicio;
import com.cibertec.repositorio.ServicioRepository;

@Service
public class ServicioServiceImpl implements ServicioService {

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
	public Optional<Servicio> obtienePorId(int idServicio) {
		// TODO Auto-generated method stub
		return repository.findById(idServicio);
	}

	@Override
	public void eliminaServicio(int id) {
		repository.deleteById(id);

	}

	@Override
	public List<Servicio> listaServicioPorHorarioLike(String filtro) {
		return repository.listaAlumnoPorNombreLike(filtro);
	}

	

}
