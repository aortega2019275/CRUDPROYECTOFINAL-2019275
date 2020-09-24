</html><%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
        <title>Pagina Agregar</title>
    </head>
    <body>
        <div class="container">
           
           <h1>Agregar Registro</h1>
           <form action="Controlador">
               DPI:<br>
               <input type="text" name="txtDPI" placeholder="Ingrese su DPI" required> <br><br>
               Nombres:<br>
               <input type="text" name="txtNombre" placeholder="Ingrese su Nombre" required> <br><br>
               <input type="submit" name="accion" value="Agregar" > <br>
           </form>
       

        </div>
    </body>

