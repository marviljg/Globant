package ejer7_extra;

import java.util.Random;
import java.util.Scanner;

/* Escriba un programa que averigüe si dos vectores de N enteros son iguales (la
comparación deberá detenerse en cuanto se detecte alguna diferencia entre los
elementos). */
public class gE_e19 {
    private static Scanner entrada = new Scanner(System.in);
    private static Random random = new Random();
    public static void main(String[] args) {
        System.out.println("¿Tamaño de los vectores?: ");
        //int size = entrada.nextInt();
        int size = 3;
        int[] vect1 =  new int[size];
        int[] vect2 =  new int[size];
        boolean veredict=true;

        Llenar(vect1);
        Llenar(vect2);
        Imprimir(vect1);
        Imprimir(vect2);

        veredict=Comparar(vect1, vect2);
        System.out.println("¿Los vectores son iguales?: "+veredict);
    }

    private static void Llenar(int[] vector) {
        for (int i = 0; i < vector.length; i++) {
            vector[i]=random.nextInt(2); // Genera un número aleatorio entre 0 y 20
        }  
    }

    private static void Imprimir(int[] vector) {
        for (int i = 0; i < vector.length; i++) {
            System.out.print(vector[i]+" ");
        }
        System.out.println("");  
    }

    private static boolean Comparar(int[] v1, int[] v2) {
        boolean triger = true; 
        for (int i = 0; i < v2.length; i++) {
            if(v1[i]!=v2[i]){
                System.out.println("Se detecto un valor diferente en alguno de los vectores");
                triger=false;
                break;
            }
        }
        return triger;
    }
}
