package com.example.Bootstrap.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.Bootstrap.model.Usuario;

@Controller
public class MainController {
	
	  @GetMapping("/")
	  public String home1(Model model) {

	  String page="home";
	  
	  Usuario usuario = new Usuario();
	  usuario.setNombreGrupo("docente");
	  usuario.setUsuario("pedro");
	  model.addAttribute("content","dommenu");
	  model.addAttribute("user",usuario);
	  

	  model.addAttribute(page, true);

	  return page;
	  }

	  @GetMapping("/home")
	  public String home(Model model) {

	  String page="home";
	  
	  Usuario usuario = new Usuario();
	  usuario.setNombreGrupo("docente");
	  usuario.setUsuario("pedro");
	  model.addAttribute("content","dommenu");
	  model.addAttribute("user",usuario);
	  
	  model.addAttribute(page, true);

	  return page;
	  }
	  

}
