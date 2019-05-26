<%-- 
    Document   : index
    Created on : 12-sep-2018, 18:45:06
    Author     : SENA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Iniciar Sesión</title>
        <style>
            
            body{
                background-color: #eee;
            }
            form{
                
                margin: 10px auto;
                width: 350px;
                height: 250px;
                background: white;
                border-bottom: 4px solid darkcyan;
            }
            form label{
                display: block;
                color: white;
                background: #FE0000;
                padding: 12px 0;
                text-align: center;
                font-size: 30px;
                font-weight: bold;
                font-family: italic;
            }
            form input[type="text"],input[type="password"]{
                width: 230px;
                padding: 15px 20px;
                font-weight: bold;
                font-family: italic;
                margin-left: 18px;
                margin-bottom: 10px;
                border: 1px solid #1D40B8;
                text-transform: capitalize;
                -moz-transition: all 0.5s;
            }
            form input[type="text"]{
                background: url("icons/user.png") 15px no-repeat;
            }
            form input[type="password"]{
                background: url("icons/pass.png") 15px no-repeat;
            }
            form input[type="text"]:focus,input[type="password"]:focus{
                border: 1px solid #333;
                background: none;
                width: 290px;
                padding: 12px 10px;
            }
            form input[type="submit"]{
                background: #1D40B8;
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
            
        </style>
    </head>
    <body>
    <center><h1>GROOMINGDOG</h1></center>
        <form action="Iniciar" method="post">
            <label>Inicio Sesión</label>
            <input type="text" name="usuario" placeholder="Digite su usuario" required><br>
            <input type="password" name="password" placeholder="Digite su contraseña" required><br>
            <input type="submit" value="Enviar">
        </form>
        <br>
        
    <center> <h3>Si no tienes cuenta... <a href="registro.jsp"> regístrate</a></h3></center>
    </body>
</html>
