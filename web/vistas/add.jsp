<%-- 
    Document   : add
    Created on : 30-ago-2018, 19:58:16
    Author     : Joel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-6">
                <h1>Agregar Blog</h1>
                <form action="Controlador">
                    Autor:<br>                
                    <input class="form-control" type="text" name="txtautor"><br>
                     Titulo
                    <input class="form-control" type="text" name="txttitulo"><br>
                    Blog: <br>
                   <input class="form-control" type="text" name="txtdescripcion"><br>
                  
                    <input class="btn btn-success btn-lg" type="submit" name="accion" value="Agregar">
                    <a href="Controlador?accion=listar">Regresar</a>
                </form>
            </div>

        </div>
    </body>
</html>