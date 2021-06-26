package com.cibertec.entidad;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class ProductoHasBoletaPK implements Serializable {

	private static final long serialVersionUID = 1L;

	@Column(name = "idboleta", unique = true, nullable = false, length = 10, insertable = true, updatable = false)
	private int idBoleta;

	@Column(name = "idproducto", unique = true, nullable = false, length = 10, insertable = true, updatable = false)
	private int idProducto;

	public int getIdBoleta() {
		return idBoleta;
	}

	public void setIdBoleta(int idBoleta) {
		this.idBoleta = idBoleta;
	}

	public int getIdProducto() {
		return idProducto;
	}

	public void setIdProducto(int idProducto) {
		this.idProducto = idProducto;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
