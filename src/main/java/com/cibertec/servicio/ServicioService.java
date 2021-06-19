package com.cibertec.servicio;

import java.util.List;
import java.util.Optional;


import com.cibertec.entidad.Servicio;

public interface ServicioService {
	

	public abstract List<Servicio> listarTodos();
	public abstract Servicio insertaServicio(Servicio obj);
	public abstract void eliminaServicio (int id);
	public abstract List<Servicio> listarPorNombre(String filtro);
	public abstract Servicio insertaActualizaServicio(Servicio obj);
	public abstract Optional<Servicio> buscaPorId(int id);
}
