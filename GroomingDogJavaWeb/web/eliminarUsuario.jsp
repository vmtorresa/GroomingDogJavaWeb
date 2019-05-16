<%-- 
    Document   : eliminaUsuario
    Created on : 14/05/2019, 03:07:42 PM
    Author     : OSP2019
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center><h1>GROOMINGDOG</h1></center>
        <form action="eliminar" method="post">
            <label>Eliminar usuario </label>
            <input type="text" name="identifPersona" placeholder="Digite identificación" required><br>
            <input type="submit" value="Eliminar">
        </form>
        <br>
        
    <center> <h3>Buscar... <a href="registro.jsp"> regístrate</a></h3></center>
    </body>
</html>
