package Metier;

import java.sql.ResultSet;

import database.Connexion;

public class chechAdm {
	public admin ex(String user,String pass){ 
    	Connexion c = new Connexion();	
    	
    	ResultSet rs =c.cherche("select * from admin where email='"+user+"' and mdp='"+pass+"';");
    	 try {
    		admin a= new admin(); 
    	    rs.next();
    	    a.seteml(rs.getString("email"));
    	    a.setpass(rs.getString("mdp"));
    	    a.setid(rs.getInt("idAdmin"));

 		    	return a;
    	 }catch(Exception e) {
    		
    		return null; 
    	 }
    	
    	 
    	 
    	 
     }
}
