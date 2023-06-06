package ejer7_extra;


import java.lang.reflect.Array;
import java.util.Random;
import java.util.Scanner;
/* Realizar un algoritmo que calcule la suma de todos los elementos de un vector de tamaño
N, con los valores ingresados por el usuario. */
public class gE_e18 {
    /**
     * @param args
     */
    private static Scanner entrada = new Scanner(System.in);
    private static Random random = new Random();
    public static void main(String[] args) {
        System.out.println("¿Tmaño del arreglo?");
        int size=entrada.nextInt();
        int[] vector = new int[5];
        Llenar(vector);
                
    }

    private static void Llenar(int[] vector) {
        for (int i = 0; i < vector.length; i++) {
            vector[i]=random.nextInt(21); // Genera un número aleatorio entre 0 y 20
        }
        Sumar(vector);  
    }

    private static void Sumar(int[] vector) {
        int sum=0;
        for (int i = 0; i < vector.length; i++) {
            sum=sum+vector[i];
        }
        System.out.println("Suma: "+sum);
    }
}
