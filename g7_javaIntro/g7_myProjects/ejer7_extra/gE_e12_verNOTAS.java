package ejer7_extra;

// NOTA: No tratar de crear una unica salida en bloque de toda la información.
// Podemos estructurarla por partes para que sea mas fácil de trabajar;
// "Divide y Venceras" -> Partimos trabajo para i, j y k, al final juntamos
// ¡para que funcionen como un solo bloque! :) 
//EXPLICACIÓN AL FINAL DE ChatGPT
public class gE_e12_verNOTAS {
    public static void main(String[] args) {
        Contador();
    }

    private static void Contador() {
        for(int i = 0; i <= 9; i++ ){
            for(int j = 0; j <= 9; j++ ){
                for(int k = 0; k <= 9; k++ ){
                    if(i%3==0 && i!=0){
                        System.out.print("E -");
                    }else{
                        System.out.print(i+" -");
                    }
                    if(j%3==0 && j!=0){
                        System.out.print(" E -");
                    }else{
                        System.out.print(" "+j+" -");
                    }
                    if(k%3==0 && k!=0){
                        System.out.print(" E");
                    }else{
                        System.out.print(" "+k);
                    }
                    System.out.println("");
                }
            }
        }
    }
}
/* El razonamiento utilizado para abordar el problema fue tratar cada variable (i, j y k) 
por separado y aplicar una condición para determinar si era divisible entre 3 o no. 
El enfoque de tratar cada variable por separado y aplicar la condición individualmente
nos permite controlar la impresión de cada valor de forma independiente. 
Al hacerlo de esta manera, podemos sustituir solo aquellos valores que cumplen 
con la condición de ser divisibles por 3 por la letra "E", mientras que 
los demás valores se imprimen tal cual.

Si intentamos crear una única salida de impresión combinando i, j y k en un solo string, 
se volvería mucho más complicado determinar qué parte del string debería ser reemplazada 
por "E" y qué parte debería mantenerse como está. La solución de tratar cada variable 
por separado y luego combinarlas para formar la salida final simplifica 
el problema y hace que sea más fácil de entender y controlar. */

// Atomizar el problema para facilitar su manipulación.