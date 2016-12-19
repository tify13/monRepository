package fr.formation.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.formation.dao.CocktailDao;
import fr.formation.entity.Cocktail;

@Service
public class CocktailService {

	@Autowired // Permet de déclarer le bean au service
	private CocktailDao cocktailDao;

	@Transactional	// Permet de réaliser le commit de la transaction 
	public void create(final Cocktail cocktail) {
		this.cocktailDao.save(cocktail);
	}

	public List<Cocktail> getAll() {
		return this.cocktailDao.findAll();
	}
}
