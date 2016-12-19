package fr.formation.model;

/**
 * Classe constituant un choix de menu de la page d'accueil
 * @author Philippe
 */
public class Menu {
	private String title;
	private String url;
	
	/**
	 * Contructeur
	 * @param title	Titre associé au choix de menu
	 * @param url URL associée au choix de menu
	 */
	public Menu(final String title, final String url) {
		super();
		this.title = title;
		this.url = url;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}
}
