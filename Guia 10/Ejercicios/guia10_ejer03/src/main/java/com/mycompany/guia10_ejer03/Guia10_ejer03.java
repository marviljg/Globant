/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.guia10_ejer03;

import Servicio.ServicioAlumno;

/**
 *
 * @author jpc
 */
public class Guia10_ejer03 {

    public static void main(String[] args) {
        ServicioAlumno serviciosAl = new ServicioAlumno();
        
        System.out.println("Guia 10, Ejercicio 03");
        System.out.println("Crear y cargar los alumnos: ");
        serviciosAl.cargarAlumnos();
        serviciosAl.notaFinal();
    }
}
