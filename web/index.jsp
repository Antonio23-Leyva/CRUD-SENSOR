<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sistema SMI</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
              integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" href="css/menu.css">
    </head>
    <body>
        <header class="masthead">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-7 py-5">
                        <h1 class="mb-4">Proyecto que brinda una relación de los índices de humedad y temperatura mediante
                            sensores optimos para ello</h1>
                        <h2 class="m-0">Construido con Java, HTML, CSS y JavaScript</h2>
                    </div>

                    <div class="col-lg-5">
                        <div class="text-center">
                            <h4 class="mb-4">Menu Sensores</h4>
                        </div>
                        <div class="py-5 px-4 masthead-cards">
                            <div class="d-flex">
                                <a href="http://localhost:8080/Sistema_de_Monitoreo_de_Invernadero_Sensores/Controlador?accion=nuevo" class="w-50 pr-3 pb-4">
                                    <div class="card border-0 border-bottom-red shadow-lg shadow-hover">
                                        <div class="card-body text-center">
                                            <div class="text-center">
                                                <i class="far fa-plus-square fa-4x my-2"></i>
                                                <!-- Arreglar icono no se observa -->
                                            </div>
                                            Agregar
                                        </div>
                                    </div>
                                </a>
                                <a href="http://localhost:8080/Sistema_de_Monitoreo_de_Invernadero_Sensores/Controlador?accion=listar"
                                   class="w-50 pl-3 pb-4">
                                    <div class="card border-0 border-bottom-blue shadow-lg shadow-hover">
                                        <div class="card-body text-center">
                                            <div class="text-center">
                                                <i class="fa fa-th fa-4x my-2"></i>
                                            </div>
                                            Consultar Sensores
                                        </div>
                                    </div>
                                </a>
                            </div>

                            <div class="d-flex">
                                <a href="#" class="w-50 pr-3">
                                    <div class="card border-0 border-bottom-yellow shadow-lg shadow-hover">
                                        <div class="card-body text-center">
                                            <div class="text-center">
                                                <i class="fa fa-4x fa-code my-2"></i>
                                            </div>
                                            Reportes Graficos
                                        </div>
                                    </div>
                                </a>
                                <a href="#" class="w-50 pl-3">
                                    <div class="card border-0 border-bottom-green shadow-lg shadow-hover">
                                        <div class="card-body text-center">
                                            <div class="text-center">
                                                <i class="fa fa-4x fa-list my-2"></i>
                                            </div>
                                            Guides
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
    </body>
</html>
