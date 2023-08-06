/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Utilidades;

import Entidad.Pelicula;
import java.util.Comparator;

/**
 *
 * @author jpc
 */
public class UtilidadesPeliculaServicio {
    
    public static Comparator<Pelicula> ordenarPorTituloAsc = new Comparator<Pelicula>(){
        @Override
        public int compare(Pelicula o1, Pelicula o2) {
            return o1.getTitulo().compareTo(o2.getTitulo());
        }
    };
    
    public static Comparator<Pelicula> ordenarPorTituloDesc = new Comparator<Pelicula>(){
        @Override
        public int compare(Pelicula o1, Pelicula o2) {
            return o2.getTitulo().compareTo(o1.getTitulo());
        }
    };
    
    public static Comparator<Pelicula> ordenarPorDirectorAsc = new Comparator<Pelicula>(){
        @Override
        public int compare(Pelicula o1, Pelicula o2) {
            return o1.getDirector().compareTo(o2.getDirector());
        }
    };
    
    public static Comparator<Pelicula> ordenPorDuracionAscendente = new Comparator<Pelicula>(){
        @Override
        public int compare(Pelicula o1, Pelicula o2) {
            // Comparar las duraciones de o1 y o2
            return o1.getDuracion().compareTo(o2.getDuracion());
        }
    };
    
    // Este, realmente no es necesario: Podemos usar el nterior ordenPorDuracionAscendente
    // y aplicarle un reverseOrder <- Ir al método "mostrarDuracionDescendente" de
    // PeliculaServicio para ver como se hizo
    public static Comparator<Pelicula> ordenPorDuracionDescendente = new Comparator<Pelicula>(){
        @Override
        public int compare(Pelicula o1, Pelicula o2) {
            // Comparar las duraciones de o1 y o2
            return o2.getDuracion().compareTo(o1.getDuracion());
        }
    };
}
