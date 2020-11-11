package com.sensores.modelo;


import javax.persistence.*;

public class Sensor {
    @Id
    private int id;
    private String nombre;
    private String modelo;
    private String descripcion;
    private String humedad;
    private String temperatura;


    public Sensor(){

    }

    public Sensor(int id, String nombre, String modelo, String descripcion, String humedad, String temperatura) {
        super();
        this.id = id;
        this.nombre = nombre;
        this.modelo = modelo;
        this.descripcion = descripcion;
        this.humedad = humedad;
        this.temperatura = temperatura;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId() {
        return id;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getNombre() {
        return nombre;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getModelo() {
        return modelo;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setHumedad(String humedad) {
        this.humedad = humedad;
    }

    public String getHumedad() {
        return humedad;
    }

    public void setTemperatura(String temperatura) {
        this.temperatura = temperatura;
    }

    public String getTemperatura() {
        return temperatura;
    }

    @Override
    public String toString() {
        return "Sensor{" + "id=" + id + ", nombre=" + nombre + ", modelo=" + modelo + ", descripcion=" + descripcion + ", humedad=" + humedad + ", temperatura=" + temperatura + '}';
    }
 
    
    
}
