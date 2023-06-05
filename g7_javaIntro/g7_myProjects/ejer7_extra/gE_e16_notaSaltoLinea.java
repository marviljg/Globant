package ejer7_extra;

import java.util.Scanner;

public class gE_e16_notaSaltoLinea {
    private static Scanner entrada = new Scanner(System.in);
    
    public static void main(String[] args) {
        Logica();
    }

    private static void Logica() {
        String nombre;
        int edad;
        String continuar;
        
        do {
            System.out.println("¿Nombre de la persona?: ");
            nombre = entrada.nextLine();
            
            System.out.println("¿Edad de la persona?: ");
            edad = entrada.nextInt();
            
            System.out.println("Nombre introducido: ");
            System.out.println(nombre);
            
            if (edad < 18) {
                System.out.println("Menor de edad: " + edad + " años.");
            } else {
                System.out.println("Mayor de edad: " + edad + " años.");
            }
            
            System.out.println("¿Continuar? yes/no: ");
            continuar = entrada.next();
            entrada.nextLine();
            //https://www.delftstack.com/es/howto/java/java-scanner-nextline-skips/
        } while (continuar.equals("yes")); 
    }
}
