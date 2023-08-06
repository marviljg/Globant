/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entidad;

import java.time.Duration;

/**
 *
 * @author jpc
 */
public class Pelicula {
    
    private String titulo;
    private String director;
    private Duration duracion;

    public Pelicula() {
    }

    public Pelicula(String titulo, String director, Duration duracion) {
        this.titulo = titulo;
        this.director = director;
        this.duracion = duracion;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public Duration getDuracion() {
        return duracion;
    }

    public void setDuracion(Duration duracion) {
        this.duracion = duracion;
    }

    @Override
    public String toString() {
        long horas = duracion.toHours();
        long minutos = duracion.toMinutesPart();

        return "Pelicula{" +
               "titulo='" + titulo + '\'' +
               ", director='" + director + '\'' +
               ", duracion=" + horas + " horas y " + minutos + " minutos" +
               '}';
    }

}
