package com.cibertec.servicio;

import java.util.List;
import java.util.Optional;
import com.cibertec.entidad.Servicio;

public interface ServicioService {
	

	public abstract List<Servicio> listaServicio();
	public abstract Servicio insertaActualizaServicio(Servicio obj);
	public abstract Optional<Servicio> obtienePorId(int idServicio);
	public abstract void eliminaServicio(int id);
	public abstract List<Servicio> listaServicioPorHorarioLike(String filtro);
	/*
	 * public abstract List<Alumno> listaAlumnoPorNombreLike(String filtro); public
	 * abstract List<Alumno> listaPorDni(String dni); public abstract List<Alumno>
	 * listaPorDni(String dni, int idAlumno);
	 */
	

}
