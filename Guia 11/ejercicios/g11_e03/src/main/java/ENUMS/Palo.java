/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Enum.java to edit this template
 */
package ENUMS;

/*Los enums son una forma de definir un conjunto fijo de constantes 
con nombre que representan valores específicos. Representados en el listado*/

public enum Palo {
    // Declaración de constantes ENUM con sus valores
    // E.g. La constante ESPADA con valor "Espada".
    ESPADA("Espada"), BASTO("Basto"), ORO("Oro"), COPA("Copa");
    
    private String nombre;

    private Palo() {
    }

    private Palo(String nombre) {
        this.nombre = nombre;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
}
