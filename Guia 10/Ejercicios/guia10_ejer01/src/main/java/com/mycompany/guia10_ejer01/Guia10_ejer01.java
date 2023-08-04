package com.mycompany.guia10_ejer01;

import Servicio.RazaPerroServicio;
import java.util.Scanner;

public class Guia10_ejer01 {

    public static void main(String[] args) {
        
        Scanner scanner = new Scanner(System.in).useDelimiter("\n");
        RazaPerroServicio rpServicios = new RazaPerroServicio();
        System.out.println("Guia 10, ejercicio 01");  
        rpServicios.cargarRazas();
        rpServicios.imprimirRazas();
        rpServicios.buscarEliminar();

    }
}
