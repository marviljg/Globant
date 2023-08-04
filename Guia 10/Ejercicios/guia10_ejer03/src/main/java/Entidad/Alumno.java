/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entidad;

/**
 *
 * @author jpc
 */
public class Alumno {
    
    private String nombre;
    private Integer[] calificaciones = new Integer[3];

    public Alumno() {
    }

    public Alumno(String nombre) {
        this.nombre = nombre;
    }

    public Alumno(String nombre, Integer[] calificaciones) {
        this.nombre = nombre;
        this.calificaciones = calificaciones;
    }
    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Integer[] getCalificaciones() {
        return calificaciones;
    }

    public void setCalificaciones(Integer[] calificaciones) {
        this.calificaciones = calificaciones;
    }

    @Override
    public String toString() {
        return "Alumno{" + "nombre=" + nombre + ", calificaciones=" + calificaciones + '}';
    }
}
