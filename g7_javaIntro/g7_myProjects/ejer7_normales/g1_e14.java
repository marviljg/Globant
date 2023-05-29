import java.nio.file.ProviderMismatchException;
import java.util.Scanner;

public class g1_e14 {

    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        System.out.println("¿Ingresa la cantidad de euros? €: ");
        double euros=entrada.nextDouble();

        entrada.nextLine(); // Consumir el salto de línea pendiente

        System.out.println("¿A que divisa se convertira? yenes/libras/dolar: ");
        String divisa=entrada.nextLine().toLowerCase();

        Convertir(euros, divisa);
        //¥, £, $
    }
    
    public static void Convertir(double cantidad, String divisa){
        switch(divisa){
            case "yenes":
                System.out.println("Su cantidad de € en YENES es: "+(cantidad*129.852)+"¥");
                break;
            case "libras":
                System.out.println("Su cantidad de € en LIBRAS es: "+(cantidad*0.86)+"£");
                break;
            case "dolar":
                System.out.println("Su cantidad de € en DOLAR es: "+(cantidad*1.28611)+"$");
                break;
            default:
                System.out.println("Ingreso una divisa incorrecta.");
        }
    }
}
