package fr.formation.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import fr.formation.entity.Cocktail;
import fr.formation.service.CocktailService;

@RequestMapping("/cocktails")
@Controller
public class CocktailController {

	@Autowired	// Permet de déclarer le service au controller
	private CocktailService service;
	
	@RequestMapping
	public ModelAndView list() {
		final ModelAndView mav = new ModelAndView();
		mav.setViewName("cocktails");
		mav.addObject("cocktails",this.service.getAll());
		return mav;
	}
	
	@RequestMapping("/add")
	public ModelAndView add() {
		final ModelAndView mav = new ModelAndView();
		mav.setViewName("addCocktail");
		return mav;
	}
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String newCocktail(final HttpServletRequest request) {
		String name = request.getParameter("name");
		double price = Double.parseDouble(request.getParameter("price"));
		boolean withAlcohol = request.getParameter("withAlcohol").equals("Alcoolisé")?true:false;
		this.service.create(new Cocktail(name,price,withAlcohol));
		return "redirect:/cocktails/add.html";
	}
}
