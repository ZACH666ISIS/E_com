package database;

import java.sql.*;


public class Connexion {
	private Connection con = null;
	private String url="jdbc:mysql://localhost:3306/j2ee";
	private String id="root";
	private String mdp="";
	private String requete=null;
	
    public Connexion() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url,id,mdp);
        }
        catch (ClassNotFoundException ex) {
            System.err.println("Ne peut pas trouver les classes du conducteur de la base de données.");
            System.err.println(ex);
        }
        catch (SQLException ex) {
            System.err.println("pas de connection au base de de donnee.");
            System.err.println(ex);
        }
     }
    public Connection getConnection() {
    	return con;
    }
    public ResultSet cherche(String req) {
    	Statement st=null;
    	ResultSet Rs=null;
        try {
			st = con.createStatement();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
        try {
			Rs=st.executeQuery(req);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	return Rs;
    }
    public boolean exec(String req) {
    	Statement st=null;
    	ResultSet Rs=null;
        try {
			st = con.createStatement();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
			return false;
		}
        try {
			st.executeUpdate(req);
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
    }
    
    
}
