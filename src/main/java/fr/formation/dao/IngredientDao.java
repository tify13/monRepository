package fr.formation.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import fr.formation.entity.Ingredient;

@Repository // Permet de générer l'implémentation de l'interface
public interface IngredientDao extends JpaRepository<Ingredient,Integer> {
}
