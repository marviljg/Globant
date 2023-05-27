package ejer7_extra;

import java.util.Scanner;

/**
 * gE_e1
 */
public class gE_e1 {

    public static void main(String[] args) {
        //Scanner entrada = new Scanner(System.in);
        System.out.println("Ingresa el tiempo en minutos");
        //int minutos=entrada.nextInt();
        int auxMin=0;
        int minutos=1600;
        int dias=minutos/1440;
        auxMin=1600-(1440*dias);
        int horas = auxMin/60; 
        System.out.println("En "+minutos+" hay "+dias+" dias y "+horas+" horas.");
    }
}