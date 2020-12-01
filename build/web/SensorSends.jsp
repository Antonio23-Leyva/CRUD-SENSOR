<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib  prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"  %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
              integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    </head>
    <body>
        <div id="container mt-4">
            <h2 class="text-center">Sensores Json Enviados</h2>

            <table class="table table-dark">
                <thead >  
                    <tr class="bg-danger">
                        <th id="1"  scope="col">id</th>
                        <th id="2"  scope="col">marca</th>
                        <th id="3"  scope="col">humedad</th>
                        <th id="4"  scope="col">temperatura</th>
                    </tr>
                </thead>
            </table>
        </div>

        <script>
            /**
             * Metodo que imprime los datos de un objeto Json
             * Enviado por metodo post
             * */
            var data = {
                sensores:${json}
            };
            var jsonPretty = JSON.stringify(data, null, 2);

            const table = document.querySelector('table');

            for (const sensor of data.sensores) {
                const row = table.insertRow();
                for (const value of Object.values(sensor)) {
                    const cell = row.insertCell();
                    cell.innerHTML = value;
                }
            }

            var idArr = [];

            var trs = document.getElementsByTagName("th");
            var mca = document.getElementById("2");
            for (var i = 0; i < trs.length; i++) // for para ids
            {
             for (var m = 0; m < mca.length; m++) {
                var x = idArr.push(trs[i].id); 
                var m = idArr.push(mca[m].marca)
              
                }
             
            }
            

        </script>
        <style>
            table tr {
                text-align: center;  
            }

        </style>
        <a href="http://localhost:8080/Sistema_de_Monitoreo_de_Invernadero_Sensores/Controlador?accion=listar" type="button" class="btn btn-secondary">Atras</a>      

    </body>
</html>
