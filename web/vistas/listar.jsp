<style>
    body{
        background-color: blanchedalmond;
    }
</style>
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Blog"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.BlogDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
 
        <title>JSP Page</title>
    </head>
    <body>
          <div >
            <h1 class="bad">BLOG DE SALUD</h1>
            <a class="btn btn-success" href="Controlador?accion=add">Agregar Nuevo</a>
            <link href="../css/estilos.css" rel="stylesheet" type="text/css"/>
            <br>
            <br>
            <tead>
                <thead>
                    <tr>
                        
                        <th class="text-center"></th>
                        <th class="text-center"></th>
                <th class="text-center"></th>
                <th class="text-center"></th>
                    </tr>
                </thead>
                <%
                    BlogDAO dao=new BlogDAO();
                    List<Blog>list=dao.listar();
                    Iterator<Blog>iter=list.iterator();
                   Blog per=null;
                    while(iter.hasNext()){
                        per=iter.next();
                    
                %>
                <tbody>
                    <tr>     
                         <h1> <td class="text-center"><%= per.getTitulo()%></td></h1>
                        <td><%= per.getDescripcion()%></td>
                        <h4>Autor: <td class="text-center"><%= per.getAutor()%></td></h4>
                            <a class="isquierda" href="Controlador?accion=editar&id=<%= per.getId()%>">Editar</a>
                            <a class="isquierda" href="Controlador?accion=eliminar&id=<%= per.getId()%>">Eliminar</a><br>
                            <br><br><br>
                        </td>
                      
                    </tr>
                    <%}%>
                </tbody>
  

        </div>
    </body>
</html>
