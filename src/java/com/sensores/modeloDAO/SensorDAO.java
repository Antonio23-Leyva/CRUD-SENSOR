/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sensores.modeloDAO;

import com.sensores.config.Conexion;
import com.sensores.modelo.Sensor;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SensorDAO implements InterfazSensorDAO {

    @Override
    public List<Sensor> listar() {
        List<Sensor> sensores = new ArrayList<>();
        // Conexion con = new Conexion();

        String sql = "select * from sensores.sensor";

        try {
            PreparedStatement ps = Conexion.Conectar().prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Sensor s = new Sensor();
                s.setId((char) rs.getInt(1));
                s.setDescripcion(rs.getString(2));
                s.setHumedad(rs.getString(3));
                s.setModelo(rs.getString(4));
                s.setNombre(rs.getString(5));
                s.setTemperatura(rs.getString(6));
                sensores.add(s);
            }
        } catch (Exception e) {
            System.out.println("Error en sensorDAO" + e);
        }

        return sensores;
    }

    @Override
    public Sensor getId(int id) {
        String sql = "select * from sensores.sensor where id = " + id;
        Sensor sensor = new Sensor();
        try {
            PreparedStatement ps = Conexion.Conectar().prepareCall(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {

                sensor.setId((char) rs.getInt(1));
                sensor.setDescripcion(rs.getString(2));
                sensor.setHumedad(rs.getString(3));
                sensor.setModelo(rs.getString(4));
                sensor.setNombre(rs.getString(5));
                sensor.setTemperatura(rs.getString(6));
            }
        } catch (Exception e) {
            System.out.println("Error en sensorDAO" + e);
        }
        return sensor;
    }

    @Override
    public int add(Sensor s) {
        int resultado = 0;
        String sql = "insert into sensores.sensor(id,descripcion,humedad,modelo,nombre,temperatura)values(?,?,?,?,?,?)";
        try {
            PreparedStatement ps = Conexion.Conectar().prepareCall(sql);
            ps.setString(1,String.valueOf(s.getId()));
            ps.setString(2,s.getDescripcion());
            ps.setString(3,s.getHumedad());
            ps.setString(4,s.getModelo());
            ps.setString(5,s.getNombre());
            ps.setString(6,s.getTemperatura());
            resultado = ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Error en agregar" + e);
        }
        return resultado;

    }

    @Override
    public int update(Sensor s) {
        int resultado = 0;
        String sql = "update sensores.sensor set id=?,descripcion=?,humedad=?,modelo=?,nombre=?,temperatura=? where id=?)values(?,?,?,?,?,?)";
        try {
            PreparedStatement ps = Conexion.Conectar().prepareCall(sql);
            resultado = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error en agregar" + e);
        }
        return resultado;

    }

    @Override
    public int delete(int id) {
        int resultado = 0;
        String sql = "delete from sensores.sensor where id = " + id;
        try {
            PreparedStatement ps = Conexion.Conectar().prepareCall(sql);
            resultado = ps.executeUpdate();

        } catch (Exception e) {
            System.out.println("Erro en eliminar" + e);
        }
        return resultado;

    }

}