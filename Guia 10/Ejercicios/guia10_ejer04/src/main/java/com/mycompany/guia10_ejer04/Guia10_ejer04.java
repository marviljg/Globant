/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.guia10_ejer04;

import Servicio.PeliculaServicio;
import java.util.Scanner;

/**
 *
 * @author jpc
 */
public class Guia10_ejer04 {

    public static void main(String[] args) {
       
        Scanner scanner = new Scanner(System.in).useDelimiter("\n");
        PeliculaServicio peliService = new PeliculaServicio();
        int op=0;
        System.out.println("Guia 10, ejercicio 04");
        peliService.cargarPeliculas();
        
        do {            
            System.out.println("Selecciona la opción: ");
            System.out.println("1 Imprimir por Titulo");
            System.out.println("2 Imprimir por Director");
            System.out.println("3 Imprimir por Duracion (ASCENDENTE)");
            System.out.println("4 Imprimir por Duracion (DESCENDENTE)");
            System.out.println("5 SALIR");
            op = scanner.nextInt();
            switch(op){
                case 1:
                    peliService.mostrarTituloAscendente();
                    break;
                case 2:
                    peliService.mostrarDirectorAscendente();
                    break;
                case 3:
                    peliService.mostrarDuracionAscendente();
                    break;
                case 4:
                    peliService.mostrarDuracionDescendente();
                    break;
                case 5:
                    System.out.println("Bye!");
                    break;
                default:
                    System.out.println("OPCIÓN INCORRECTA");
            }
        } while (op!=5);
       
    }
}
