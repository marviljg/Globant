package ejer7_extra;

import java.util.Scanner;

public class gE_e13 {
   
    private static Scanner entradda = new Scanner(System.in); 

   public static void main(String[] args) {
    System.out.println("¿Tamaño de la escalera?:");
    int tam=entradda.nextInt();
    Dibujar(tam);
   }

   private static void Dibujar(int tam) {
    for (int i = 1; i <= tam; i++) {
        for (int j = 1; j <= i; j++){
            System.out.print(j+" ");
        }
        System.out.println("");
    }
   }
}
