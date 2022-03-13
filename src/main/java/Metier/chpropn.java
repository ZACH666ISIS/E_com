package Metier;

import java.sql.ResultSet;

import database.Connexion;

public class chpropn {

	
	 public panier cher(int id,int q){ 
	    	Connexion c = new Connexion();	 	
	    	ResultSet rs1 =c.cherche("select * from produit where idProd="+id+";");
	    	 try {
	    		
	    	
	    	    panier p= new panier();
	    		while(rs1.next()) {
	 			p.setidArticle(rs1.getInt("idProd"));
	 			p.setLibelle(rs1.getString("libelle"));
	 			p.setPrix(rs1.getDouble("prix"));
	 			p.setimg(rs1.getString("img"));
	 			p.setQte(q);
	    		}
	 			return p;
	    		
	    		
	    		    	  
	 		   
	 		}	 catch(Exception e) {
	    		 System.err.println("Erreur 22222 ");
	    		return null; 
	    	 }
	    
	     }
}
