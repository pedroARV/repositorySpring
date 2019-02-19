package com.example.Bootstrap.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.Bootstrap.model.Alumno;
import com.example.Bootstrap.model.Usuario;
import com.example.Bootstrap.model.VistaAlumno;
import com.example.Bootstrap.service.IAlumnoService;

@Controller
public class AlumnoController {
	
	@Autowired
	IAlumnoService alumnoService;
	
	 @GetMapping("/alumno")
	 public String alumno(Model model) {
		VistaAlumno vista = alumnoService.obtenAlumnos();
		 
		  String page="home";
		  Usuario usuario = new Usuario();
		  usuario.setNombreGrupo("docente");
		  usuario.setUsuario("pedro");
		  model.addAttribute("content","alumno");
		  model.addAttribute("user",usuario);
		  
		  model.addAttribute("vista", vista);
		  model.addAttribute(page, true);

		  return page;
		  
	 }

}
