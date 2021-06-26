package com.cibertec.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cibertec.entidad.Especie;
import com.cibertec.repositorio.EspecieRepository;

@Service
public class EspecieServiceImpl implements EspecieService{

	@Autowired
	private EspecieRepository repository;

	@Override
	public List<String> listaEspecies() {
		return repository.listaEspecies();
	}
	
	@Override
	public List<Especie> listaRazas(String especie) {
		return repository.listaRazas(especie);
	}
	
}
