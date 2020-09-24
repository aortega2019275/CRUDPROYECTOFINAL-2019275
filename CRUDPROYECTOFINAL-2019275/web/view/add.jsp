<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="h-100">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Pagina Agregar</title>
    </head>
     <body class="container h-100" style="background-image: url('https://www.xtrafondos.com/wallpapers/montanas-minimalista-arte-low-poly-3354.jpg');">
        <div class="text-center container h-100">
            <div class="row justify-content-center h-100">
                <div class="col-sm-8 align-self-center text-center font-weight-light " >
                    <div class="card shadow "  >
                        <div class="card-body" style="opacity: 1"  > 
                            <div class="container">
                                <h1>Agregar Registro</h1>
                                <form action="Controlador">
                                DPI:<br>
                                <input style="border-radius: 1rem; " type="text" name="txtDPI" placeholder="Ingrese su DPI" required> <br><br>
                                Nombres:<br>
                                <input style="border-radius: 1rem;" type="text" name="txtNombre" placeholder="Ingrese su Nombre" required> <br><br>
                                <input class="btn btn-outline-success waves-effect " style="border-radius: 2rem;" type="submit" name="accion" value="Agregar" > <br>
                            </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> 
    </body>

</html>