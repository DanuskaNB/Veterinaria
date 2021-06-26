package com.cibertec.entidad;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class ServicioHasBoletaPK implements Serializable {

	private static final long serialVersionUID = 1L;

	@Column(name = "idboleta", unique = true, nullable = false, length = 10, insertable = true, updatable = false)
	private int idBoleta;

	@Column(name = "idservicio", unique = true, nullable = false, length = 10, insertable = true, updatable = false)
	private int idServicio;

	public int getIdBoleta() {
		return idBoleta;
	}

	public void setIdBoleta(int idBoleta) {
		this.idBoleta = idBoleta;
	}

	public int getIdServicio() {
		return idServicio;
	}

	public void setIdServicio(int idServicio) {
		this.idServicio = idServicio;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
