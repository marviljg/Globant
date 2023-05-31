import java.util.Scanner;

public class g1_e18 {
    
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        System.out.println("¿Tamaño de la matriz?: ");
        int size=entrada.nextInt();
        int[][] matriz = new int[size][size];
        int[][] transpuesta = new int[size][size];
        Llenar(matriz);
        Imprimir(matriz);

        Transponer(matriz, transpuesta);
        Imprimir(transpuesta);
    }

    public static void Llenar(int[][] array){
        for (int i = 0; i < array.length; i++) {
            for (int j = 0; j < array.length; j++) {
                array[i][j]=(int) (Math.random()*100); // Genera números aleatorios entre 0 y 99
            }
        }
    }

    public static void Imprimir(int[][] array){
        for (int i = 0; i < array.length; i++) {
            for (int j = 0; j < array.length; j++) {
                System.out.print(array[i][j]+" ");
            }
            System.out.println("");
        }
    }

    public static void Transponer(int[][] array, int[][] transpuesta){
        System.out.println("");
        for (int i = 0; i < array.length; i++) {
            for (int j = 0; j < array.length; j++) {
                transpuesta[j][i]=array[i][j];
            }
        }
    }
}
