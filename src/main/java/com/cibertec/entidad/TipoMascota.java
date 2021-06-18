package com.cibertec.entidad;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="tipomascota")
public class TipoMascota {
	
	@Column(name = "idTipomascota")
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idTipomascota;
	
	private String descripcion;
	public int getIdTipomascota() {
		return idTipomascota;
	}

	public void setIdTipomascota(int idTipomascota) {
		this.idTipomascota = idTipomascota;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	
	
}
