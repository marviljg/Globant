package ejer7_extra;

import java.util.Scanner;

import javax.sound.midi.Soundbank;

public class gE_e5 {
    
    public static void main(String[] args) {
         Scanner entrada = new Scanner(System.in);
         System.out.println("¿Tipo de socio?: ");
         char socio=entrada.next().charAt(0);

         System.out.println("¿Costo a pagar?: ");
         double costo=entrada.nextDouble();

         switch (socio){
            case 'a':
                System.out.println("Costo a pagar: "+(costo*0.5));
                break;
            case 'b':
                System.out.println("Costo a pagar: "+(costo*0.65));
                break;
            case 'c':
                System.out.println("Costo a pagar: "+costo);
                break;
            default:
                System.out.println("Algo salio mal");
                break;
         }
    }
}
