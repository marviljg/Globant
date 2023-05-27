import java.util.Scanner;

public class g1_e8 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        System.out.println("Ingresa la frase de 8 caracteres");
        String frase=entrada.nextLine();

        if (frase.length()==8){
            while (frase.length()==8){
                System.out.println("La frase es: "+frase);
                System.out.println("Nueva frase: ");
                frase=entrada.nextLine();
            }
            System.out.println("La frase es incorrecta. Bye!");
        }else{
            System.out.println("La frase es incorrecta. Bye!");
        }
    }
}
