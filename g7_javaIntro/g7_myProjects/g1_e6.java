import java.util.Scanner;

public class g1_e6 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        System.out.println("Ingresa un numero: ");
        int x=entrada.nextInt();

        if (x%2==0) {
            System.out.println("El numero es par");
        }else{
            System.out.println("El numero es impar");
        }
    }
}
