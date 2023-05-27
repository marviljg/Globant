import java.util.Scanner;

public class g1_e5 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        System.out.println("Valo0r a trabajar: ");
        int val=entrada.nextInt();

        System.out.println("Doble del numero: "+Math.pow(val, 2));
        System.out.println("Triple del numero: "+Math.pow(val, 3));
        System.out.println("Raiz del numero: "+Math.sqrt(val));
    }
}
