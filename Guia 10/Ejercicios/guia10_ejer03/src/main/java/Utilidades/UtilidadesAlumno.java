/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Utilidades;

import Entidad.Alumno;
import java.util.Comparator;

/**
 *
 * @author jpc
 */
public class UtilidadesAlumno {
    
    public static Comparator<Alumno> ordenarPorNombreAsc = new Comparator<Alumno>(){
        @Override
        public  int compare(Alumno a1, Alumno a2){
            return a1.getNombre().compareTo(a2.getNombre());
        }
    };
}
