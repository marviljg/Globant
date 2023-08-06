/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package mascotapp.servicios;

import java.util.ArrayList;
import java.util.Scanner;
import mascotapp.entidades.Mascota;

/**
 *
 * @author jpc
 */
public class ServicioMascota {
    
    private Scanner leer;
    
    // Cada vez que llamemos al servicio, nuetras ArrayList va a nacer
    // con el new ArrayList() de ServicioMascota().
    
    private ArrayList<Mascota> mascotas;
    //Funcionaria también con List, seria List la clase padre
    // private List<String> mascotas; y ArrayList la hija al crearse
    
    public ServicioMascota() {
        // Se inicializa el Scanner y la lista de mascotas.
        this.leer = new Scanner(System.in).useDelimiter("\n");
        this.mascotas = new ArrayList();
    }
            
    public Mascota crearMascota(){
        
        System.out.println("Introducir nombre: ");
        String nombre = leer.next();
        
        System.out.println("Introducir apodo: ");
        String apodo = leer.next();
        
        System.out.println("Introducir tipo: ");
        String tipo = leer.next();
        
        //return new Mascota(nombre, apodo, tipo);
        // No se guardara en un objeto, sino en la lista de Mascotas 
        
        //Se creara un String que se guardara en la lista
        //String mascota = nombre + " " + apodo + " " + tipo;
        //mascotas.add(mascota);
        
        //Video 3: ArrayList llenado con clases
        //Mascota m = new Mascota(nombre, apodo, tipo);
        //Agrega la new Mascota() a la lista
        //mascotas.add(m);
        //return m;
        
        //Video 4
        return new Mascota(nombre, apodo, tipo);
    }
    
    public void agregarMascota(Mascota m){
        mascotas.add(m);
    }
    
    // No recibe nada, porque dentro de la lista esta ya la lista de "mascotas"
    public void mostrarMascotas(){
        
        System.out.println("Mascotas actuales de la lista 'mascotas': ");
        //for (String aux : mascotas) {
        //    System.out.println(aux);
        //}
        
        
        //Video 3. Es un foreach para un tipo Mascota
        for (Mascota aux : mascotas) {
            System.out.println(aux.toString());
        }
        System.out.println("CANTIDAD: "+mascotas.size());
    }
    
    //Video 3
    /**
     * 
     * @param cantidad equivale a la cantidad de mascotas a crear y añadir
     * a la lista (ArrayList)
     */
    public void fabricaChiquitos(int cantidad){
        
        for (int i = 0; i < cantidad; i++) {
            //A la lista de mascotas, se agrega un nuevo objeto (new Mascota())
            //Es una automatización hardcore de llenado de objetos
            mascotas.add(new Mascota("Fer", "Chiquito", "Beagle"));
        }
        
    }
    
    //Fabricara mascotas pidiendo los datos por teclado.
    public void fabricaMascota(int cantidad){
        
        for (int i = 0; i < cantidad; i++) {
            Mascota mascotaCreada = crearMascota();
            //El método crearMascota() agregara la mascota a la lista y la 
            //regresara para poderla usar aquí.
            
            //Video 4 La mascota creada se pasa a "agregarMascota"
            agregarMascota(mascotaCreada);
            
            System.out.println(mascotaCreada.toString());
        }
    }
}
