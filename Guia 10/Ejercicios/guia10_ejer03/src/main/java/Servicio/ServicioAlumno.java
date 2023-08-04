/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Servicio;

import Entidad.Alumno;
import Utilidades.UtilidadesAlumno;
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
public class ServicioAlumno {
    
    private Scanner scanner;
    private List<Alumno> listaAlumnos;
    
    public ServicioAlumno(){
        this.scanner = new Scanner(System.in).useDelimiter("\n");
        this.listaAlumnos = new ArrayList<>();
    }
    
    public Alumno crearAlumno(){
        Integer[] auxCalificaciones = new Integer[3];
        
        System.out.println("¿Nombre del alumno?: ");
        String nameAux = scanner.next();
        
        System.out.println("Calificacion 1: ");
        auxCalificaciones[0] = scanner.nextInt();
        
        System.out.println("Calificacion 2: ");
        auxCalificaciones[1] = scanner.nextInt();
        
        System.out.println("Calificacion 3: ");
        auxCalificaciones[2] = scanner.nextInt();
        
        return new Alumno(nameAux, auxCalificaciones);
    }
    
    public void cargarAlumnos(){
        System.out.println("¿Desea registrar un nuevo alumno?: y/n");
        String opcion = scanner.next();
        
        while (opcion.equals("y")) {            
            Alumno alumnoCreado = crearAlumno();
            listaAlumnos.add(alumnoCreado);
            
            System.out.println("¿Desea registrar un nuevo alumno?: y/n");
            opcion = scanner.next();
        }
        ordenarAscendente();
        imprimirAlumnos();
    }
    
    public void imprimirAlumnos(){
        Iterator<Alumno> iterator = listaAlumnos.iterator();
        while (iterator.hasNext()) {
            Alumno next = iterator.next();
            System.out.println(next);
        }
        System.out.println("");
    }
    
    public void notaFinal(){
        Iterator iterator = listaAlumnos.iterator();
        
        System.out.println("¿Nombre del alumno a saber su nota?: ");
        String alumnoBuscado = scanner.next();
        boolean triger = false;
        
        while (iterator.hasNext()) {
            // Se debe de convertir el objeto general del Iterator a Alumno
            Alumno nextAlumno = (Alumno) iterator.next();            
                if (nextAlumno.getNombre().equals(alumnoBuscado)) {
                    calcularNota(nextAlumno);
            }   
        }
    }
    
    public void calcularNota(Alumno alumno){
        Integer[] arrayCalificaciones = new Integer[3]; 
        arrayCalificaciones = alumno.getCalificaciones();
        int notaFinal = 0;
        for (Integer calificacion : arrayCalificaciones) {
            notaFinal = notaFinal + calificacion; 
        }
        System.out.println("Nota final de " + alumno.getNombre());
        System.out.println(notaFinal/3);
    }
    
    public void ordenarAscendente(){
        Collections.sort(listaAlumnos, UtilidadesAlumno.ordenarPorNombreAsc);
    }
}
