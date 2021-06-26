package com.cibertec.entidad;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "tb_usuario")
public class Usuario {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idusuario", unique = true, nullable = false, length = 10)
	private int idUsuario;

	@Column(length = 45)
	private String nombre;

	@Column(length = 45)
	private String login;

	@Column(length = 45)
	private String clave;

	@Column(length = 45)
	private String correo;

	@JsonIgnore
	@OneToMany(mappedBy = "usuario")
	private List<Boleta> boletas;

	public int getIdUsuario() {
		return idUsuario;
	}

	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getClave() {
		return clave;
	}

	public void setClave(String clave) {
		this.clave = clave;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public List<Boleta> getBoletas() {
		return boletas;
	}

	public void setBoletas(List<Boleta> boletas) {
		this.boletas = boletas;
	}
	
	

}
