import java.util.Scanner;

public class g1_19 {

    public static boolean triger=true;
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        System.out.println("¿Tamaño de la matriz?: ");
        //int size=entrada.nextInt();
        int size=3;
        //int[][] matriz = new int[size][size];
        int[][] transpuesta = new int[size][size];
        //Llenar(matriz);
        
        int[][] matriz = {{0, -1, -1}, {1, 0, -4}, {1, 4, 0}};
        Imprimir(matriz);

        Transponer(matriz, transpuesta);
        Imprimir(transpuesta);
        Comprobar(matriz, transpuesta);
        System.out.println("¿La matriz es antisimetrica?: "+triger);
    }

    public static void Llenar(int[][] array){
        for (int i = 0; i < array.length; i++) {
            for (int j = 0; j < array.length; j++) {
                array[i][j]=(int) (Math.random()*10); // Genera números aleatorios entre 0 y 99
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
                transpuesta[j][i]=array[i][j]*-1;
            }
        }
    }

    public static void Comprobar(int[][] array, int[][] transpuesta){
        for (int i = 0; i < transpuesta.length; i++) {
            for (int j = 0; j < transpuesta.length; j++) {
                if(array[i][j]!=(transpuesta[i][j])){
                    triger=false;
                    break;
                }
            }
        }
    }
}
