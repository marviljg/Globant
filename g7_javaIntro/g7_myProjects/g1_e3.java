import java.util.Scanner;

public class g1_e3 {

    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        System.out.println("Frase a convertir: ");
        String frase=entrada.nextLine();
        System.out.println("Original: "+frase);
        System.out.println("Mayusculas: "+frase.toUpperCase());
        System.out.println("Minusculas: "+frase.toLowerCase());
    }
}
