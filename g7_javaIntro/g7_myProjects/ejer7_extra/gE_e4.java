package ejer7_extra;

import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class gE_e4 {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        Map<Integer, String> diccionario = new HashMap<>();

        //Agregamos elementos al hashmap
        diccionario.put(1, "I");
        diccionario.put(2, "II");
        diccionario.put(3, "III");
        diccionario.put(4, "IV");
        diccionario.put(5, "V");
        diccionario.put(6, "VI");
        diccionario.put(7, "VII");
        diccionario.put(8, "VIII");
        diccionario.put(9, "IX");
        diccionario.put(10, "X");
        
        System.out.println("¿Numero a convertir? (de 1 a 10): ");
        int convertir = entrada.nextInt();
        if (convertir>10 || convertir<0){
            System.out.println("Valor ingresado INCORRECTO");
        }else{
            System.out.println("Valor convertido: "+diccionario.get(convertir));
        }
    }
}
