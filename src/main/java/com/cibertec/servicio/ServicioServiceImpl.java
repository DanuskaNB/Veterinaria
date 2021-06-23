package com.cibertec.servicio;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.cibertec.entidad.Servicio;
import com.cibertec.repositorio.ServicioRepository;

@Service
public class ServicioServiceImpl implements ServicioService {

	@Autowired
	private ServicioRepository repositorio;

	
	
	@Override
	public Servicio insertaActualizaServicio(Servicio obj) {
		return repositorio.save(obj);
	}

	
	@Override
	public void eliminaServicio(int id) {
		repositorio.deleteById(id);

	}

	@Override
	public List<Servicio> listaPorTurnoLike(String filtro) {
		return repositorio.listaPorTurnoLike(filtro);
	}

	
	@Override
	public Optional<Servicio> buscaPorId(int id) {
		return repositorio.findById(id);
	}
	
	@Override
	public List<Servicio> listarIdServicio(int idServicio) {
		// TODO Auto-generated method stub
		return repositorio.findByidServicio(idServicio);
	}
	
	
	
	@Override
	public List<Servicio> listaservicio(String filtro, Pageable pageable) {
		return repositorio.listaservicio(filtro, pageable);
	}


	@Override
	public List<Servicio> listaServicios() {
		return repositorio.findAll();
	}
	

}
