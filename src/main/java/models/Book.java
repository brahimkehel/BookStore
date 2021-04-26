package models;

public class Book {
	private int id;
	private String titre,auteur;
	private double prix;
	public Book(int id, String titre, String auteur, double prix) {
		super();
		this.id = id;
		this.titre = titre;
		this.auteur = auteur;
		this.prix = prix;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitre() {
		return titre;
	}
	public void setTitre(String titre) {
		this.titre = titre;
	}
	public String getAuteur() {
		return auteur;
	}
	public void setAuteur(String auteur) {
		this.auteur = auteur;
	}
	public double getPrix() {
		return prix;
	}
	public void setPrix(double prix) {
		this.prix = prix;
	}
	
	
}
