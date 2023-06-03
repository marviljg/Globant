package ejer7_extra;

public class gE_e2 {

// Declarar cuatro variables de tipo entero A, B, C y D y asignarle un valor diferente a cada
// una. A continuación, realizar las instrucciones necesarias para que: B tome el valor de C, C
// tome el valor de A, A tome el valor de D y D tome el valor de B. Mostrar los valores
// iniciales y los valores finales de cada variable. Utilizar sólo una variable auxiliar.

    public static void main(String[] args) {
        int a=2, b=5, c=9, d=13, aux=0;  
        // B=C
        // C=A
        // A=D
        // D=B
        System.out.println("Valores de A: "+a);
        System.out.println("Valores de B: "+b);
        System.out.println("Valores de C: "+c);
        System.out.println("Valores de D: "+d);

        aux=b;
        b=c;
        c=a;
        a=d;
        d=aux;

        System.out.println("\nNUEVOS VALORES");
        System.out.println("Valores de A: "+a);
        System.out.println("Valores de B: "+b);
        System.out.println("Valores de C: "+c);
        System.out.println("Valores de D: "+d);
    }
}