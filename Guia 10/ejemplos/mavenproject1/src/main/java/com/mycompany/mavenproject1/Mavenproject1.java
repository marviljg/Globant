/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.mavenproject1;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;

/**
 *
 * @author jpc
 */
public class Mavenproject1 {

    public static void main(String[] args) {
        System.out.println("Pagina 8 de la guia 10");
        
        // Listas
        ArrayList<Integer> numerosA = new ArrayList();
        int x = 20;
        numerosA.add(x);
        
        // Conjuntos
        HashSet<Integer> numerosB = new HashSet();
        Integer y = 20;
        numerosB.add(y);
        
        // Mapas
        HashMap<Integer, String> alumnos = new HashMap();
        int dni = 3457;
        String nombreAlumno = "Pepe";
        alumnos.put(dni, nombreAlumno);
        
        // 5 Objetos a la lista
        numerosA.add(345);
        numerosA.add(78);
        numerosA.add(34);
        numerosA.add(-34);
        numerosA.add(90);
        
        // 5 Objetos el conjunto
        for (int i = 0; i < 5; i++) {
            numerosB.add((i+1)*17);
        }
        
        // 5 Objetos al Mapa
        for (int i = 0; i < 5; i++) {
            alumnos.put((i+2)*3457, "Me agregaron en el For");
        }
        
        // Eliminar 1 elemento de cada tipo de colección
        // Eliminar por elemento
        numerosA.remove(78);
        // Eliminar por indice
        numerosA.remove(y);
        // Eliminar de un conjunto (Solo por elemento)
        numerosB.remove(34);
        // Eliminar de un mapa (por llave)
        alumnos.remove(6914);
        
    }
}
