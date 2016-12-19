package fr.formation.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import fr.formation.model.Menu;

@Controller
public class MainController {

	@Autowired
	private MessageSource messages;

	@RequestMapping("/index") // URL qui appelle la méthode "ModelAndViewIndex()"
	public ModelAndView ModelAndViewIndex() {

		/*
		 * Principe : Dans le controller on créé un ModelAndView. On lui
		 * transmet les objets dont on aura besoin dans la page JSP. Ainsi, dans
		 * la page JSP on pourra accéder uniquement aux objets transmis dans le
		 * ModelAndView. Le controller doit obligatoirement renvoyer un objet
		 * ModelAndView
		 */
		final ModelAndView mav = new ModelAndView(); //  Création de la vue qui doit être retournée par la méthode
		mav.setViewName("index");

		/*
		 * Récupération des informations du menu situées dans le fichier
		 * menu.properties
		 */
		final List<String> menuKeys = Arrays.asList(this.getMessage("menu.list").split(","));	// Lecture des clés de la 1ère ligne
		final List<Menu> menus = new ArrayList<>();
		for (final String menuKey : menuKeys) {	// Parcours des clés et constitution de la liste "menus"
			final String prefix = "menu." + menuKey.trim();
			final String title = this.getMessage(prefix + ".title");
			final String url = this.getMessage(prefix + ".url");
			menus.add(new Menu(title, url));
		}
		/*
		 * Transmission de l'objet menus à l'objet ModelAndView pour qu'il soit
		 * accessible depuis la page JSP grâce aux Expression Languages
		 */
		mav.getModel().put("menus", menus);
		return mav;
	}

	/*
	 * Récupère une clé-valeur du fichier menu.properties
	 */
	private String getMessage(final String key) {
		return this.messages.getMessage(key, null, null);
	}
}
