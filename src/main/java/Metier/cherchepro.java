package Metier;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import database.Connexion;


public class cherchepro {
	
	 
     
     public List<produit> m(){ 
    	List<produit> produits =new ArrayList<produit>();
    	Connexion c = new Connexion();	 	
    	ResultSet rs1 =c.cherche("select * from produit;");
    	 try {
    		 
    	    while(rs1.next()) {
    	    
  
    	    produit p= new produit();
    	
 			p.setidArticle(rs1.getInt("idProd"));
 			p.setLibelle(rs1.getString("libelle"));
 			p.setQte(rs1.getInt("qte"));
 			p.setimg(rs1.getString("img"));
 			p.setPrix(rs1.getDouble("prix"));
 		    produits.add(p);
 		}
    	 }catch(Exception e) {
    		 System.err.println("Erreur f cherche ");
    		return null; 
    	 }
    	
    	 
    	 
    	 return produits;
     }
 }
