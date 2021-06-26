package com.cibertec.entidad;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tb_sexomascota")
public class Sexo {

	@Column(name = "idsexPet")
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idsexo;
	
	@Column(name = "nombre")
	private String nombre;

	public int getIdsexo() {
		return idsexo;
	}

	public void setIdsexo(int idsexo) {
		this.idsexo = idsexo;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	
		
}
