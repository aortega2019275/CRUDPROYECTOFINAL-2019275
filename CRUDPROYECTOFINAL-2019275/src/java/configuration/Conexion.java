package configuration;

import java.sql.Connection;
import java.sql.DriverManager;


public class Conexion {
    Connection conexion;
    
    public Conexion () {
        try{
    	Class.forName("com.mysql.Driver");
	conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/DBRegistro?useSSL=falas","root","admin");
        }catch (Exception e) {
	e.printStackTrace ();
	System.out.println("La conexion no se puedo establecer " + e);
         }

     }
	public Connection getConection(){
	   	return conexion;

        }
}