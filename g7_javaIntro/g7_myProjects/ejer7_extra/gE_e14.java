package ejer7_extra;

import java.util.Scanner;

public class gE_e14 {
    private static Scanner entrada = new Scanner(System.in);

    public static void main(String[] args) {
        System.out.println("¿Número de familias?: ");
        int familias = entrada.nextInt();
        entrada.nextLine();
        double[] promedios = new double[familias];
        CalcularPromedios(familias, promedios);
    }

    private static void CalcularPromedios(int familias, double[] promedios) {
        int hijos, edad;
        for (int i = 0; i < familias; i++) {
            System.out.println("¿Número de hijos de la familia " + (i + 1) + "?");
            hijos = entrada.nextInt();
            entrada.nextLine();
            promedios[i] = 0;
            for (int j = 0; j < hijos; j++) {
                System.out.println("¿Edad del hijo " + (j + 1) + ", de la familia " + (i + 1) + "?");
                edad = entrada.nextInt();
                entrada.nextLine();
                promedios[i] = promedios[i] + edad;
            }
            promedios[i] = promedios[i] / hijos; // Calcula el promedio de edades
        }
        for (int i = 0; i < promedios.length; i++) {
            System.out.println("Familia " + (i + 1) + ". Promedio de edades: " + promedios[i]);
        }
    }
}
