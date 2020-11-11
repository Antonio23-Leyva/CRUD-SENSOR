/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sensores.config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class Conexion {
    
    private static Connection con = null;
    private static final String url = "jdbc:mysql://localhost:3306/mysql?zeroDateTimeBehavior=convertToNull";
    private static final String usuario = "root";
    private static final String contraseña = "";

    public static Connection Conectar(){
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, usuario,contraseña);
        }catch (ClassNotFoundException | SQLException msj){
            System.out.println("Error al conectar la bd"+ msj.getMessage());
            
        }
   
        return con;
    }
    
}
