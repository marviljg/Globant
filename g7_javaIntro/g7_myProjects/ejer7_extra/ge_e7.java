package ejer7_extra;

import java.util.Scanner;

/* Realice un programa que calcule y visualice el valor máximo, el valor mínimo y el promedio
de n números (n>0). El valor de n se solicitará al principio del programa y los números
serán introducidos por el usuario. Realice dos versiones del programa, una usando el
bucle “while” y otra con el bucle “do - while”. */
public class ge_e7 {

    public static Scanner entrada = new Scanner(System.in);
    public static void main(String[] args) {
        System.out.println("¿Cantiad de registros numericos?: ");
        int size=entrada.nextInt();
        double[] registros = new double[size];
        double[] aux=new double[3];
        //Min - aux[0], Max- aux[1], Avg - aux[2]
        DoWhileCalcular(registros, aux);
    }

    public  static void WhileCalcular(double[] array, double[] aux){
        double ingresado;
        int i=0;
        while(i<array.length){
            i++;
            System.out.println("Ingresa el valor "+i+" : ");
            ingresado=entrada.nextDouble();
            if (ingresado<=0) {
                System.out.println("El valor ingresado es incorrecto");
                i--;
            }else{
                array[i-1]=ingresado;
                if(i==1){
                    aux[0]=ingresado;
                    aux[1]=ingresado;
                    aux[2]=ingresado;
                }else{
                    if(ingresado<aux[0]){
                        aux[0]=ingresado;
                    }
                    if(ingresado>aux[1]){
                        aux[1]=ingresado;
                    }
                    aux[2]=aux[2]+ingresado;
                }
            }
        }
        System.out.println("Valor mínimo encontrado: "+aux[0]);
        System.out.println("Valor máximo encontrado: "+aux[1]);
        System.out.println("Valor promedio: "+(aux[2]/array.length));
    }

    public  static void DoWhileCalcular(double[] array, double[] aux){
        double ingresado;
        int i=0;
        do{
            i++;
            if(i>array.length){
                break;
            }
            System.out.println("Ingresa el valor "+i+" : ");
            ingresado=entrada.nextDouble();
            if (ingresado<=0) {
                System.out.println("El valor ingresado es incorrecto");
                i--;
            }else{
                array[i-1]=ingresado;
                if(i==1){
                    aux[0]=ingresado;
                    aux[1]=ingresado;
                    aux[2]=ingresado;
                }else{
                    if(ingresado<aux[0]){
                        aux[0]=ingresado;
                    }
                    if(ingresado>aux[1]){
                        aux[1]=ingresado;
                    }
                    aux[2]=aux[2]+ingresado;
                }
            }
        }while(i<array.length);
        System.out.println("Valor mínimo encontrado: "+aux[0]);
        System.out.println("Valor máximo encontrado: "+aux[1]);
        System.out.println("Valor promedio: "+(aux[2]/array.length));
    }
}
