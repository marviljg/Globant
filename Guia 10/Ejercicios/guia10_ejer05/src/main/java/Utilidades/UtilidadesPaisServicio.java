/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Utilidades;

import Entidad.Pais;
import java.util.Comparator;

/**
 *
 * @author jpc
 */
public class UtilidadesPaisServicio {
    
    // Ordenar por nombre de manera ascendente
    public static Comparator<Pais> ordenarPorNombreAsc = new Comparator<Pais>(){
        @Override
        public int compare(Pais o1, Pais o2){
            return o1.getPais().compareTo(o2.getPais());
        } 
    }; 
}
