<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib  prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Sensores</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
              integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    </head>
        <div class="container mt-4">
            <div class="text-center">
                <h3>Sensores Registrados</h3>
            </div>
            <div class="float-right">
                <a href="Controlador?accion=sendDates" type="button" class="btn btn-secondary">Enviar Sensores</a>      
                <hr>
            </div> 

            <table class="table table-dark">
                <thead class="thead-light">
                    <tr>
                        <th>ID</th>
                        <th>DESCRIPCION</th>
                        <th>HUMEDAD</th>
                        <th>MODELO</th>
                        <th>NOMBRE</th>
                        <th>TEMPERATURA</th>
                        <th>ACCIONES</th>

                    </tr>
                    <c:forEach var="sensor" items="${sensores}">
                        <tr>
                            <td >${sensor.id}</td>
                            <td >${sensor.descripcion}</td>
                            <td >${sensor.humedad}</td>
                            <td >${sensor.modelo}</td>
                            <td >${sensor.nombre}</td>
                            <td >${sensor.temperatura}</td>
                            <td>
                                <a href="Controlador?accion=editar&id=${sensor.id}" class="btn btn-warning">Editar</a>
                                <a href="Controlador?accion=eliminar&id=${sensor.id}" class="btn btn-danger">Eliminar</a>
                            </td>

                        </tr>
                    </c:forEach>
                </thead>   
            </table>
            <a href="http://localhost:8080/Sistema_de_Monitoreo_de_Invernadero_Sensores/" type="button" class="btn btn-secondary">Atras</a>      

        </div>
        <style>
            body {
                background-color: #1F618D;
            }
            .btn btn-outline-success {
                background-color: rgb(52, 58, 64);

            }
            .text-center {
                font-family: monospace;
                color: white;
                text-shadow:2px 2px black;
            }
        </style>
    </body>

</html>