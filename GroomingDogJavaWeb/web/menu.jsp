<%-- 
    Document   : menu
    Created on : 12-sep-2018, 20:38:37
    Author     : SENA
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession objetosesion = request.getSession(false);
    String usuario = (String) objetosesion.getAttribute("usuario");
    if (usuario.equals("")) {

        response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="0" Width="1000" height="50" align="center">
            <tr bgcolor="#A9F5F2">
                <th><a href="index.jsp">Inicio GroomingDog</a></th>
                <th><a href="registro.jsp">Registrar usuario</a></th>
                <th><a href="index.jsp">Cerrar sesión</a></th>
                <th width="200">Bienvenid@ <% out.println(usuario);%></th>
                <th><a href="eliminarUsuario.jsp">Eliminar usuario</a></th>
                <th><a href="ConsultaMas.jsp">Cons. masiva</a></th>


                <th><label><q> <p align="center"><span class="style14">Servicio para tu mascota:</span>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="tipo"><option value=""></option>
                                    <option value="Baño.jsp">BAÑO CANINO</option><option value="Guarderia">GUARDERIA CANINA</option><option value="paseo">PASEO</option><option value="Desparacitacion">DESPARACITACION</option></select></select></select>
                            </p></q></label></th>               
                <th><label><q><p align="center"><span class="style14">Productos:</span>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="tipo"><option value=""></option>
                                    <option value="Baño">JUGUETES</option><option value="Guarderia">COMIDA</option><option value="paseo">ACCESORIOS</option><option value="Desparacitacion">OTROS</option></select></select></select>
                            </p></q></label></th>                        
            <li><th><label><q><p align="center"><span class="style14">Historial de servicios:</span>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="tipo"><option value=""></option>
                                <option value="Baño">INDIVIDUAL</option><option value="Guarderia">GUARDERIA CANINA</option><option value="paseo">PASEO</option><option value="Desparacitacion">DESPARACITACION</option></select></select></select>
                        </p></q></label></th> </li>                     
        <th><label><q>PQRS</q></label></th>        


    </tr>
</table>
<center><h1>Hola <font color="red"><% out.println(usuario);%></font>bienvenido al sistema de GroominDog</h1></center>
</body>
</html>
