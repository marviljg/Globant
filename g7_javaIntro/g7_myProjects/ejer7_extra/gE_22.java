package ejer7_extra;

import java.util.Random;

import javax.sound.sampled.SourceDataLine;

/* Realizar un programa que rellene una matriz de tamaño NxM con valores aleatorios y
muestre la suma de sus elementos. */
public class gE_22 {
    private static Random random = new Random();
    
    public static void main(String[] args) {
        System.out.println("¿Tamaño de la matriz?: ");
        int size=9;
        int[][] matriz = new int[size][size];
        Llenar(matriz);
        Imprimir(matriz);
    }

    private static void Llenar(int[][] vector) {
        for (int i = 0; i < vector.length; i++) {
            for (int j = 0; j < vector.length; j++) {
                vector[i][j]=random.nextInt(9); // Genera un número aleatorio entre 0 y 20  
            }
        }
    }

    private static void Imprimir(int[][] vector) {
        for (int i = 0; i < vector.length; i++) {
            for (int j = 0; j < vector.length; j++) {
                System.out.print(vector[i][j]+" "); 
            }
            System.out.println("");
        }
    }
}
