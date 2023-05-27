package ejer7_normales;
import java.util.Scanner;

public class g1_e9 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        System.out.println("Ingresa la frase: ");
        String frase=entrada.nextLine();

        if (frase.startsWith("A")) {
            System.out.println("Si empieza con A");
        }else{
            System.out.println("La frase empieza con otra letra");
        }
    }
}
