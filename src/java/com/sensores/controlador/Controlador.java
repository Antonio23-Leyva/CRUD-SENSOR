/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sensores.controlador;

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
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        String accion = request.getParameter("accion");
        Sensor sensor = new Sensor();
        List<Sensor> sensores;
        switch (accion){
            case "listar":
                sensores = dao.listar();
                request.setAttribute("sensores", sensores);
                request.getRequestDispatcher("index.jsp").forward(request, response);
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
                sensor.setTemperatura(temperatura+"°C");
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
