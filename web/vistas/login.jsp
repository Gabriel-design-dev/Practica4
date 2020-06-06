<%-- 
    Document   : index
    Created on : 05-jun-2020, 20:26:17
    Author     : GABRIEL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/estilos.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <form action="Controlador">
            <h1>BIEVENIDOS AL SISTEMA DE LOGIN</h1>
            <div>
                <label>Nombres</label>
                <input type="text" name="textusuario" placeholder="Ingrese El Nombre">
                
            </div>
            <div>
                <label>Contraseña</label>
                <input type=type name="txtcontraseña" placeholder="Ingrese La Contraseña">
                
            </div>
            <input type="submit" type="submit" name="accion" value="Ingresar">
            
                
        </form>
       
    </body>
</html>
