
<%@page import="Modelo.Blog"%>
<%@page import="ModeloDAO.BlogDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <div class="col-lg-6">
              <%
              BlogDAO dao=new BlogDAO();
              int id=Integer.parseInt((String)request.getAttribute("idper"));
              Blog p=(Blog)dao.list(id);
          %>
            <h1>Modificar blog</h1>
            <form action="Controlador">
                Autor:<br>
                <input class="form-control" type="text" name="txtautor" value="<%= p.getAutor()%>"><br>
                  Titulo:
               <input class="form-control" type="text" name="txttitulo" value="<%= p.getTitulo()%>"><br>
                Blog: <br>
                <input class="form-control" type="text" name="txtdescripcion" value="<%= p.getDescripcion()%>"><br>
             
               
                <input type="hidden" name="txtid" value="<%= p.getId()%>">
                <input class="btn btn-primary" type="submit" name="accion" value="Actualizar"> 
                <a href="Controlador?accion=listar">Regresar</a>
            </form>
          </div>
          
        </div>
    </body>
</html>
