package Metier;

import java.util.ArrayList;
import java.util.List;

public class produit {
	private int idArticle;
	private String libelle;
	private String description;
	private double prix;
	private int qte;
	private String img;
	

	public String getimg() {
		return img;
	}
	
	public int getidArticle() {
		return idArticle;
	}
	public int getqte() {
		return qte;
	}
	public double getprix() {
		return prix;
	}
	public String getdescription() {
		return description;
	}
	
	public String getlibelle() {
		return libelle;
	}
	
	public void setidArticle(int id) {
		this.idArticle=id;
	}
	public void setimg(String img) {
		this.img=img;
	}
	public void setPrix(double prix) {
		this.prix=prix;
	}
	public void setLibelle(String libelle) {
		this.libelle=libelle;
	}
	public void setQte(int qte) {
		this.qte=qte;
	}

}
