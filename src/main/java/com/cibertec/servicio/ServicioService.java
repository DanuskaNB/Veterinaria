package com.cibertec.servicio;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Pageable;

import com.cibertec.entidad.Servicio;

public interface ServicioService {

	public abstract List<Servicio> listaServicio();
	public abstract Servicio insertaActualizaServicio(Servicio obj);
	public abstract Optional<Servicio> obtienePorId(int idServicio);
	public abstract void eliminaServicio(int id);
	public abstract List<Servicio> listaServicioPorNombreLike(String filtro);
	
	//jobispo
	public List<Servicio> listaServicio(String filtro, Pageable pegable);
	
}
