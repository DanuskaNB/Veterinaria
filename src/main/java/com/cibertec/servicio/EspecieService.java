package com.cibertec.servicio;

import java.util.List;

import com.cibertec.entidad.Especie;

public interface EspecieService {

	public abstract List<String> listaEspecies();
	public abstract List<Especie> listaRazas(String especie);
	
}
