/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sensores.modeloDAO;

import com.sensores.modelo.Sensor;
import java.util.List;

/**
 *
 * @author Luis
 */
public interface InterfazSensorDAO {
    public List<Sensor> listar();
    public Sensor getId(int id);
    public int add(Sensor s);
    public int update(Sensor s);
    public int delete(int id);
    public List<Sensor> sendRequeriments();
    
}
