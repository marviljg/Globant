/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Servicios;

import ENUMS.Palo;
import Entidades.Baraja;
import Entidades.Carta;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Scanner;

/**
 *
 * @author jpc
 */
public class BarajaServicio {
    
    private Scanner scanner = new Scanner(System.in).useDelimiter("\n");
    // Da métodos para poder manipular las colecciones (como listas)
    private Collections c;
    // Mazo original (de caja) y mazo donde se pasaran las cartas (como una mano)
    //private Baraja mazoInicial = new Baraja();
    //private Baraja cartasEntregadas = new Baraja();
    private Baraja mazoInicial = new Baraja();
    private Baraja cartasEntregadas = new Baraja();
    
    public Baraja crearBaraja(){
        System.out.println("Abrimos un mazo nuevo de Baraja Española");
        //Se crean las listas que se pasaran a private ArrayList<Carta> cartas;
        ArrayList<Carta> cs = new ArrayList();
        ArrayList<Carta> out = new ArrayList();

        //Recibe un ArraList<Carta>
        //Le mandamos un ArrayList<Carta> vacio ¿POR QUÉ VACIO, AUN NO SE OCUPA?
        //R: Anteriormente se creo el objeto pero, recien aquí, le pasamos un ArrayList<Carta>
        cartasEntregadas.setCartas(out);
        
        // Obtenemos los valores del enum Palo
        for(Palo aux:Palo.values()){
            //Obtenemos el nombre del valor
            String p = aux.getNombre();
            //Vamos a crear las 10 cartas con un for
            for (int i = 0; i < 12; i++) {
                //No consideramos el 8 y 9: no existen en la española
                if(i+1 == 8 || i+1 == 9){
                    //No se hara nada. No existen estas cartas
                }else{
                    //Creamos una Carta(numero, valorEnum) ¿POR QUÉ NO aux.getNombre()?
                    //Creo no es necsario aux.getNombre() porque ya se hizo aux:Palo.values()
                    //Desde el principio podemos especificar sobre que parte (o total) queremos iterar
                    Carta c = new Carta(i+1, aux);
                    //La agregamos al mazo que sera el nuevo
                    cs.add(c);
                }   
            }  
        }
        //El mazo completamente nuevo instanciado adentro, se lo pasamos al del campo
        mazoInicial.setCartas(cs);
        System.out.println("Nueva Baraja Creada");
        return mazoInicial;
    }
    
    public void barajar(){
        //Solo es aplicar un método al nuevo mazo creado
        //Con el objeto Collections, usamos su método sobre una ArrayList
        c.shuffle(mazoInicial.getCartas());
    }
    
    public Carta siguienteCarta(){
        // Obtenemos la primer carta del mazo nuevo
        Carta c = mazoInicial.getCartas().get(0);
        System.out.println("¿Nombre de la siguiente carta? -> "+c.toString());
        return c;
    }
    
    public void cartasDisponibles(){
        //Solo obtenemos el ArrayList<Carta> que tiene y obtenemos su tamaño
        System.out.println("Cartas restantes en la baraja inicial: "+mazoInicial.getCartas().size());
    }
    
    public void darCartas(){
        System.out.println("¿Cuantas cartas quieres?: ");
        int cant = scanner.nextInt();
        
        //Comprobamos que exista la cantidad suficiente de cartas a pedir del mazo original
        if(cant <= mazoInicial.getCartas().size()){
            //Empezamos a entregar cartas
            for(int i = 0; i < cant; i++){
                //Mencionamos que carta vamos a entregar
                System.out.println("Se entrega "+mazoInicial.getCartas().get(i).toString()+" al jugador.");
            }
            //NOTA: Se pudo haber usado un iterator para evitar usar un doble for
            for(int i = 0; i < cant; i++){
                //Agregamos siempre la primer carta al ArrayList<Carta> getCartas()
                cartasEntregadas.getCartas().add(mazoInicial.getCartas().get(0));
                //Eliminamos esa carta, que siempre sera la primera.
                mazoInicial.getCartas().remove(0);
            } 
        }else{
            //Este es el caso de que no hay suficientes cartas
            System.out.println("Ya no hay suficientes cartas para entregar");
            //Solo decimos cuantas hay
            cartasDisponibles();
        }
    }
    
    public void cartasMonton(){
        if (cartasEntregadas.getCartas().size() == 0) {
            //Este es el caso de que se ha pedido ninguna carta
        }else{
            //Aquí mostramos todas las cartas que se pidieron
            System.out.println("Cartas retiradas: ");
            String parrafo = "";
            //ctrol se establecera a un max de 10. Es solo para 10 mensajes max por renglón
            int ctrol = 0;
            //Iteramos sobre el total de las cartas entregadas
            // Se retornara un ArrayList<>, aux sera una Carta a la vez
            for(Object aux : cartasEntregadas.getCartas()){
                //Lo siguiente es solo para crear un formato de parrafo de max 10 cartas
                parrafo = parrafo.concat(aux.toString());
                parrafo = parrafo.concat(". ");
                ctrol++;
                if (ctrol == 10) {
                    //Si ya se lleno un parrafo, lo imprimimos
                    System.out.println(parrafo);
                    //Vaciamos el parrafo
                    parrafo = "";
                    //Reiniciamos el contador de Cartas.toString() a concatenar
                    ctrol=0;
                }
            }
        }
    }
    
    //Este método es para decir cuantas cartas sobran aun en el mazo original
    //HAY ERROR. Esta mostrando las cartas solo en grupos de 10 (Hasta que se llenan)
    //y no separadas en grupos de 10
    public void mostrarBaraja(){
        if (mazoInicial.getCartas().size() == 0) {
            System.out.println("Ya no hay mas cartas en el mazo");
        }else{
            System.out.println("Cartas sobrantes en el mazo: ");
            //De nuevo, vamos a hacerlo en un formato
            System.out.println("Cartas sobrantes en el mazo: ");
            String parrafo = "";
            int ctrl = 0;
            for (Object aux : mazoInicial.getCartas()) {
                parrafo = parrafo.concat(aux.toString());
                parrafo = parrafo.concat(". ");
                ctrl++;
                if(ctrl == 10){
                    System.out.println(parrafo);
                    parrafo = "";
                    ctrl = 0;
                }
            }
        }
    }
    
    public void menu(){
        System.out.println("");
        System.out.println("----- MENU -----");
        System.out.println("Seleccione una opción: ");
        System.out.println("1. Barajar el mazo");
        System.out.println("2. Ver siguiente carta");
        System.out.println("3. Pedir cartas");
        System.out.println("4. Ver cartas ya usadas");
        System.out.println("5. Ver cartas aún en el mazo");
        System.out.println("6. Salir del programa");
        System.out.println("");
        String op = scanner.next();
        switch (op) {
            case "1":
                barajar();
                System.out.println("Mazo barajado");
                menu();
                break;
            case "2":
                siguienteCarta();
                menu();
                break;
            case "3":
                darCartas();
                menu();
                break;
            case "4":
                cartasMonton();
                menu();
                break;
            case "5":
                mostrarBaraja();
                menu();
                break;
            case "6":
                System.out.println("Programa terminado!");
                break;
            default:
                System.out.println("Opción no valida");
                menu();
        }
    }
}
