package com.cibertec.servicio;

import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Pageable;

import com.cibertec.entidad.Servicio;

public interface ServicioService {
	

	public abstract List<Servicio> listaServicios();
	public abstract Servicio insertaActualizaServicio(Servicio obj);
	public abstract Optional<Servicio> buscaPorId(int id);
	public abstract void eliminaServicio (int id);
	public abstract List<Servicio> listaPorTurnoLike(String filtro);
	public abstract List<Servicio> listarIdServicio(int idProducto);
	
	public List<Servicio> listaservicio(String filtro, Pageable pegable);

}
