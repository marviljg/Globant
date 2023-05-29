import java.util.Scanner;

public class g1_e10 {

    public static Scanner entrada = new Scanner(System.in);
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        System.out.println("Ingresa el número límite ");
        int lim=entrada.nextInt();
        Sumar(lim);
    }

    public static void Sumar(int limite) {
        int n=0, i=1, sum=0;
        do{
            System.out.println("Ingresa el numero "+i+" a sumar: ");
            n=entrada.nextInt();
            sum=sum+n;
            i++;
        } while (sum<limite);
        System.out.println("¡Alcanzamos el numero "+limite+" con "+(i-1)+" intentos"); 
    }

}
