package Metier;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import database.*;
public class AjoutCmd {
	
	public boolean commander(int idcli,String adr,String cin){
	
        Connexion con = new Connexion();
		return con.exec("INSERT INTO command( idCli, adrLiv, cin , etat) VALUES ("+idcli+",'"+adr+"','"+cin+"',0);");
}
	public boolean cmdprd(int idcmd,int idpr,int qte){
		
        Connexion con = new Connexion();
		return con.exec("INSERT INTO procmd( idcmd, idPro, qte) VALUES ("+idcmd+","+idpr+","+qte+");");
}
	public boolean verif(int idcmd,int et){
		
        Connexion con = new Connexion();
		return con.exec("UPDATE `command` SET `etat` = '"+et+"' WHERE `command`.`idcmd` = "+idcmd+";");
}
	public List<empcmd> chercher(){
		List<empcmd> cmd =new ArrayList<empcmd>();
    	Connexion c = new Connexion();	 	
    	ResultSet rs1 =c.cherche("select * from command;");
    	 try {
    		 
    	    while(rs1.next()) {
    	    
  
    	    empcmd cod= new empcmd();
    	
 			cod.setEtat(rs1.getInt("etat"));
 			cod.setId(rs1.getInt("idcmd"));
 			cod.setIdClient(rs1.getInt("idCli"));
 			cod.setadrs(rs1.getString("adrLiv"));
 			cod.setcin(rs1.getString("cin"));
 			
 		    cmd.add(cod);
 		}
    	 }catch(Exception e) {
    		 System.err.println("Erreur f cherche ");
    		return null; 
    	 }
    	
    	 
    	 
    	 return cmd;
     }
		
		
	}
	
	
	

