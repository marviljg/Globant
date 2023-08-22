/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.g11_e03;

import Servicios.BarajaServicio;

/**
 *
 * @author jpc
 */
public class G11_e03 {

    public static void main(String[] args) {
        System.out.println("Hello World!");
        BarajaServicio bs = new BarajaServicio();
        bs.crearBaraja();
        bs.menu();
    }
}
