package com.cibertec.servicio;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cibertec.entidad.Boleta;
import com.cibertec.entidad.ProductoHasBoleta;
import com.cibertec.repositorio.BoletaRepository;
import com.cibertec.repositorio.ProductoHasBoletaRepository;

@Service
public class BoletaServiceImpl implements BoletaService {
	
	@Autowired
	private BoletaRepository boletaRepository;
	
	@Autowired
	private ProductoHasBoletaRepository detalleRepository;
	
	@Override
	@Transactional
	public Boleta insertaBoleta(Boleta obj) {
		Boleta cabecera = boletaRepository.save(obj);
		for (ProductoHasBoleta d : cabecera.getDetallesBoleta()) {
			d.getProductoHasBoletaPK().setIdBoleta(cabecera.getIdboleta());
			detalleRepository.actualizaStock(d.getCantidad(), d.getProductoHasBoletaPK().getIdProducto());
			detalleRepository.save(d);
		}
		return cabecera;
	}

//	@Override
//	public List<Boleta> listaBoletaCliente(int boleta) {
//		// TODO Auto-generated method stub
//		return boletaRepository.listaBoletaCliente(boleta);
//	}

	@Override
	public Optional<Boleta> obtienePorId(int idBoleta) {
		// TODO Auto-generated method stub
		return boletaRepository.findById(idBoleta);
	}

	@Override
	public List<Boleta> listaBoletaId(int filtro1) {
		// TODO Auto-generated method stub
		return boletaRepository.listaBoletaId(filtro1);
	}

	@Override
	public List<ProductoHasBoleta> listarProductos() {
		// TODO Auto-generated method stub
		return detalleRepository.findAll();
	}

	@Override
	public List<Boleta> listaBoletaId2(int filtro2) {
		// TODO Auto-generated method stub
		return boletaRepository.listaBoletaId2(filtro2);
	}

	@Override
	public List<Boleta> listaBoletas() {
		// TODO Auto-generated method stub
		return boletaRepository.findAll();
	}

	@Override
	public Boleta insertaBoletas(Boleta boleta) {
		// TODO Auto-generated method stub
		return boletaRepository.save(boleta);
	}



}
