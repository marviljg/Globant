package ejer7_extra;

import java.util.Random;

public class gE_21 {
    private static Random random = new Random();
    public static void main(String[] args) {
        double[] calificaciones = new double[10];
        Random random = new Random();
        LlenarCalcular(calificaciones);  
    }

    private static void LlenarCalcular(double[] vector) {
        int aprob=0, reprob=0;
        for (int i = 0; i < vector.length; i++) {
            vector[i]=random.nextInt(11)*0.1+random.nextInt(11)*0.15+random.nextInt(11)*0.25+random.nextInt(11)*0.5;
            System.out.println("Calif "+(i+1)+" = "+vector[i]);
            if (vector[i]<7) {
                reprob++; 
            }else{
                aprob++;
            }
        }
        System.out.println("Alumnos aprobaddos: "+aprob);
        System.out.println("Alumnos reprobaddos: "+reprob);
    }
}
