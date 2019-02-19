package com.example.Bootstrap.business;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.Bootstrap.entity.TProfesor;
import com.example.Bootstrap.model.Profesor;
import com.example.Bootstrap.model.Respuesta;
import com.example.Bootstrap.repository.IProfesorRepository;
import com.example.Bootstrap.service.IProfesorService;


@Service
public class ProfesorBusiness implements IProfesorService {
	
	private static final Logger logger = LoggerFactory.getLogger(ProfesorBusiness.class);

	@Autowired
	IProfesorRepository profesorRepo;	
	
	@Override
	public List<Profesor> obtenProfesores() {
		
		List<Profesor> lista = new ArrayList<>();
		
		
		try {
			
		List<TProfesor> profesores = profesorRepo.findAll();
		for (TProfesor tProfesor : profesores) {
			
			
			Profesor p = new Profesor();
			p.setId(tProfesor.getIdProfesor());
			p.setNombre(tProfesor.getNombreProfesor());
			lista.add(p);
	
			
		}
			
			
		} catch (Exception e) {
			
			logger.error(e.getMessage());
		}
		return lista;
	}

	@Override
	public Respuesta agregarProfesor(Profesor profesor) {
		Respuesta respuesta = new Respuesta();
		
		
		try {
			TProfesor profesorEntity = new TProfesor();
			
			profesorEntity.setNombreProfesor(profesor.getNombre());
			
			profesorRepo.save(profesorEntity);
			
			respuesta.setCode(200);
			
			respuesta.setMessage("ok");
			
		} catch (Exception e) {
			
			respuesta.setCode(500);
			respuesta.setMessage("Ha ocurrido un error en el sistema");
			logger.error(e.getMessage());

		}
		
		return respuesta;
	}

}
