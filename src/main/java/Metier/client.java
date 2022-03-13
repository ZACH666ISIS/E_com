package Metier;

public class client {
	private int id;
	private String nom;
	private String prenom;
	private String email;
	private String password;
	private String telephone;
	
	
	
	public String getTelephone() {
		return telephone;
	}
	public String getNom() {
		return nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public String getEmail() {
		return email;
	}
	public String getPassword() {
		return password;
	}
	public int getId() {
		return id;
	}
	public void setTelephone(String telephone) {
		this.telephone=telephone;
	}
	public void setNom(String nom) {
		this.nom=nom;
	}
	public void setPrenom(String prenom) {
		this.prenom=prenom;
	}
	public void setEmail(String email) {
		this.email=email;
	}
	public void setPassword(String password) {
		this.password=password;
	}
	public void setId(int id) {
		this.id=id;
	}
	
	
}
