package com.example.Bootstrap.business;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.Bootstrap.entity.TAlumno;
import com.example.Bootstrap.entity.TProfesor;
import com.example.Bootstrap.model.Alumno;
import com.example.Bootstrap.model.Profesor;
import com.example.Bootstrap.model.VistaAlumno;
import com.example.Bootstrap.repository.IAlumnoRepository;
import com.example.Bootstrap.repository.IProfesorRepository;
import com.example.Bootstrap.service.IAlumnoService;

@Service
public class AlumnoBusiness implements IAlumnoService{
	
	private static final Logger logger = LoggerFactory.getLogger(ProfesorBusiness.class);

	@Autowired
	IAlumnoRepository alumnoRepo;
	
	@Autowired
	IProfesorRepository profesorRepo;

	@Override
	public VistaAlumno obtenAlumnos() {
		
		VistaAlumno vista = new VistaAlumno();
		List<Alumno> lista = new ArrayList<>();
		List<Profesor> listaP = new ArrayList<>();

		
		try {
			
			List<TAlumno> alumnos = alumnoRepo.findAll();
			for (TAlumno tAlumno : alumnos) {
				
				Alumno a = new Alumno();
				a.setId(tAlumno.getIdAlumno());
				a.setNombre(tAlumno.getNombre());
				a.setApellidop(tAlumno.getApellidop());
				a.setApellidom(tAlumno.getApellidom());
				a.setEdad(tAlumno.getEdad());
				a.setIdProfesor(tAlumno.getTProfesor().getIdProfesor());
				a.setNombreProfesor(tAlumno.getTProfesor().getNombreProfesor());
				lista.add(a);

			}
       vista.setAlumnos(lista);
       
       List<TProfesor> profesores = profesorRepo.findAll();
       for (TProfesor tProfesor : profesores) {
    	   
    	   Profesor p = new Profesor();
    	   p.setId(tProfesor.getIdProfesor());
    	   p.setNombre(tProfesor.getNombreProfesor());
    	   listaP.add(p);
    	   
		
	}
       
       vista.setProfesores(listaP);
			
		} catch (Exception e) {
			
			logger.error(e.getMessage());

			// TODO: handle exception
		}

		
		// TODO Auto-generated method stub
		return vista;
	}

}
