/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Utilidades;

import Entidad.RazaPerro;
import java.util.Comparator;

/**
 *
 * @author jpc
 */
public class UtilidadesRazaPerroServicio {
    
    //Comparador para RazaPerro por Nombre
    //Este ordenara de forma ascendente
    public static Comparator<RazaPerro> ordenarPorNombreAsc = new Comparator<RazaPerro>(){
        @Override
        public int compare(RazaPerro o1, RazaPerro o2){
            return o1.getNombreRaza().compareTo(o2.getNombreRaza());
        } 
    }; 
    
    //Este ordenara de forma descendente
    public static Comparator<RazaPerro> ordenarPorNombreDesc = new Comparator<RazaPerro>(){
        @Override
        public int compare(RazaPerro o1, RazaPerro o2){
            return o2.getNombreRaza().compareTo(o1.getNombreRaza());
        } 
    }; 
    
    // Busqueda
    // Filtrado
    // Ordenamiento
}
