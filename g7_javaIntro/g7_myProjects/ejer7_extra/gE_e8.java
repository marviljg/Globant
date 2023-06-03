package ejer7_extra;

import java.util.Scanner;

public class gE_e8 {

    public static Scanner entrada = new Scanner(System.in);
    public static void main(String[] args) {

        double [] toSave = new double[2];
        // toSave[0] - pares, toSave[0] - impares. 

        Contar(toSave);
        
    }

    public static void Contar(double[] vector) {
        double num;
        do{
            System.out.println("Ingresa un numero: ");
            num=entrada.nextDouble();
            if(num<=0){
                System.out.println("No se aceptan numeros menores o iguales a 0");
                num=-1;
                continue;
            }else{
                if (num%2==0){
                    vector[0]++;
                }else{
                    vector[1]++;
                }
            }
        }while(num%5!=0);
        System.out.println("Numeros pares: "+vector[0]);
        System.out.println("Numeros impares: "+vector[1]);
    }
}
