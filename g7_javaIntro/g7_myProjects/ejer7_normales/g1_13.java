import java.util.Scanner;

public class g1_13 {

    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        System.out.println("¿Tamano de la matriz?: ");
        int size=entrada.nextInt();
        String[][] matriz = new String[size][size];

        Dibujar(matriz);
        Imprimir(matriz);
    }

    public static void Dibujar(String[][] matriz ){
        for (int i = 0; i < matriz.length; i++) {
            for (int j = 0; j < matriz.length; j++) {
                if (i==0 || i==matriz.length-1 || j==0 || j==matriz.length-1){
                    matriz[i][j]="*"+" ";
                }else{
                    matriz[i][j]="-"+" ";
                }
            }  
        }
    }

    public static void Imprimir(String[][] matriz ){
        for (int i = 0; i < matriz.length; i++) {
            for (int j = 0; j < matriz.length; j++) {
                System.out.print(matriz[i][j]);
            }
            System.out.println("");
        }
    }
}
