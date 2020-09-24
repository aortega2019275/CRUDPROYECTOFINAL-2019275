<%-- 
    Document   : edit
    Created on : 1/09/2020, 04:10:56 PM
    Author     : PABLO ALEMAN
--%>

<%@page import="ModeloDAO.PersonaDAO"%>
<%@page import="model.Persona"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
        <%
          PersonaDAO nuevaPersonaDao = new PersonaDAO();
          int codPersona = Integer.parseInt((String)request.getAttribute("codPer"));
          Persona nuevaPersona = (Persona)nuevaPersonaDao.list(codPersona);
        
        %>
        
        <h1>Modificar persona</h1>
        <form action="Controlador">
            DPI:<br>
            <input type="text" name="txtDPI" value="<%= nuevaPersona.getDPI()%>" required><br>
            Nombre:<br>
             <input type="text" name="txtNombre" value="<%= nuevaPersona.getNombrePersona() %>" required><br>
            <input type="hidden" name="txtCodigoPersona" value="<%= nuevaPersona.getCodigoPersona() %>" required><br>
            <input type="submit" name="accion" value="Actualizar"><br><br>
        </form>
            </div>
    </body>
</html>
