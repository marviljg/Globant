import java.util.Scanner;

public class g1_e10 {
    
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        int lection, a, b;
        float r;
        boolean triger=true;
        String confirmar="";
        System.out.println("Ingresa 2 numeros: ");
        a = entrada.nextInt();
        b = entrada.nextInt();

        do{
            System.out.println("¿Que operacion desea realizar?");
            lection = Menu();

            if (lection==5){
                System.out.println("¿Está seguro que desea salir del programa (S/N)?: ");
                confirmar=confirmar.toUpperCase();
                if (confirmar.equals("S")){
                    triger=false;
                }
            }

            r=Calculadora(a, b, lection);
            System.out.println("Resultado: "+r);
            System.out.println("\n");
        } while (triger==true);
        System.out.println("Bye!");
    }

    public static int Menu(){
        Scanner entrada = new Scanner(System.in);

        System.out.println("MENU");
        System.out.println("1. Sumar");
        System.out.println("2. Restar");
        System.out.println("3. Multiplicar");
        System.out.println("4. Dividr");
        System.out.println("5. Salir");
        System.out.println("Elija opción");

        int op=entrada.nextInt();
        return op;
    }

    public static float Calculadora(int x, int y, int op){
        float result=0f;

        switch (op) {
            case 1:
            result=x+y;
            break;
            case 2:
            result=x-y;
            break;
            case 3:
            result=x*y;
            break;
            case 4:
            result=x/y;
            break;
        }

        return result;
    }
}
