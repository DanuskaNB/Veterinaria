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

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;


import lombok.Getter;
import lombok.Setter;
@Getter
@Setter
@Entity
@Table(name = "tb_cita")
public class Cita {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ide_cita")
	private Integer idcita;
	
	@Column(name = "obs_cita")
	private String observacion;
	
	@Column(name = "fec_solic_cita")
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private String fechaRegistro;

	@Column(name = "tipo")
	private String tipo;
	
	@ManyToOne
	@JoinColumn(name = "idcliente")
	private Cliente cliente;
	
	@ManyToOne
	@JoinColumn(name = "idmascota")
	private Mascota mascota;

	public Integer getIdCita() {
		return idcita;
	}

	public void setIdCita(Integer idcita) {
		this.idcita = idcita;
	}

	public String getObservacion() {
		return observacion;
	}

	public void setObservacion(String observacion) {
		this.observacion = observacion;
	}

	public String getFechaRegistro() {
		return fechaRegistro;
	}

	public void setFechaRegistro(String fechaRegistro) {
		this.fechaRegistro = fechaRegistro;
	}

	
	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public Mascota getMascota() {
		return mascota;
	}

	public void setMascota(Mascota mascota) {
		this.mascota = mascota;
	}
	
	
	
}