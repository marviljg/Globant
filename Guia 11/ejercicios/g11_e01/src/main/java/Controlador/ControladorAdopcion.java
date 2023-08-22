/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;

import Modelo.Perro;
import Modelo.Persona;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Scanner;

/**
 *
 * @author jpc
 */
public class ControladorAdopcion {
    
    private Scanner scanner;
    private List<Persona> listaAdoptantes;
    private List<Perro> listaEnAdopcion;
    
    public ControladorAdopcion(){
        this.scanner = new Scanner(System.in).useDelimiter("\n");
        this.listaAdoptantes = new ArrayList<>();
        this.listaEnAdopcion = new ArrayList<>();
    }
        
    // Crear instancia de perro
    private void crearPersona(){
        //Persona(String nombre, String apellido, int edad, String dni, Perro perro)
        System.out.println("Nombre del adoptante: ");
        String nombre = scanner.next();
        System.out.println("Apellido del adoptante: ");
        //String apellido = scanner.next();
        String apellido = "nada";
        System.out.println("Edad: ");
        //int edad = scanner.nextInt();
        int edad = 25;
        System.out.println("DNI del adoptante: ");
        //String dni = scanner.next();
        String dni = "09345kgj";
        listaAdoptantes.add(new Persona(nombre, apellido, edad, dni));  
    }
    
    public void cargarListaPersonas(int n){
        for (int i = 0; i < n; i++) {
            crearPersona();
        }
    }
    
    // Crear instancia de persona
    private void crearPerro(){
        //Perro(String nombre, String raza, int edad, String tamano)
        System.out.println("Nombre de la mascota: ");
        String nombreM = scanner.next();
        System.out.println("Raza: ");
        //String razaM = scanner.next();
        String razaM = ".lka";
        System.out.println("Edad: ");
        //int edadM = scanner.nextInt();
        int edadM = 666;
        System.out.println("Tamano: ");
        //String tamanoM = scanner.next();
        String tamanoM = ".,-.,";
        listaEnAdopcion.add(new Perro(nombreM,razaM,edadM,tamanoM));
    }
    
    public void cargarListaPerros(int n){
        for (int i = 0; i < n; i++) {
            crearPerro();
        }
    }
    
    // Asignar perro a persona
    public void adoptarPerro(String adoptante) {
    Iterator<Perro> iterator = listaEnAdopcion.iterator();
    String adoptado = "";

        for (Persona persona : listaAdoptantes) {
            if (persona.getNombre().equals(adoptante)) {
                mostrarInformacionPerritos();
                System.out.println("¿Nombre del perrito para adoptar?: ");
                adoptado = scanner.next();

                while (iterator.hasNext()) {
                    Perro perroActual = iterator.next();
                    if (perroActual.getNombre().equals(adoptado)) {
                        perroActual.setAdoptado(true);

                        // Verifica si la lista de perros en la persona es null y, si es así, inicialízala
                        if (persona.getPerros() == null) {
                            persona.setPerros(new ArrayList<>());
                        }

                        persona.getPerros().add(perroActual);
                        iterator.remove(); // Usa el iterator para eliminar el perro de la lista
                        break; // Sale del bucle ya que encontró y adoptó al perro
                    }
                }
            } else {
                break;
            }
        }
    }
  

    // Obtener información
    public void mostrarInformacionAdoptantes(){
        // Como solo es mostrar información, podemos hacerlo con un foreach, sin
        // un Iterator
        System.out.println("Información de los adoptantes:");
        if (listaAdoptantes.isEmpty()) {
            System.out.println("Aun no hay información cargada");
        }else{
            for (Persona adoptante : listaAdoptantes) {
                System.out.println(adoptante.toString());
                System.out.println("-".repeat(15));
            }
        }
    }
    
    public void mostrarInformacionPerritos(){
        System.out.println("Información de los perritos:");
        if (listaEnAdopcion.isEmpty()) {
            System.out.println("Aun no hay información cargada");
        }else{
            for (Perro perrito : listaEnAdopcion) {
                if (perrito.isAdoptado()==true) {
                    System.out.println("Adoptado: "+perrito.toString());
            }else{
                System.out.println("Sin adoptar: "+perrito.toString());
            }
            }
        }    
    }
}
