/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entidades;

import ENUMS.Palo;

/**
 *
 * @author jpc
 */
public class Carta {
    
    private Integer numero;
    // Tomara uno de los valores fijos del enum Palo
    private Palo palo;

    public Carta() {
    }

    public Carta(Integer numero, Palo palo) {
        this.numero = numero;
        this.palo = palo;
    }

    public Integer getNumero() {
        return numero;
    }

    public Palo getPalo() {
        return palo;
    }

    public void setNumero(Integer numero) {
        this.numero = numero;
    }

    public void setPalo(Palo palo) {
        this.palo = palo;
    }

    @Override
    public String toString() {
        return "Carta{" + "numero=" + numero + ", palo=" + palo + '}';
    }
    
}
