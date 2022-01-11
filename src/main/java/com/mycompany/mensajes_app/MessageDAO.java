/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.mensajes_app;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

/**
 *
 * @author emili
 */
public class MessageDAO {
    public static void createMessageDB(Message message){
        Conexion conexion = new Conexion();
        String query = "INSERT INTO mensaje (mensaje, autor_mensaje) VALUES (?,?)";
        try (Connection cnx = conexion.get_connection()){
            try {
                PreparedStatement pstmt = cnx.prepareStatement(query);
                pstmt.setString(1, message.getMessage());
                pstmt.setString(2, message.getAuthor());
                pstmt.executeUpdate();
                System.out.println("Message created successfully");
            } catch (SQLException e) {
                System.out.println(e);
            }
        } catch(Exception e) {
            System.out.println(e);
        }   
    }
    public static void readMessageDB(){
        Conexion conexion = new Conexion();
        
        PreparedStatement pstmt = null;
        ResultSet rs = null;
     
        String query = "SELECT * FROM mensaje";
        
        try (Connection cnx = conexion.get_connection()){
            try {
                pstmt = cnx.prepareStatement(query);
                rs = pstmt.executeQuery();
                
                while (rs.next()) {
                    System.out.println("\n\n-------------------------------------");
                    System.out.println("ID: "+rs.getInt("id_mensaje"));
                    System.out.println("Message: "+rs.getString("mensaje"));
                    System.out.println("Author: "+rs.getString("autor_mensaje"));
                    System.out.println("Date: "+rs.getDate("fecha_mensaje"));
                    System.out.println("-------------------------------------");
                }
            } catch (SQLException e) {
                System.out.println(e);
            }
        } catch(Exception e) {
            System.out.println(e);
        }
    }
    public static void updateMessageDB(){
        
    }
    public static void deleteMessageDB(){
        
    }
}
