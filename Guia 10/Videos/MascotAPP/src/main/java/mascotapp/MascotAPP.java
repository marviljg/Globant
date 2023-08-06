/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package mascotapp;

import mascotapp.servicios.ServicioMascota;

/**
 *
 * @author jpc
 */
public class MascotAPP {

    public static void main(String[] args) {
        
        // Comuncar el servicio y el main
        // OPCIONAL: Podria llevar una clase intermedia, como un menú.
     
        // Se crea el servicio mascota, para poder empezar a utilizarlo
        ServicioMascota servMasc = new ServicioMascota();
        // IMPORTANTE: TRATAR DE MANEJAR SIEMPRE UN ¡UNICO! SERVICIO DONDE SE
        // GESTIONEN TODOS LOS SERVICIOS PUNTUALES PARA LAS CLASES.
        
        // *Lo anterior preparo los atributos scanner, ArrayList y los preparo
        // con el constructor*
        
        // Se crearan 2 mascotas
        // Podrian ser iguales, la naturaleza de las List (ArrayList) lo permite
        //servMasc.crearMascota();
        //servMasc.crearMascota();
        
        //servMasc.mostrarMascotas();
        
        /*VIDEO 3*/
        servMasc.fabricaChiquitos(7);
        //servMasc.fabricaMascota(2);
        servMasc.mostrarMascotas();
    }
}
