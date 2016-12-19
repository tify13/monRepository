package fr.formation.entity;

import java.io.Serializable;

public class Cocktail implements Serializable {

	private Integer id;
	private String name;
	private double price;
	private boolean withAlcohol;
	
	public Cocktail() {
	}

	public Cocktail(String name, double price, boolean withAlcohol) {
		super();
		this.name = name;
		this.price = price;
		this.withAlcohol = withAlcohol;
	}

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public boolean isWithAlcohol() {
		return withAlcohol;
	}
	public void setWithAlcohol(boolean withAlcohol) {
		this.withAlcohol = withAlcohol;
	}
}
