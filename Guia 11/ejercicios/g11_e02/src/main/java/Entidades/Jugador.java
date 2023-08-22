/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entidades;

/**
 *
 * @author jpc
 */
public class Jugador {
    
    private Integer id;
    private String name;
    private boolean mojado;

    public Jugador() {
    }

    // Creamos al jugador recibiento su Integer del id y, dentro,
    // lo concatenamos a la palabra "Jugador". Ya que solo requiere eso su
    // nombre, se puede hacer más simple desde el constructor
    public Jugador(Integer id){
        this.id = id;
        String numJugador = id.toString();
        numJugador = "Player ".concat(numJugador);
        this.name = numJugador;
        // Por default, no estara mojado
        this.mojado = false;
    }

    public Integer getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public boolean isMojado() {
        return mojado;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setMojado(boolean mojado) {
        this.mojado = mojado;
    }
    
    //MÉTODOS
    public boolean disparo(Revolver r){
        boolean triger = false;
        //Comparamos posiciónes de disparo con el que moja
        if(r.mojar()){
            // Si true -> Se cambia el valor del campo propio de la clase
            // y se retorna otro valor a donde se necesite.
            mojado = true;
            triger = true;
        }
        //Carga el siguiente disparo
        r.siguienteChorro();
        // Retorna el True para terminar
        return triger;
    }
    
    @Override
    public String toString() {
        return "Jugador{" + "id=" + id + ", name=" + name + ", mojado=" + mojado + '}';
    }
    
}

