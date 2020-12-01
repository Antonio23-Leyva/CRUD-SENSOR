/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sensores.controlador;

import com.google.gson.Gson;
import com.sensores.modelo.Sensor;
import com.sensores.modeloDAO.SensorDAO;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Luis
 */
public class Controlador extends HttpServlet {

    private final SensorDAO dao = new SensorDAO();
    private List<Sensor> sensores;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String accion = request.getParameter("accion");
        Sensor sensor = new Sensor();
        switch (accion) {
            case "listar":
                sensores = dao.listar();
                request.setAttribute("sensores", sensores);
                request.getRequestDispatcher("tabla.jsp").forward(request, response);
                break;
            case "nuevo":
                request.getRequestDispatcher("nuevo.jsp").forward(request, response);
                break;
            case "agregar":
                int resultado;
                String id = request.getParameter("txtId");
                String descripcion = request.getParameter("txtDescripcion");
                String humedad = request.getParameter("txtHumedad");
                String modelo = request.getParameter("txtModelo");
                String nombre = request.getParameter("txtNombre");
                String temperatura = request.getParameter("txtTemperatura");
                sensor.setId(Integer.parseInt(id));
                sensor.setDescripcion(descripcion);
                sensor.setHumedad(humedad);
                sensor.setModelo(modelo);
                sensor.setNombre(nombre);
                sensor.setTemperatura(temperatura + "°C");
                resultado = dao.add(sensor);
                if (resultado != 0) {
                    request.setAttribute("config", "alert alert-success");
                    request.setAttribute("mensaje", "SE AGREGO CORRECTAMENTE");
                    request.getRequestDispatcher("mensaje.jsp").forward(request, response);
                } else {
                    request.setAttribute("config", "alert alert-danger");
                    request.setAttribute("mensaje", "ERROR AL INTENTAR GUARDAR DATOS EN BD");
                    request.getRequestDispatcher("mensaje.jsp").forward(request, response);

                }
                break;

            case "editar":
                int identificador = Integer.parseInt(request.getParameter("id"));
                Sensor sensox = dao.getId(identificador);
                request.setAttribute("sensor", sensox);
                request.getRequestDispatcher("editar.jsp").forward(request, response);
                break;

            case "Actualizar":
                int result = Integer.parseInt(request.getParameter("txtId"));
                ;
                int operacion = 0;
                //String ide = request.getParameter("txtId");
                String description = request.getParameter("txtDescripcion");
                String humedadd = request.getParameter("txtHumedad");
                String modeloo = request.getParameter("txtModelo");
                String nombree = request.getParameter("txtNombre");
                String temperaturaa = request.getParameter("txtTemperatura");
                sensor = new Sensor(result, nombree, modeloo, description, humedadd, temperaturaa);
                operacion = dao.update(sensor);
                if (operacion != 0) {
                    request.setAttribute("config", "alert alert-success");
                    request.setAttribute("mensaje", "SE ACTUALIZO CORRECTAMENTE");
                    request.getRequestDispatcher("mensaje.jsp").forward(request, response);
                } else {
                    request.setAttribute("config", "alert alert-danger");
                    request.setAttribute("mensaje", "ERROR AL INTENTAR ACTUALIZAR DATOS");
                    request.getRequestDispatcher("mensaje.jsp").forward(request, response);

                }
                request.getRequestDispatcher("Controlador?accion=listar").forward(request, response);
                break;

            case "eliminar":
                int idd = Integer.parseInt(request.getParameter("id"));
                int res = dao.delete(idd);
                if (res != 0) {
                    request.setAttribute("config", "alert alert-success");
                    request.setAttribute("mensaje", "SE ELIMINO CORRECTAMENTE");
                    request.getRequestDispatcher("mensaje.jsp").forward(request, response);
                } else {
                    request.setAttribute("config", "alert alert-danger");
                    request.setAttribute("mensaje", "ERROR AL INTENTAR ELIMINAR DATO");
                    request.getRequestDispatcher("mensaje.jsp").forward(request, response);

                }
                request.getRequestDispatcher("Controlador?accion=listar").forward(request, response);
                break;
            case "sendDates":
                sensores = dao.sendRequeriments();
                String json = new Gson().toJson(sensores);
                request.setAttribute("json", json);
//                request.startAsync();
                request.getRequestDispatcher("SensorSends.jsp").forward(request, response);
                
                /**
                 * List<MyObject> list = new ArrayList<MyObject>(); // add some
                 * objects to the list...
                 *
                 * String json = new Gson().toJson(sensores);
                 * request.setAttribute("sensoress", json);
                 */
                break;    
            default:
                request.getRequestDispatcher("Controlador?accion=listar").forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
