package com.cibertec.entidad;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.general.util.FunctionUtil;

import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "tb_mascota")
public class Mascota {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idmascota")
	private Integer idmascota;
	
	@Column(name = "nombre")
	private String nombre;

	@JsonIgnoreProperties({ "hibernateLazyInitializer", "handler" })
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "idsexPet")
	private Sexo sexo;
	
	@Column(name = "color")
	private String color;
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column(name = "fechaNacimiento")
	private Date fechaNacimiento;
	
	public String getStrFechaFormateada() {
		return FunctionUtil.toFechaString(fechaNacimiento);
	}
	@JoinColumn(name = "idcliente")
	@Column(name = "idcliente")
	private Integer idcliente;

	public Integer getIdmascota() {
		return idmascota;
	}
	public void setIdmascota(Integer idmascota) {
		this.idmascota = idmascota;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	
	public Sexo getSexo() {
		return sexo;
	}
	public void setSexo(Sexo sexo) {
		this.sexo = sexo;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public Date getFechaNacimiento() {
		return fechaNacimiento;
	}
	public void setFechaNacimiento(Date fechaNacimiento) {
		this.fechaNacimiento = fechaNacimiento;
	}
	public Integer getIdcliente() {
		return idcliente;
	}
	public void setIdcliente(Integer idcliente) {
		this.idcliente = idcliente;
	}
	
	
	
	
	
}