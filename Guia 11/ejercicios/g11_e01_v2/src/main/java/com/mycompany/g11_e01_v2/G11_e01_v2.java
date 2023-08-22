/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.g11_e01_v2;

import Entidades.Perro;
import Entidades.Persona;
import Servicios.ServiciosPP;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Scanner;

/**
 *
 * @author jpc
 */
public class G11_e01_v2 {
    
    //Ambas descripciones siguientes, aplican a campos o métodos:
    /*private: Limita la visibilidad solo a la clase donde se declara. 
    Solo lo otro dentro de la misma clase pueden acceder.*/
    /*static: Compartido por todas las instancias de la clase y no 
    depende de una instancia específica. Plt, NO SE NECESITA crear un objeto de 
    la clase para acceder. Se hace directamente por la clase*/
    private static Scanner scanner = new Scanner(System.in).useDelimiter("\n");
    private static ServiciosPP servpp = new ServiciosPP();
    //NOTA: Cuando es static, varios hilos (en sistemas distribuidos) usaran
    //la misma instancia existente.
    
    public static void main(String[] args) {
        
        System.out.println("Guia 11, Ejercicio 01, Versión 2");
        
        // Listas para agregar las personas y los perros
        List<Persona> personas = new ArrayList();
        List<Perro> perrosAdoptables = new ArrayList();
        
        // Crear 2 Persona
        System.out.println("Se crearan 2 personas.");
        for (int i = 0; i < 2; i++) {
            personas.add(servpp.crearPersona());
        }
        
        // Crear 2 Perro
        System.out.println("\nSe crearan 2 perros.");
        for (int i = 0; i < 2; i++) {
            perrosAdoptables.add(servpp.crearPerro());
        }
        System.out.println("-".repeat(11));
        
        //Parte del código para adoptar
        for (Iterator<Persona> iterator = personas.iterator(); iterator.hasNext();) {
            Persona nextPersona = iterator.next();
            System.out.println("Adoptante: "+nextPersona.getNombre());
            System.out.println("Candidatos: ");
            for (Iterator<Perro> iterator1 = perrosAdoptables.iterator(); iterator1.hasNext();) {
                Perro nextPerro = iterator1.next();
                System.out.println(nextPerro.toString());
            }
            String elexion = scanner.next();
            boolean triger = false;
            for (Iterator<Perro> iterator1 = perrosAdoptables.iterator(); iterator1.hasNext();) {
                Perro nextPerro = iterator1.next();
                if (elexion.equalsIgnoreCase(nextPerro.getNombre())) {
                    nextPersona.setPerro(nextPerro);
                    triger=true;
                }
            }
            if (!triger) {
                System.out.println("No se adoptoun perrito");
            }
        }
        
        //Mostrar info de la adopción
        System.out.println("\nInformación de las adopciones: ");
        for (Iterator<Persona> iterator = personas.iterator(); iterator.hasNext();) {
            Persona nextPersona = iterator.next();
            if (nextPersona.getPerro() == null) {
                System.out.println(nextPersona.toString()+" No tiene registros de adopción");
            }else{
                System.out.println(nextPersona.toString()+" Adopto: "+nextPersona.getPerro().toString());
            }
        }
    }
    
}
