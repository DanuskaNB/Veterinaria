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
	private ServicioRepository repositorio;

	@Override
	public List<Servicio> listarTodos() {
		return repositorio.findAll();
	}

	@Override
	public Servicio insertaServicio(Servicio obj) {
		return repositorio.save(obj);
	}

	@Override
	public void eliminaServicio(int id) {
		repositorio.deleteById(id);

	}

	@Override
	public List<Servicio> listarPorNombre(String filtro) {
		return repositorio.listaPorNombre(filtro);
	}

	@Override
	public Servicio insertaActualizaServicio(Servicio obj) {
		return repositorio.save(obj);
	}

	@Override
	public Optional<Servicio> buscaPorId(int id) {
		return repositorio.findById(id);
	}

}
