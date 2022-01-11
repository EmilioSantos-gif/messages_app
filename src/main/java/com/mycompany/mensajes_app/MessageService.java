/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.mensajes_app;

import java.util.HashSet;
import java.util.Scanner;
import java.util.Set;

/**
 *
 * @author emili
 */
public class MessageService {
    
    public static void createMessage(){
        
        Scanner sc = new Scanner(System.in);

        System.out.println("Inserte message: ");
        String message = sc.nextLine();
        System.out.println("Inserte author: ");
        String author = sc.nextLine();
        
        Message msg = new Message();
        msg.setMessage(message);
        msg.setAuthor(author);
        
        MessageDAO.createMessageDB(msg);
    }
    public static void readMessage(){
        MessageDAO.readMessageDB();
    }
    public static void updateMessage(){
        
    }
    public static void deleteMessage(){
        
    }
    
}
