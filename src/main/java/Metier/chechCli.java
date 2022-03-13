package Metier;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import database.Connexion;

public class chechCli {
	
	
	public client ex(String user,String pass){ 
    	Connexion c = new Connexion();	
    	
    	ResultSet rs =c.cherche("select * from client where email='"+user+"' and password='"+pass+"';");
    	 try {
    		client cli= new client(); 
    	    rs.next();
    	    cli.setEmail(rs.getString("email"));
    	    cli.setPassword(rs.getString("password"));
    	    cli.setId(rs.getInt("idClient"));
    	    cli.setTelephone(rs.getString("tel"));
    	    cli.setNom(rs.getString("nom"));
    	    cli.setPrenom(rs.getString("prenom"));

 		    	return cli;
    	 }catch(Exception e) {
    		
    		return null; 
    	 }
	}
    	
    	 public List<client> mc(String mc){ 
    	    	Connexion c = new Connexion();	
    	    	String req;
    	    	if(mc.isBlank())req="select * from client ;";
    	    	else req="select * from client where email='"+mc+"' or nom like'%"+mc+"%' or prenom like'%"+mc+"%' or idClient='"+mc+"';";
    	    	ResultSet rs =c.cherche(req);
    	    	 try {
    	    		 List<client> l=new ArrayList();
    	    	    while(rs.next()) {
    	    	    client cli= new client();
    	    	    cli.setEmail(rs.getString("email"));
    	    	    cli.setPassword(rs.getString("password"));
    	    	    cli.setId(rs.getInt("idClient"));
    	    	    cli.setTelephone(rs.getString("tel"));
    	    	    cli.setNom(rs.getString("nom"));
    	    	    cli.setPrenom(rs.getString("prenom"));
    	    	    l.add(cli);
    	    	    }
    	    	    

    	 		    	return l;
    	    	 }catch(Exception e) {
    	    		
    	    		return null; 
    	    	 }
    	 
    	 
    	 
     }
	

}
