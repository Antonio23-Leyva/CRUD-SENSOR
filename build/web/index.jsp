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

    <body>
        <div class="container mt-4">
            <a href="Controlador?accion=listar" class="btn btn-warning">Listar</a>
            <a href="Controlador?accion=nuevo" type="button" class="btn btn-secondary">Nuevo</a>      
            <hr>
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
        </div>

    </body>

</html>