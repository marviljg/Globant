/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.libros;

import Entidades.Libro;
import Servicios.ServicesLibro;

/**
 *
 * @author jpc
 */
public class Libros {

    public static void main(String[] args) {
        System.out.println("Crear clase servicio para Libro");
        ServicesLibro servLibros = new ServicesLibro();
        
        System.out.println("Crear libro");
        Libro libUno = servLibros.crearLibro();
        
        System.out.println("Añadir libro");
        servLibros.agregarLibro(libUno);
        
        System.out.println("Mostrar info de los libros");
        servLibros.mostrarLibros();
        
    }
}
