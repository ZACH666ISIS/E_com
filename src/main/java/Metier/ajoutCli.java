package Metier;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import database.Connexion;
public class ajoutCli {

	public boolean ex(String nom,String prenom,String email,String password,String telephone){ 
    	Connexion c = new Connexion();	
    	
  return c.exec("insert into client(nom,prenom,email,password,tel) values('"+nom+"','"+prenom+"','"+email+"','"+password+"','"+telephone+"');");
 
     }
	public boolean supp(int id ){ 
    	Connexion c = new Connexion();	
    	
  return c.exec("Delete from client where idClient="+id+";");
 
     }
	
	
}
