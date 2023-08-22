/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.g11_e02;

import Entidades.Juego;
import Entidades.Jugador;
import Entidades.Revolver;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

/**
 *
 * @author jpc
 */
public class G11_e02 {

    // Declaramos nuestro scanner global (privado) y unico para todas las 
    // instancias de este programa. Todos los hilos usarian el mismo.
    private static Scanner scanner = new Scanner(System.in).useDelimiter("\n");
    
    public static void main(String[] args) {
        
        // Creamos la lista de jugadores
        List<Jugador> jugadores = new ArrayList();
        
        System.out.println("Inicia el Juego. ¿Cuantos jugadores habra?: ");
        //int cantJugadores = scanner.nextInt();
        int cantJugadores = 5;
        //Tenemos el rango de que sean en [1,6]. Default es 6.
        if (cantJugadores<1 || cantJugadores>6) {
            cantJugadores = 6;
        }
        // Los creamos pasandoles su numero de nombre
        for(int i = 0; i < cantJugadores; i++){
            // Se crea con el constructor "public Jugador(Integer id)" para +-
            // darle un nombre y numero de jugador de inicio
            Jugador a = new Jugador(i+1);
            // Agregamos a la lista
            jugadores.add(a);
        }
        // Ya quedo la lista de jugadores
        
        // Creamos y cargamos el revolver
        System.out.println("Preparando el revolver para el juego...");
        Revolver r = new Revolver();
        // Llenamos la posicion de inicio y la donde esta el disparo
        r.llenarRevolver();
        
        // Cargamos el juego. 
        Juego newJuego = new Juego();
        // Mandamos lista de jugadores y el arma cargada
        //***A partir de aquí, ya se puede empezar a jugar*** Atras preparativos
        newJuego.llenarJuego((ArrayList<Jugador>) jugadores, r);
        
        boolean juegoContinua = true;
        int turno = 0;
        // Mientras Juego.ronda() no retorne False (que el jugador se mojo)
        while(juegoContinua){
            // Esta parte se encarga de mantener los turnos de los jugadores 
            // dentro de los límites del número total de jugadores, y asegura 
            // que el juego continúe de manera adecuada, en un ciclo.
            //ES PARA QUE SE USEN DE MANERA CORRECTA LOS INDICES DE LA LISTA
            //Y EN FORMA DE CICLO.
            /*if (turno == cantJugadores) {
                turno = 0;
            }*/
            /*NOTA: CREO EL ANTERIOR IF NO ES NECESARIO. Ya que los valores de
            jugadores y la posición de disparo que moja, es fija, no es
            necesario de que entre a un bucle que cicle para funcionar*/
            if (turno == cantJugadores) {
                turno = 0;
            }
            /*NOTA2: Si es necesario. Si la cantidad de jugadores es menor
            a la posición donde esta el disparo, ya no podria reiniciarse
            el ciclo de jugadores a disparar <- NOTA IMPORTANTE*/
            
            // Obtenemos la lista del juego ArrayList<Jugador> jugadores;
            // con public List<Jugador> getJugadores()
            // Obtenemos un jugador en una posición con get <- Método de las List
            // Obtenemos su nombre
            System.out.println(newJuego.getJugadores().get(turno).getName()+" procede a disparar...");
            // Se le pasa el número de ronda para que sobre el (dentro de los
            // los métodos propios de la clase) use ese número para sacarlo
            // de la lista, y aplicar el método del revolver "mojar()"
            // 
            juegoContinua = newJuego.ronda(turno);
            if (juegoContinua) {
                System.out.println(newJuego.getJugadores().get(turno).getName()+" ¡SE SALVO!");
            }else{
                System.out.println(newJuego.getJugadores().get(turno).getName()+" Ya se mojo... perdio :(");
                System.out.println("Juego Terminado...");
            }
            turno++;
        }
        System.out.println("");
    }
}
