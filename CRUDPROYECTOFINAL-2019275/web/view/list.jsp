<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="model.Persona"%>
<%@page import="modelDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Registros</title>
    </head>
    <body>
        <div class="container">
            <h1> Datos en la entidad Persona</h1>
            <a> href="Controlador?accion=add">Agregar Registro <a/>
                <br><br>
            <table>
                <thead>  
                    <tr>
                        <td> Codigo Persona </td>
                        <td>  <strong>DPI</strong></td>
                        <td>  <strong>Nombres</strong></td>
                        <td>  <strong>Acciones</strong></td>
                    </tr
                </thead
                <%
                            PersonaDAO dao = new PersonaDAO();
                            List<Persona> listarPersona = dao.listar();
                            Iterator<Persona> iterator= listarPersona.iterator();
                            Persona per = null;
                            while(iterator.hasNext()){
                                per = iterator.next();
                            %>
                <tbody>
                    <tr>
                        <td><%= per.getCodPersona()%></td>
                        <td><%= per.getDPI()%></td>
                        <td><%= per.getNombrePersona()%></td>
                        <td>
                            <a>  href="Controlador?accion=editar&codPersona=<%=per.getCodPersona()%>">Editar</a> 
                            <a> href="Controlador?accion=eliminar&codPersona=<%=per.getCodPersona()%>">Delete</a>
                            
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </body>
</html>

