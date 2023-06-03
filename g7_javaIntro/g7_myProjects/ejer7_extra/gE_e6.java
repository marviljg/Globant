package ejer7_extra;

import java.util.Scanner;

/* Leer la altura de N personas y determinar el promedio de estaturas que se encuentran por
debajo de 1.60 mts. y el promedio de estaturas en general. */
public class gE_e6 {

    public static Scanner entrada = new Scanner(System.in);
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        System.out.println("¿Cantidad de personas?: ");
        int num=entrada.nextInt();
        double[] personas = new double[num];
        double[] aux = new double[3];
        Calcular(personas, aux);

    }
    public static void Calcular(double[] personas, double[] aux){
        for (int i = 0; i < personas.length; i++) {
            System.out.println("Altura de persona "+i+" : ");
            personas[i]=entrada.nextDouble();
            if(personas[i]<1.6){
                aux[0]=aux[0]+personas[i];
                aux[1]++;
            }
            aux[2]=aux[2]+personas[i];
        }
        System.out.println("Cantidad de personas con estatura menor a 1.6: "+aux[1]);
        System.out.println("Promedio de estatura de este grupo: "+(aux[0]/aux[1]));
        System.out.println("Promedio general de la estatura: "+(aux[2]/personas.length));
    }
}
