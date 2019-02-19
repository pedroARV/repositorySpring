package com.example.Bootstrap.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.Bootstrap.model.Profesor;
import com.example.Bootstrap.model.Respuesta;
import com.example.Bootstrap.model.Usuario;
import com.example.Bootstrap.service.IProfesorService;

@Controller
public class ProfesorController {
	
	@Autowired
	IProfesorService profesorService;

	@GetMapping("/profesor")
	 public String profesor(Model model) {
		 
		List<Profesor> profesores = profesorService.obtenProfesores();
	
		  String page="home";
		  Usuario usuario = new Usuario();
		  usuario.setNombreGrupo("docente");
		  usuario.setUsuario("pedro");
		  model.addAttribute("content","profesor");
		  model.addAttribute("user",usuario);
		  
		  model.addAttribute("profesores", profesores);
		  model.addAttribute(page, true);
		  
		  

		  return page;
		  
	 }
	
	@PostMapping("/profesor/agregar")
	@ResponseBody
	public Respuesta agregarProfesor(Profesor profesor) {
		
		return profesorService.agregarProfesor(profesor);
	}
	
		
		
		
	
	
}
