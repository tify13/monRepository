package fr.formation.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import fr.formation.entity.Ingredient;
import fr.formation.service.IngredientService;

@RequestMapping("/ingredients")
@Controller
public class IngredientController {

	@Autowired
	private IngredientService service;

	@RequestMapping
	public ModelAndView list() {
		final ModelAndView mav = new ModelAndView();
		mav.setViewName("ingredients");
		mav.addObject("ingredients", this.service.getAll());
		return mav;
	}
	
	@RequestMapping("/add")
	public ModelAndView Add() {
		final ModelAndView mav = new ModelAndView();
		mav.setViewName("addIngredient");
		return mav;
	}

	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String newIngredient(final HttpServletRequest request) {
		
		final String name = (String) request.getParameter("name");
		final Integer state;
		if (request.getParameter("state").equalsIgnoreCase("SOLIDE")) {
			state = 0;
		} else if (request.getParameter("state").equalsIgnoreCase("LIQUIDE")) {
			state = 1;
		} else {
			state = 2;
		}
		this.service.create(new Ingredient(name,state));
		return "redirect:/ingredients/add.html";
	}

}
