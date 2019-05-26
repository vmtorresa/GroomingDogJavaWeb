<%-- 
    Document   : usuarioNick
    Created on : 19-may-2019, 3:00:51
    Author     : MANUEL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registrarme</title>
        <style>
            
            
            body{
                background-color: #eee;
            }
            form{
                
                margin: 10px auto;
                width: 350px;
                height: 250px;
            }
            form label{
                display: block;
                color: white;
                background: #FE0000;
                padding: 6px 0;
                text-align: center;
                font-size: 20px;
                font-weight: bold;
                font-family: italic;
            }
            form input[type="text"],input[type="password"]{
                width: 230px;
                padding: 6px 40px;
                font-weight: bold;
                font-family: italic;
                margin-left: 18px;
                margin-bottom: 10px;
                border: 1px solid #1dabb8;
                text-transform: arial;
                -moz-transition: all 0.5s;
            }
            form input[type="text"]:focus,input[type="password"]:focus{
                border: 1px solid #333;
                background: none;
                width: 290px;
                padding: 12px 10px;
            }
            form input[type="submit"]{
                background: #1dabb8;
                color: white;
                display: inline-block;
                margin-left: 18px;
                margin-bottom: 10px;
                padding: 8px 20px;
                border: none;
                font-weight: bold;
            }
            form input[type="submit"]:hover{
                background: darkorange;
                cursor: pointer;
            }
            form input[name="usuario"]{
                background: url("icons/user.png") 15px no-repeat;
            }
            form input[type="password"]{
                background: url("icons/pass.png") 15px no-repeat;
            }
        </style>
    </head>
    <body>
    <center><h1>¿Va a quedar activo?</h1></center>
        <form action="UsuarActiva" method="post">
            
            <br>
            <center>
            <select type="text" name="UsuarioActivoInactivo">
                <option value="Cliente">NO</option>
                <option value="Administrador">SI</option>
            </select>
            </center>
            <br>
            <label>Nickname o usuario</label>
            <input type="text" name="nickUsuario" placeholder="Digite su nickname o usuario" style="text-align: center"><br>
            
            <label>Contraseña</label>
            <input type="password" name="passwordUsuario" placeholder="Digite su contraseña" style="text-align: center"><br>
            
            <!-- 
            Aquí se obtiene la última inserción de idRolPersona e identifPersona para enviarle los 4 datos completos al servlet UsuarioActivaNick
            Esta funcionalidad es apta para el Administrador.
            -->
            <select type="text" name="SeleccioneUno">
            </select>
            
            <label></label>
            <input type="text" name="identifPersona" placeholder="Digite número de documento" style="text-align: center"><br>
            
            <input type="submit" value="Enviar">
            
            <center> <h3> <a href="registrarMascota-POR-CONSTRUIR.jsp">Registrar mascota</a></h3></center>
            <center> <h3><a href="index.jsp"> Inicio de sesión</a></h3></center>
           
            </form>
    </body>
</html>
