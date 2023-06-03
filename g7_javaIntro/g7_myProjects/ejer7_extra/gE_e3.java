package ejer7_extra;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Scanner;
import java.util.Set;

public class gE_e3 {
    
    public static void main(String[] args) {
        Set<String> vocales = new HashSet<>(Arrays.asList("a", "e", "i", "o", "u"));
        
        Scanner entrada = new Scanner(System.in);
        System.out.println("Ingresa elc aracter a comprobar: ");
        String caracter=entrada.nextLine().toLowerCase();

        if (vocales.contains(caracter)) {
            // El carácter es una de las vocales a, e, i, o, u
            System.out.println("Es una vocal");
        } else {
            // El carácter no es una vocal
            System.out.println("No es una vocal");
        }
    }
}
