<%-- 
    Document   : nuevo
    Author     : Luis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">

    <head>
        <meta charset="UTF-8">
        <title>Nuevo Sensor</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
              integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    </head>

    <body>
        <div class="text-center"></div>
        <div class="container mt-4">
            <div class="col-sm-6">
                <form action="Controlador?accion=agregar" method="POST">
                    <div class="card">
                        <div class="card-header">
                            <h3>Agregar nuevo sensor</h3>
                        </div>

                        <div class="card-body">
                            <div class="form-group">

                                <label>Id</label>
                                <input name="txtId" type="text" class="form-control" />

                                <label>Descripcion</label>
                                <input name="txtDescripcion" type="text" class="form-control" />

                                <label>Humedad</label>
                                <input name="txtHumedad" type="text" class="form-control" />

                                <label>Modelo</label>
                                <input name="txtModelo" type="text" class="form-control" />

                                <label>Nombre</label>
                                <input name="txtNombre" type="text" class="form-control" />

                                <label>Temperatura</label>
                                <input name="txtTemperatura" type="text" class="form-control" />
                            </div>
                        </div>
                        <div class="card-footer">
                            <button type="submit" class="btn btn-success">Guardar</button>
                            <a href="http://localhost:8080/Sistema_de_Monitoreo_de_Invernadero_Sensores/" type="button" class="btn btn-secondary">Atras</a>
                        </div>
                    </div>
                </form>

            </div>
        </div>
    </body>

</html>
