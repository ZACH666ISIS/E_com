package Metier;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import database.Connexion;

public class onepro {

	  public produit cher(String id){ 
	    	Connexion c = new Connexion();	 	
	    	ResultSet rs1 =c.cherche("select * from produit where idProd='"+id+"';");
	    	 try {
	    		
	    		rs1.next();	
	    		if(rs1.isLast()) {
	    	    produit p= new produit();
	 			p.setidArticle(rs1.getInt("idProd"));
	 			p.setLibelle(rs1.getString("libelle"));
	 			p.setQte(rs1.getInt("qte"));
	 			p.setPrix(rs1.getDouble("prix"));
	 			p.setimg(rs1.getString("img"));
	 			return p;
	    		}
	    		
	    		return null;
	    	  
	 		   
	 		}	 catch(Exception e) {
	    		 System.err.println("Erreur 22222 ");
	    		return null; 
	    	 }
	    
	     }
}
