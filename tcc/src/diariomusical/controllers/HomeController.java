package diariomusical.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping("/")
	public String Home() {
		return "Incricao";
	}
	
@RequestMapping("/emocoes")
public String acoes(){
	return "emocoes";
}

@RequestMapping("/historico")
public String historico(){
	return "historico";
}

}
