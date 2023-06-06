package ejer7_extra;

import java.util.Random;
import java.util.Scanner;

/* Crear una función rellene un vector con números aleatorios, pasándole un arreglo por
parámetro. Después haremos otra función o procedimiento que imprima el vector. */
public class gE_e20 {
    private static Scanner entrada = new Scanner(System.in);
    private static Random random = new Random();
    
    public static void main(String[] args) {
        System.out.println("¿Tamaño del vector?: ");
        int size = entrada.nextInt();
        int[] vect1 =  new int[size];

        Llenar(vect1);
        Imprimir(vect1);
    }

    private static void Llenar(int[] vector) {
        for (int i = 0; i < vector.length; i++) {
            vector[i]=random.nextInt(100); // Genera un número aleatorio entre 0 y 20
        }  
    }

    private static void Imprimir(int[] vector) {
        for (int i = 0; i < vector.length; i++) {
            System.out.print(vector[i]+" ");
        }
        System.out.println("");  
    }

}
