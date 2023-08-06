/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Servicio;

import Entidad.Pais;
import Utilidades.UtilidadesPaisServicio;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Scanner;
import java.util.Set;
import java.util.TreeSet;

/**
 *
 * @author jpc
 */
public class PaisServicio {
    
    private Scanner scanner;
    private Set<Pais> listaPaises;

    public PaisServicio(){
        this.scanner = new Scanner(System.in).useDelimiter("\n");
        this.listaPaises = new HashSet<>();
    }
    
    public Pais crearPais(){
        System.out.println("Nombre del pais");
        String nombrePaisAux = scanner.next();
        return new Pais(nombrePaisAux);
    }
    
    public void crearLista(){
        System.out.println("¿Agregar Pais a la Lista? y/n");
        String opcion = scanner.next();
        
        while (opcion.equals("y")) {            
            cargarPais(crearPais());
            System.out.println("¿Cargar otro País? y/n");
            opcion = scanner.next();
        }
    }

    public void cargarPais(Pais pais){
        listaPaises.add(pais);
    }
    
    public void buscarEliminar(){
        System.out.println("¿Pais a eliminar?: ");
        Iterator<Pais> iterator = listaPaises.iterator();
        boolean triger = false;
        String paisAux = scanner.next();
        while (iterator.hasNext()) {
            if(iterator.next().getPais().equals(paisAux)){
                iterator.remove();
                triger = true;
            }
        }
        if(triger=triger){
            System.out.println("El Pais: "+paisAux+", Se elimino de la lista.");
            ordenarAlfabeticamente();
        }else{
            System.out.println("No se encontro el pais en la lista");
            ordenarAlfabeticamente();
        }
    }
    
    public void imprimirLista(Set<Pais> lista) {
        Iterator<Pais> iterator = lista.iterator();
        while (iterator.hasNext()) {
            Pais pais = iterator.next();
            System.out.println(pais.getPais());
        }
        System.out.println("*****");
    }

    public void ordenarAlfabeticamente(){
        // Se cambio a TreeSet porque un HashSet no admite un orden Determinado.
        Set<Pais> listPaisesordenada = new TreeSet<>(UtilidadesPaisServicio.ordenarPorNombreAsc);
        listPaisesordenada.addAll(listaPaises);
        imprimirLista(listPaisesordenada);
    }
}