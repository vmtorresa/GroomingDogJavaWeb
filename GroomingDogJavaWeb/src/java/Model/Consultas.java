package Model;


import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Consultas extends Conexion {

    public boolean autenticacion(String usuario, String password) {
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            String consulta = "select*from persona where usuarioPersona = ? and passwordPersona = ?";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, usuario);
            pst.setString(2, password);
            rs = pst.executeQuery();

            if (rs.absolute(1)) {
                return true;
            }
        } catch (Exception e) {
            System.err.println("Error: " + e);
        } finally {
            try {
                if (getConexion() != null) {
                    getConexion().close();
                }
                if (pst != null) {
                    pst.close();
                }
                if (rs != null) {
                    rs.close();
                }
            } catch (Exception e) {
                System.err.println("Error: " + e);
            }
        }
        return false;
    }

    // Main utilizado para verificar la conexion a la BD y la existencia de usuario en MySQL
    /* public static void main(String[] args) {
        Consultas co = new Consultas();
        System.out.println(co.autenticacion("lolo", "lolo123"));
    }*/

    public boolean registrar(String documento, String nombre, String apellido, String correo, String tipoId, String nacimiento, String usuario, String password, String rol) {
        PreparedStatement pst = null;
        try {
            String consulta = "insert into persona (identifPersona, nombPersona, apellPersona, emailPersona, tipoIdentifPerson, FechaNacimPers, usuarioPersona, passwordPersona, rolPersona)"
                    + "" + "values (?,?,?,?,?,?,?,?,?)";

            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, documento);
            pst.setString(2, nombre);
            pst.setString(3, apellido);
            pst.setString(4, correo);
            pst.setString(5, tipoId);
            pst.setString(6, nacimiento);
            pst.setString(7, usuario);
            pst.setString(8, password);
            pst.setString(9, rol);

            if (pst.executeUpdate() == 1) {
                return true;
            }
        } catch (Exception ex) {
            System.err.println("Otra vez error: " + ex);
        } finally {
            try {
                if (getConexion() != null) {
                    getConexion().close();
                }
                if (pst != null) {
                    pst.close();
                }
            } catch (Exception e) {
                System.err.println("Y otro error " + e);
            }
        }
        return false;
    }
/*
    // Código para probar la inserción de datos.
      public static void main(String[] args) {
        Consultas co = new Consultas();
        System.out.println(co.registrar("5", "Paula", "Acosta", "pacosta@correo.com", "cedula", "2005-05-08", "pacosta", "555555", "paseador"));
    }*/
    public boolean eliminar(String documento){
        PreparedStatement pst = null;
        try {
            String consulta = "delete from persona where identifPersona = ?";

            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, documento);

            if (pst.executeUpdate() == 1) {
                return true;
            }
        } catch (Exception ex) {
            System.err.println("Otra vez error: " + ex);
        } finally {
            try {
                if (getConexion() != null) {
                    getConexion().close();
                }
                if (pst != null) {
                    pst.close();
                }
            } catch (Exception e) {
                System.err.println("Y otro error " + e);
            }
        }
        return false;
    }
    /*
    // Código para probar eliminación de usuario
    public static void main(String[] args) {
        Consultas co = new Consultas();
        System.out.println(co.eliminar("2"));
    }   */
}
