<%@page import="ModeloDAO.PersonaDAO"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="model.Persona"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="h-100">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Lista de Registros</title>
    </head>
    <body class="h-100" style="background-image: url('https://www.xtrafondos.com/wallpapers/montanas-minimalista-arte-low-poly-3354.jpg');">
        <div class="text-center container h-100">
            <div class="row justify-content-center h-100">
                <div class="col-sm-20 align-self-center text-center">
                    <div>
                        <h1 class="font-weight-light text-white"> LISTA DE PERSONAS</h1>
                        <a class="btn btn-outline-success waves-effect" style="border-radius: 2rem;" href="Controlador?accion=add">Agregar Registro </a>
                        <br><br>
                        <table class="table table-dark table-striped ">
                            <thead class="thead-dark"> 
                                <tr class="font-weight-light">
                                    <td> <strong>Codigo Persona</strong> </td>
                                    <td>  <strong>DPI</strong></td>
                                    <td>  <strong>Nombres</strong></td>
                                    <td>  <strong>Acciones</strong></td>
                                </tr>
                            </thead>
                <%
                            PersonaDAO dao = new PersonaDAO();
                            List<Persona> listarPersona = dao.listar();
                            Iterator<Persona> iterator= listarPersona.iterator();
                            Persona per = null;
                            while(iterator.hasNext()){
                                per = iterator.next();
                            %>
                            <tbody>
                                <tr class="font-weight-light">
                                    <td><%= per.getCodigoPersona()%></td>
                                    <td><%= per.getDPI()%></td>
                                    <td><%= per.getNombrePersona()%></td>
                                    <td>
                                        <a  class="btn btn-outline-info waves-effect" href="Controlador?accion=editar&codigoPersona=<%= per.getCodigoPersona() %>"> Editar</a>
                                        <a  class="btn btn-outline-danger waves-effect" href="Controlador?accion=eliminar&codigoPersona=<%= per.getCodigoPersona() %>">Eliminar</a>
                                    </td>
                                </tr>
                    <%}%>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>         
    </body>
</html>

