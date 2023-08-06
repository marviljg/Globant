/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.guia10_ejer05;

import Servicio.PaisServicio;

/**
 *
 * @author jpc
 */
public class Guia10_ejer05 {

    public static void main(String[] args) {
        System.out.println("Guia 10, ejercicio 05");
        PaisServicio paisService = new PaisServicio();
        paisService.crearLista();
        paisService.ordenarAlfabeticamente();
        paisService.buscarEliminar();
    }
}
