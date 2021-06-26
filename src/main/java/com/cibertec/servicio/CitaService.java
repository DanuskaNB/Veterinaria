package com.cibertec.servicio;

import java.util.List;


import com.cibertec.entidad.Cita;

public interface CitaService {

	public abstract Cita insertaCita(Cita obj);
	public abstract List<Cita> listarCitas();
	public abstract List<Cita> listaCitaId(int filtro1);
	public abstract List<Cita> listaCitaCliente(int filtro2);
	
}
