package ejer7_extra;

import java.util.Scanner;

public class gE_e15 {
    private static Scanner entrada = new Scanner(System.in);
    public static void main(String[] args) {
        System.out.println("¿número 1?: ");
        double n1 = entrada.nextInt();
        System.out.println("¿número 2?: ");
        double n2 = entrada.nextInt();

        double result = Menu(n1, n2);
        System.out.println("Resultado: "+result);
    }

    private static double Menu(double n1, double n2) {
        double fin=0;
        System.out.println("¿Operacion a realizar? 1 Suma, 2 Resta, 3 Multiplicación, 4 División");
        int op = entrada.nextInt();
        switch(op){
            case 1:
            fin=Sumar(n1, n2);
            break;
            case 2:
            fin=Restar(n1, n2);
            break;
            case 3:
            fin=Multiplicar(n1, n2);
            break;
            case 4:
            fin=Dividir(n1, n2);
            break;
            default:
            System.out.println("Opción ingresada incorrecta");
            break;
        }
        return fin;
    }

    private static double Sumar(double n1, double n2){
        double result = n1+n2;
        return result;
    }

    private static double Restar(double n1, double n2){
        double result = n1-n2;
        return result;
    }

    private static double Multiplicar(double n1, double n2){
        double result = n1*n2;
        return result;
    }

    private static double Dividir(double n1, double n2){
        double result = n1/n2;
        return result;
    }

}
