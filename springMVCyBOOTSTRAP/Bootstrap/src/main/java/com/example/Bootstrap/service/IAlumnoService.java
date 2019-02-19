package com.example.Bootstrap.service;



import org.springframework.stereotype.Component;

import com.example.Bootstrap.model.VistaAlumno;

@Component
public interface IAlumnoService {
	
	public VistaAlumno obtenAlumnos();

}
