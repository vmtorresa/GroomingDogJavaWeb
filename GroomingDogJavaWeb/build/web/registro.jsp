<%-- 
    Document   : registro
    Created on : 12-sep-2018, 20:52:05
    Author     : SENA
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
    <center><h1>Formulario de Registro</h1></center>
        <form action="usuario" method="post">
            <label>Numero de documento</label>
            <input type="text" name="identifPersona" placeholder="Digite número de documento" style="text-align: center"><br>
            <label>Nombres</label>
            <input type="text" name="nombPersona" placeholder="Digite sus nombres" style="text-align: center"><br>
            <label>Apellidos</label>
            <input type="text" name="apellPersona" placeholder="Digite sus apellidos" style="text-align: center"><br>
            <label>Correo electronico</label>
            <input type="text" name="emailPersona" placeholder="Digite su correo electrónico" style="text-align: center"><br>
            <label>Tipo de documento</label>
            <input type="text" name="tipoIdentifPerson" placeholder="Digite el tipo de documento" style="text-align: center"><br>
            <label>Fecha de nacimiento</label>
            <input type="text" name="fechaNacimPers" placeholder="Digite su fecha de nacimiento" style="text-align: center"><br>
            <label>Dirección de domicilio</label>
            <input type="text" name="domicilioPersona" placeholder="Digite dirección de domicilio" style="text-align: center"><br>
            <label>Teléfono</label>
            <input type="text" name="telefonoPersona" placeholder="Digite su teléfono" style="text-align: center"><br>
            
           <input type="submit" value="Registrarme">
           
           <center> <h3> <a href="rolPersona.jsp">Seleccione rol</a></h3></center>
           <center> <h3><a href="index.jsp"> Inicio de sesión</a></h3></center>
           
           </form>
    </body>
</html>
