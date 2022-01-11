/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.mensajes_app;
import java.sql.Connection;
import java.util.Scanner;


/**
 *
 * @author emili
 */
public class Inicio {
    public static void main(String[] args) {
        
        Scanner sc = new Scanner(System.in);
        int input = 0;

        do {
            System.out.println("--------------------------");
            System.out.println("Select an option: ");
            System.out.println("\t1. Create message");
            System.out.println("\t2. Read message");
            System.out.println("\t3. Update message");
            System.out.println("\t4. Delete message");
            System.out.println("\t0. Exit");

            input = sc.nextInt();
        
        
            switch (input){
                case 1:
                    MessageService.createMessage();
                    break;

                case 2:
                    MessageService.readMessage();
                    break;

                case 3:
                    MessageService.updateMessage();
                    break;

                case 4:
                    MessageService.deleteMessage();
                    break;
                case 0:
                    return;
                default:
                    break;
            }
        } while (input != 0);
    }
}
