<%-- 
    Document   : edit
    Created on : 1/09/2020, 04:10:56 PM
    Author     : PABLO ALEMAN
--%>

<%@page import="ModeloDAO.PersonaDAO"%>
<%@page import="model.Persona"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="h-100">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body class="container h-100" style="background-image: url('https://www.xtrafondos.com/wallpapers/montanas-minimalista-arte-low-poly-3354.jpg');">
        <div class="text-center container h-100">
        <div class="row justify-content-center h-100">
        <div class="col-sm-8 align-self-center text-center font-weight-light " >
        <div>
        <%
          PersonaDAO nuevaPersonaDao = new PersonaDAO();
          int codPersona = Integer.parseInt((String)request.getAttribute("codPer"));
          Persona nuevaPersona = (Persona)nuevaPersonaDao.list(codPersona);
        
        %>
         <div class="card shadow "  >
         <div class="card-body" style="opacity: 1"  >  
        <h1 class="font-weight-light">Modificar persona</h1>
        <form action="Controlador">
            DPI:<br>
            <input style="border-radius: 1rem;" class="font-weight-light text-center" type="text" name="txtDPI" value="<%= nuevaPersona.getDPI()%>" required><br>

            Nombre:<br>
             <input style="border-radius: 1rem;"  class="font-weight-light text-center" type="text" name="txtNombre" value="<%= nuevaPersona.getNombrePersona() %>" required><br>
            <input type="hidden" name="txtCodigoPersona" value="<%= nuevaPersona.getCodigoPersona() %>" required><br>
            <input class="btn btn-outline-success waves-effect " type="submit" name="accion" value="Actualizar"><br><br>
        </form>
            </div>
            </div>
            </div>
            </div>
            
    </body>
</html>
