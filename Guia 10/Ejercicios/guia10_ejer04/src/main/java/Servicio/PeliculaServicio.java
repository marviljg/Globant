/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Servicio;

import Entidad.Pelicula;
import Utilidades.UtilidadesPeliculaServicio;
import java.time.Duration;
import java.util.Collections;
import java.util.Iterator;
import java.util.Scanner;
import java.util.Set;
import java.util.TreeSet;

/**
 *
 * @author jpc
 */
public class PeliculaServicio {
    
    private Scanner scanner;
    private Set<Pelicula> listaPeliculas;
            
    public PeliculaServicio(){
        this.scanner = new Scanner(System.in).useDelimiter("\n");
        // El TreeSet no permite elementos duplicados y los ordenara con el
        // UtilidadesPeliculaServicio.ordenarPorTituloAsc
        this.listaPeliculas = new TreeSet<>(UtilidadesPeliculaServicio.ordenarPorTituloAsc);
    }
    
    public Pelicula crearPelicula(){
        System.out.println("¿Nombre de la película?: ");
        String nameAux = scanner.next();
        
        System.out.println("¿Director de la película?: ");
        String direcAux = scanner.next();
        
        System.out.println("¿Duración de la película?: ");
        System.out.println("Horas: ");
        int horas = scanner.nextInt();
        System.out.println("Minutos?: ");
        int minutos = scanner.nextInt();
        Duration durationAux = Duration.ofHours(horas).plusMinutes(minutos);  
        
        return new Pelicula(nameAux, direcAux, durationAux);
    }
    
//    Después , esa Pelicula se guarda una lista de Peliculas y se le pregunta 
//    al usuario si quiere crear otra Pelicula o no
    public void cargarPeliculas(){
        System.out.println("¿Desea cargar una pelicula?: y/n");
        String op = scanner.next();
        
        while (op.equals("y")) {            
            Pelicula peliTemp = crearPelicula();
            agregarPelicula(peliTemp);
            System.out.println("¿Continuar cargando peliculas?: y/n");
            op = scanner.next();
        }
    }
    
    public void agregarPelicula(Pelicula peli){
        listaPeliculas.add(peli);
    }
    
    public void imprimirLista(Set lista){
        Iterator<Pelicula> iterator = lista.iterator();
        while (iterator.hasNext()) {
            Pelicula next = iterator.next();
            System.out.println(next);
        }
        System.out.println("");
    }
    
    public void mostrarTituloAscendente(){
        imprimirLista(listaPeliculas);
    }
    
    public void mostrarTituloDescendente(){
        // Se guardara en una lista temporal auxiliar que guarda con el 
        // comparator descendente.
        Set<Pelicula> listaDescendente = new TreeSet<>(UtilidadesPeliculaServicio.ordenarPorTituloDesc);
        listaDescendente.addAll(listaPeliculas);
        imprimirLista(listaDescendente);
    }
    
    public void mostrarDirectorAscendente(){
        Set<Pelicula> listDirectorAsc = new TreeSet<>(UtilidadesPeliculaServicio.ordenarPorDirectorAsc);
        listDirectorAsc.addAll(listaPeliculas);
        imprimirLista(listDirectorAsc);
    }
    
    public void mostrarDuracionAscendente(){
        Set<Pelicula> listaDuracionAscendente = new TreeSet<>(UtilidadesPeliculaServicio.ordenPorDuracionAscendente);
        listaDuracionAscendente.addAll(listaPeliculas);
        imprimirLista(listaDuracionAscendente);
    }
    
    public void mostrarDuracionDescendente(){
        Set<Pelicula> listaDuracionDescendente = new TreeSet<>(Collections.reverseOrder(UtilidadesPeliculaServicio.ordenPorDuracionAscendente));
        listaDuracionDescendente.addAll(listaPeliculas);
        imprimirLista(listaDuracionDescendente);
    }
    
}
