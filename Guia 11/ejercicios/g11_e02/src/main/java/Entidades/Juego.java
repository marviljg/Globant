package Entidades;


import Entidades.Jugador;
import Entidades.Revolver;
import java.util.ArrayList;
import java.util.List;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author jpc
 */
public class Juego {
    
    private Revolver revolver;
    // Se declara de manera general la lista
    private ArrayList<Jugador> jugadores;

    public Juego() {
    }

    //Se instancia todo de manera normal, ya que es una carga completa
    public Juego(List<Jugador> jugadores, Revolver revolver) {
        this.jugadores = (ArrayList<Jugador>) jugadores;
        this.revolver = revolver;
    }

    public List<Jugador> getJugadores() {
        return jugadores;
    }

    public Revolver getRevolver() {
        return revolver;
    }

    public void setJugadores(List<Jugador> jugadores) {
        this.jugadores = (ArrayList<Jugador>) jugadores;
    }

    public void setRevolver(Revolver revolver) {
        this.revolver = revolver;
    }
    
    //MÉTODOS
    public void llenarJuego(ArrayList<Jugador>j, Revolver r){
        // Como son del mismo tipo, podemos asignarlos directamente.
        // DUDA: ¿Tiene caso crear el constructor?
        jugadores=j;
        revolver=r;
    }
    
    // Lo haremos que funcione SOLO en un Jugador a la vez
    // *Ronda hace referencia a uno a la vez, no a todos. :)
    public boolean ronda(int index){
        boolean continuar = true;
        // Aplicamos el método "disparo" sobre el correspondiente Jugador. 
        // Entonces, ese valor booleano de retorno afectara al Jugador.
        // (Que hece campo "mojado" lo habra afectado desde dentro del método)
        jugadores.get(index).disparo(revolver);
        /*No es necsario poner "==true" porqué por default comprueba el "True"*/
        if (jugadores.get(index).isMojado()) {
            continuar = false;
        }
        return continuar; 
    }
}
