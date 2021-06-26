package com.cibertec.servicio;

import java.util.List;
import java.util.Optional;

import com.cibertec.entidad.Mascota;

public interface MascotaService {

	public abstract List<Mascota> listaMascota();
	public abstract Mascota insertaActualizaMascota(Mascota obj);
	public abstract Optional<Mascota> obtienePorId(int idmascota);
	public abstract void eliminaMascota(int id);
	public abstract List<Mascota> listaMascotaPorNombreLike(String filtro, int filtro1);
	
	
}
