package fr.formation.entity;

import java.io.Serializable;

public class Ingredient implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer id;
	private String name;
	private int state;

	public Ingredient() {
	}

	public Ingredient(final String name, final int state) {
		this.name = name;
		this.state = state;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
}
