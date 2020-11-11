<%-- 
    Document   : editar
    Author     : Luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Sensor</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
              integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

    </head>
    <body>
        <div class="text-center"></div>
        <div class="container mt-4">
            <div class="col-sm-6">
                <form action="Controlador" method="POST">
                    <div class="card">
                        <div class="card-header">
                            <h3>Editar sensor</h3>
                        </div>

                        <div class="card-body">
                            <div class="form-group">

                                <label>Id</label>
                                <input name="txtId" value="${sensor.id}" readonly="" type="text" class="form-control" />

                                <label>Descripcion</label>
                                <input name="txtDescripcion" value="${sensor.descripcion}" type="text" class="form-control" />

                                <label>Humedad</label>
                                <input name="txtHumedad" value="${sensor.humedad}" type="text" class="form-control" />

                                <label>Modelo</label>
                                <input name="txtModelo" value="${sensor.modelo}" type="text" class="form-control" />

                                <label>Nombre</label>
                                <input name="txtNombre" value="${sensor.nombre}" type="text" class="form-control" />

                                <label>Temperatura</label>
                                <input name="txtTemperatura" value="${sensor.temperatura}" type="text" class="form-control" />
                            </div>
                        </div>
                        <div class="card-footer">
                            <input type="submit" value="Actualizar" name="accion" class="btn btn-success">
                            <a href="Controlador?accion=listar" type="button" value="Atras" class="btn btn-secondary">Atras</a>
                        </div>
                    </div>
                </form>

            </div>
        </div>
    </body>

</html>

