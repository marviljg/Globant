/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Vista;

import Controlador.ControladorAdopcion;
import java.util.Scanner;

/**
 *
 * @author jpc
 */
public class Interfaz {
    
    private int opcion=0;
    private int aux=0;
    private Scanner scanner = new Scanner(System.in).useDelimiter("\n");
    
    ControladorAdopcion controlAdop = new ControladorAdopcion();
    
    public void menu(){
        do {     
            menuGrafico();
            opcion = scanner.nextInt();
            switch (opcion) {
            case 1 -> {
                System.out.println("¿Número de personas a registrar?: ");
                controlAdop.cargarListaPersonas(scanner.nextInt());
            }  
            case 2 -> {
                System.out.println("¿Número de perritos a registrar?: ");
                controlAdop.cargarListaPerros(scanner.nextInt());
            }
            case 3 -> {
                System.out.println("¿Nombre del adoptante?: ");
                String adoptante=scanner.next();
                controlAdop.adoptarPerro(adoptante);
            }
            case 4 ->
                controlAdop.mostrarInformacionAdoptantes();
            case 5 ->
                controlAdop.mostrarInformacionPerritos();
            case 6 ->
                System.out.println("Hasta pronto ¡GRACIAS!");
            default -> 
                System.out.println("Opción incorrecta");
            }
        } while (opcion!=6);    
    }
    
    private void menuGrafico(){
        System.out.println("MENU: ");
        System.out.println("1. Cargar personas.");
        System.out.println("2. Cargar mascotas.");
        System.out.println("3. Adoptar :)");
        System.out.println("4. Mostrar información de adoptantes : ");
        System.out.println("5. Mostrar información de los perritos: ");
        System.out.println("6. Salir");
        System.out.println("");
        System.out.println("¿Opción?: ");
    }
}
