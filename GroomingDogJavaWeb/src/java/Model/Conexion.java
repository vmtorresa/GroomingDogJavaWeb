
package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Conexion {
//Creacion de las variables para la conexion.
    
    private String USERNAME = "root";
    private String PASSWORD = "12345";
    private String HOST = "127.0.0.1";
    private String PORT = "3306";
    private String DATABASE = "groomingdog?useTimezone=true&serverTimezone=UTC&useSSL=false";
    private String CLASSNAME = "com.mysql.jdbc.Driver";
    private String URL = "jdbc:mysql://"+HOST+":"+PORT+"/"+DATABASE;
    private Connection con;
    
    //Aquí se define el constructor para la clase Conexion
    
    public Conexion(){
        try{
            Class.forName(CLASSNAME);
            con=DriverManager.getConnection(URL, USERNAME, PASSWORD);
                
        }
        catch(ClassNotFoundException e){
            System.err.println("ERROR"+e);
        }
        catch(SQLException e){
            System.err.println("ERROR"+e);
        }
    }
    public Connection getConexion(){
     return con;   
    }
    
    // Codigo para probar la conexion de datos.
    public static void main(String[] args) {
        
        Conexion con = new Conexion();
        //System.out.println(co.autenticacion("lolo", "lolo123"));
    }
}