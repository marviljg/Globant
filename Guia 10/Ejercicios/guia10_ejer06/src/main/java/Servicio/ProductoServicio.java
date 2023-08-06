/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Servicio;

import Entidad.Producto;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Scanner;
import java.util.TreeMap;

/**
 *
 * @author jpc
 */
public class ProductoServicio {
    private Scanner scanner;
    private HashMap<String, Producto> mapaProductos;
    
    public ProductoServicio(){
        this.scanner = new Scanner(System.in).useDelimiter("\n");
        this.mapaProductos = new HashMap<>();
    }
    
    public void logicaMenu(){
        System.out.println("¡Bienvenido al inventario!");
        int eleccion = 0;
        do {
            System.out.println("¿Qué desea hacer: ?");
            System.out.println("1 Agregar productos al inventario.");
            System.out.println("2 Modificar precio.");
            System.out.println("3 Eliminar un producto.");
            System.out.println("4 Imprimir inventario.");
            System.out.println("5 Salir.");
            System.out.println("Opción: ");
            eleccion = scanner.nextInt();
            switch (eleccion) {
                case 1:
                    cargarMapa();
                    break;
                case 2:
                    System.out.println("¿Cual es el producto a modificar?");
                    modificarPrecio(scanner.next());
                    break;
                case 3:
                    System.out.println("¿Cual es el producto a eliminar?");
                    eliminarProducto(scanner.next());
                    break;
                case 4:
                    imprimirInventario();
                    break;
                case 5:
                    System.out.println("¡Bye!");
                    break;
                default:
                    System.out.println("Opción incorrecta");
            }  
        } while (eleccion!=5);
    }
    
    public void crearProduto(){
        System.out.println("¿Nombre del producto?");
        String nombreAux = scanner.next();
        System.out.println("¿Precio del producto?");
        Integer precioAux = scanner.nextInt();
        
        mapaProductos.put(nombreAux, new Producto(nombreAux, precioAux));
    }
    
    public void cargarMapa(){
        System.out.println("¿Crear un producto?: y/n");
        String opcion = scanner.next();
        
        while (opcion.equals("y")) {            
            crearProduto();
            System.out.println("¿Crear otro producto? y/n");
            opcion = scanner.next();
        }
        System.out.println("Creación de productos terminada.");
    }
    
    public void modificarPrecio(String nombre){
        Producto productoModificar = mapaProductos.get(nombre);
        if(productoModificar!=null){
            System.out.println("Información actual: "+productoModificar);
            System.out.println("¿Nuevo precio?: ");
            productoModificar.setPrecio(scanner.nextInt());
        }else{
            System.out.println("El producto no existe en el sistema.");
        }
    }
    
    public void eliminarProducto(String nombre){
        Producto productoEliminado = mapaProductos.remove(nombre);
        // Devuelve el valor asociado a la clave eliminada, 
        // o null si la clave no estaba presente en el mapa.
        if (productoEliminado!=null) {
            System.out.println("Producto eliminado: "+productoEliminado);
        }else{
            System.out.println("El producto no existe en el inventario");
        }
    }
    
    public void imprimirInventario(){
        // Se pasa mapaProductos como argumento al constructor de
        // treeMapProductos y el TreeMap ordena automaticamente por clave
        Map<String, Producto> treeMapProductos = new TreeMap<>(mapaProductos);
        
        // Map.Entry<String, Producto> Especifica el tipo de iterador y valores
        // .entrySet() devuelve todas las entradas del treeMapProductos
        for (Map.Entry<String, Producto> entry : treeMapProductos.entrySet()) {
            System.out.println(entry.getKey() + ": " + entry.getValue());
        }
    }
}
