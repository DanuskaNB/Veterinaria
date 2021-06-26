package com.cibertec.servicio;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cibertec.entidad.Mascota;
import com.cibertec.repositorio.MascotaRepository;

@Service
public class MascotaServiceImpl implements MascotaService{

	@Autowired
	private MascotaRepository repository;

	@Override
	public List<Mascota> listaMascota() {
		return repository.findAll();
	}

	@Override
	public Mascota insertaActualizaMascota(Mascota obj) {
		return repository.save(obj);
	}

	@Override
	public void eliminaMascota(int id) {
		repository.deleteById(id);
	}

	@Override
	public List<Mascota> listaMascotaPorNombreLike(String filtro, int filtro1) {
		return repository.listaMascotaPorNombreLike(filtro, filtro1);
	}

	@Override
	public Optional<Mascota> obtienePorId(int idmascota) {
		return repository.findById(idmascota);
	}
	
	
}
