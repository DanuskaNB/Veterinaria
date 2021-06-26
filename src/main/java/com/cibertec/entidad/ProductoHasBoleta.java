package com.cibertec.entidad;

import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

@Entity
@Table(name = "tb_producto_has_boleta")
public class ProductoHasBoleta {

	@EmbeddedId
	private ProductoHasBoletaPK productoHasBoletaPK;

	@Column(precision = 22)
	private double precio;

	@Column(length = 10)
	private int cantidad;

	@JsonIgnore
	@ManyToOne(optional = false)
	@JoinColumn(name = "idboleta", nullable = false, insertable = false, updatable = false)
	private Boleta boleta;

	
	@ManyToOne(optional = false)
	@JoinColumn(name = "idproducto", nullable = false, insertable = false, updatable = false)
	private ProductoSinFoto producto;

	
	public ProductoHasBoletaPK getProductoHasBoletaPK() {
		return productoHasBoletaPK;
	}

	public void setProductoHasBoletaPK(ProductoHasBoletaPK productoHasBoletaPK) {
		this.productoHasBoletaPK = productoHasBoletaPK;
	}

	public double getPrecio() {
		return precio;
	}

	public void setPrecio(double precio) {
		this.precio = precio;
	}

	public int getCantidad() {
		return cantidad;
	}

	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}

	public Boleta getBoleta() {
		return boleta;
	}

	public void setBoleta(Boleta boleta) {
		this.boleta = boleta;
	}

	public ProductoSinFoto getProducto() {
		return producto;
	}

	public void setProducto(ProductoSinFoto producto) {
		this.producto = producto;
	}


	
	
	
	

}
