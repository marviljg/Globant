/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import java.util.List;

/**
 *
 * @author jpc
 */
public class Persona {
    private String nombre;
    private String apellido;
    private int edad;
    private String dni;
    private List<Perro> perros=null;

    public Persona() {
    }

    public Persona(String nombre, String apellido, int edad, String dni) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.edad = edad;
        this.dni = dni;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public List<Perro> getPerros() {
        return perros;
    }

    public void setPerros(List<Perro> perros) {
        this.perros = perros;
    }
    
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Información de la Persona: ");
        sb.append("nombre=").append(nombre);
        sb.append(", apellido=").append(apellido);
        sb.append(", edad=").append(edad);
        sb.append(", dni=").append(dni);
        sb.append(", Perros adoptados:\n");
        if (perros != null) {
            for (Perro perro : perros) {
                sb.append("  ").append(perro.toString()).append("\n");
            }
        } else {
            sb.append(nombre).append(" aún no tiene algún perro adoptado.\n");        
        }
        sb.append('.');
        return sb.toString();
    }
}
