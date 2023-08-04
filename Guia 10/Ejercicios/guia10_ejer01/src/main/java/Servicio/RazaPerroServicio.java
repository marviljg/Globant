package Servicio;

import Entidad.RazaPerro;
import Utilidades.UtilidadesRazaPerroServicio;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Scanner;

/**
 *
 * @author jpc
 */
public class RazaPerroServicio {
    
    //Scanner y lista
    private Scanner scanner;
    private List<RazaPerro> listaRazas;
    
    //Constructor e inicializador
    public RazaPerroServicio(){
        this.scanner = new Scanner(System.in).useDelimiter("\n");
        this.listaRazas = new ArrayList();
    }
        
    // Cargar datos
    public RazaPerro crearRaza(){
        System.out.println("Nombre de la raza: ");
        String nombre = scanner.next();
        System.out.println("Descripción: ");
        //String descripcion = scanner.next();
        String descripcion = "DEF DESCRIP";
        System.out.println("Número de registro: ");
        //Integer numRegistro = scanner.nextInt();
        Integer numRegistro = 12345;
        // Agregamos el objeto
        return new RazaPerro(nombre, descripcion, numRegistro);
    }
    
    public void cargarRazas(){
        
        System.out.println("¿Se va a crear una nueva raza?: y/n");
        String opcion = scanner.next().toLowerCase();
        
        while (opcion.equals("y")) {            
            RazaPerro aux = crearRaza();
            listaRazas.add(aux);
            System.out.println("¿Se va a crear una nueva raza?: y/n");
            opcion = scanner.next().toLowerCase();
        }
    }
    
    // Imprimir, con un iterador
    public void imprimirRazas(){
        Iterator<RazaPerro> iterator = listaRazas.iterator(); // Crear un nuevo iterator
        while (iterator.hasNext()) {
            RazaPerro next = iterator.next();
            System.out.println(next);
        }
        System.out.println("");
    }
    
    // Buscar y eliminar
    public void buscarEliminar(){
        
        System.out.println("¿Raza a eliminar?: ");
        String razaEliminar = scanner.next();
        Iterator<RazaPerro> iterator = listaRazas.iterator();
        int triger = 1;
        while (iterator.hasNext() && triger==1) {
            if(iterator.next().getNombreRaza().equals(razaEliminar)){
                iterator.remove();
                triger = 9;
            }
        }
        if (triger==1) {
            System.out.println("La raza no fue encontrada");
        }else{
            System.out.println("Se encontro la raza y se elimino");
        }
        ordenarArrayListAsc();        
        imprimirRazas();
    }
    
    // Ordenar
    public void ordenarArrayListAsc(){
        Collections.sort(listaRazas, UtilidadesRazaPerroServicio.ordenarPorNombreAsc);
    }
    
    public void ordenarArrayListDes(){
        Collections.sort(listaRazas, UtilidadesRazaPerroServicio.ordenarPorNombreDesc);
    }
}
