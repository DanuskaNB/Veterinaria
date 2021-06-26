package com.cibertec.servicio;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.query.Param;

import com.cibertec.entidad.Boleta;
import com.cibertec.entidad.Cliente;
import com.cibertec.entidad.Mascota;
import com.cibertec.entidad.ProductoHasBoleta;

public interface BoletaService {
	
	public Boleta insertaBoleta( Boleta boleta );
//	public abstract List<Boleta> listaBoletaCliente(int boleta);
	
	public abstract Optional<Boleta> obtienePorId(int idBoleta);
	public abstract List<Boleta> listaBoletaId(int filtro1);
	public abstract List<ProductoHasBoleta> listarProductos();
	public abstract List<Boleta> listaBoletaId2(int filtro2);
	public abstract List<Boleta> listaBoletas();
	public abstract Boleta insertaBoletas(Boleta boleta);
	
}
