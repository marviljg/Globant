/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Servicios;

import Entidades.Perro;
import Entidades.Persona;
import java.util.Scanner;

/**
 *
 * @author jpc
 */
public class ServiciosPP {
    
    // Como el scanner no es declarado fuera de un main, sino en el contexto
    // global, podemos ponerlo sin el static y, aun asi, poderse usar
    // dentro de cada método que lo requiera.
    /*No es necesario compartirlo, cada instancia de ServiciosPP tendra su
    propio Scanner y, así, no habria problemas de que en Sistemas Distribuidos
    todas las instancias compitan por el mismos Scanner*/
    private Scanner scanner = new Scanner(System.in).useDelimiter("\n");
    
    public Persona crearPersona(){
        Persona pers = new Persona();
        System.out.println("¿Nombre de la persona?: ");
        pers.setNombre(scanner.next());
        System.out.println("¿Apellido?: ");
        pers.setApellido(scanner.next());
        return pers;
    }
    
    public Perro crearPerro(){
        Perro dog = new Perro();
        System.out.println("¿Nombre del perro?: ");
        dog.setNombre(scanner.next());
        System.out.println("¿Raza?: ");
        dog.setRaza(scanner.next());
        return dog;
    }
}
