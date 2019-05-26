package Model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Consultas extends Conexion {

    public boolean autenticacion(String estado, String usuario, String password) {
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            String consulta = "select*from usuario where estadoUsuario = ? and nickUsuario = ? and passwordUsuario = ?";
            pst = getConexion().prepareStatement(consulta);
            if (estado == "SI") {
                pst.setString(1, estado);
                pst.setString(2, usuario);
                pst.setString(3, password);
                rs = pst.executeQuery();
            }
           
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
/*
    // Main utilizado para verificar la conexion a la BD y la existencia de usuario en MySQL
     public static void main(String[] args) {
        Consultas co = new Consultas();
        System.out.println(co.autenticacion("SI", "lolo", "lolo123"));
    } */
     
    public boolean registrar(String documento, String nombre, String apellido, String correo, String tipoId, String nacimiento, String domicilioPersona, String telefonoPersona) {
        PreparedStatement pst = null;
        try {
            String consulta = "insert into persona (identifPersona, nombPersona, apellPersona, emailPersona, tipoIdentifPerson, FechaNacimPers, domicilioPersona, telefonoPersona)"
                    + "" + "values (?,?,?,?,?,?,?,?)";

            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, documento);
            pst.setString(2, nombre);
            pst.setString(3, apellido);
            pst.setString(4, correo);
            pst.setString(5, tipoId);
            pst.setString(6, nacimiento);
            pst.setString(7, domicilioPersona);
            pst.setString(8, telefonoPersona);

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
        System.out.println(co.registrar("5", "Paula", "Acosta", "pacosta@correo.com", "cedula", "2005-05-08", "Carrera 11 calle 12", "555555"));
    }*/

    public boolean inactivar(String documento) {
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
        System.out.println(co.inactivar("2"));
    }   */

    public boolean rolPersona(String rol) {
        PreparedStatement pst = null;
        try {
            String consulta = "insert into rolPersona (nombreRolPersona)"
                    + "" + "values (?)";

            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, rol);

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
    // Código para probar la inserción de rolPersona.
    public static void main(String[] args) {
        Consultas co = new Consultas();
        System.out.println(co.rolPersona("Cliente"));
    } */

    public boolean UsuarioActivaNick(String estadoUsuario, String nickUsuario, String password, String fkRolPersona, String fkPersonaId) {
        PreparedStatement pst = null;
        try {
/*
            String consulta = "insert into usuario (idUsuario, estadoUsuario, nickUsuario, passwordUsuario, rolPersona_idrolPersona, persona_identifPersona) values (?,?,?,?,?,?);";

            pst = getConexion().prepareStatement(consulta);
            
            pst.setString(1, "0");
            pst.setString(2, estadoUsuario);
            pst.setString(3, nickUsuario);
            pst.setString(4, password);
            pst.setString(5, fkRolPersona);
            pst.setString(6, fkPersonaId);
*/
            String consulta = "insert into usuario (estadoUsuario, nickUsuario, passwordUsuario, rolPersona_idrolPersona, persona_identifPersona) values (?,?,?,?,?);";

            pst = getConexion().prepareStatement(consulta);
            
            pst.setString(1, estadoUsuario);
            pst.setString(2, nickUsuario);
            pst.setString(3, password);
            pst.setString(4, fkRolPersona);
            pst.setString(5, fkPersonaId);
            if (pst.executeUpdate() == 1) {
                return true;
            }
        } catch (Exception ex) {
            System.err.println("Error al insertar: " + ex);
        } finally {
            try {
                if (getConexion() != null) {
                    getConexion().close();
                }
            } catch (Exception e) {
                System.err.println("Y otro error " + e);
            }
        }
        return false;
    }
       /* 
    // Código para probar la si activa un usuario
    public static void main(String[] args) {
        Consultas co = new Consultas();
        
        System.out.println(co.activarInactivarUsuario("NO", "pcaceres", "3333", "1", "1"));
    }   */

}
