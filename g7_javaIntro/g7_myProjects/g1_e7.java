import java.util.Scanner;

public class g1_e7 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        System.out.println("Ingresa una frase");
        String frase=entrada.nextLine();

        if (frase.equals("eureka")){
            System.out.println("Correcto!");
        }else{
            System.out.println("No es la frase :()");
        }
    }
}
