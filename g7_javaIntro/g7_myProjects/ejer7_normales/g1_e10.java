import java.util.Scanner;

public class g1_e10 {
    
    public static Scanner entrada = new Scanner(System.in);
    public static boolean salir=false;
    public static String confirmacion="";
    public static void main(String[] args) {
        
        System.out.println("¡Bienvenido!");

        System.out.println("Ingresa el 1er número: ");
        double n1 = entrada.nextDouble();

        System.out.println("Ingresa el 2do número: ");
        double n2 = entrada.nextDouble();

        Calculadora(n1, n2);
        System.out.println("Bye!");
    }

    public static void Calculadora(double x, double y){
        int op=0;

        while(!salir){
            System.out.println("MENU");
            System.out.println("1. Sumar");
            System.out.println("2. Restar");
            System.out.println("3. Multiplicar");
            System.out.println("4 Dividor");
            System.out.println("5. Salir");

            System.out.println("Ingresa opcion: ");
            op=entrada.nextInt();

            switch(op){
                case 1:
                    System.out.println("Suma es: "+(x+y));
                    break;
                case 2:
                    System.out.println("Resta es: "+(x-y));
                    break;
                case 3:
                    System.out.println("Multiplicación es: "+(x*y));
                    break;
                case 4:
                    System.out.println("Dicisión es: "+(x/y));
                    break;
                case 5:
                    System.out.println("¿Esta seguro de que desea salir? S/N: ");
                    confirmacion=entrada.nextLine();
                    if (confirmacion.equalsIgnoreCase("s")) {
                        salir=true;
                    }
                    break;
                default:
                    System.out.println("Opcion invalida");
                    break;
            }
        }
    }
}
