package Servicios;

import Entidades.Libro;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

/**
 *
 * @author jpc
 */
public class ServicesLibro {
    
    private Scanner scanner;
    private List<Libro> libros;
    // Constructor de la clase. Inicializa los métodos.
    public ServicesLibro(){
        this.scanner = new Scanner(System.in).useDelimiter("\n");
        this.libros = new ArrayList();
    }
    
    public Libro crearLibro(){
        System.out.println("Titulo del libro: ");
        String titulo = scanner.next();
        
        System.out.println("Autor del libro: ");
        String autor = scanner.next();
        
        System.out.println("Editorial del libro: ");
        String edit = scanner.next();
        
        System.out.println("Paginas del libro: ");
        int pages = scanner.nextInt();
        
        return new Libro(titulo, autor, edit, pages);
    }
    
    public void agregarLibro(Libro lib){
        libros.add(lib);
    }
    
    public void mostrarLibros() {
        
        for(Libro ejemplar:libros){
            System.out.println(ejemplar);
        }
    }
}
