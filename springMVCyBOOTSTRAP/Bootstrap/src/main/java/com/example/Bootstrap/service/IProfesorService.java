package com.example.Bootstrap.service;

import java.util.List;

import org.springframework.stereotype.Component;

import com.example.Bootstrap.model.Profesor;
import com.example.Bootstrap.model.Respuesta;

@Component
public interface IProfesorService {

	public List<Profesor> obtenProfesores();

	public Respuesta agregarProfesor(Profesor profesor);

}
