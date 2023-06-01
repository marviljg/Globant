import java.util.Random;

public class g1_20 {
    
    public static Random random = new Random();
    public static void main(String[] args) {
        //int[][] matriz = new int [3][3];
        int[][] matriz = {{2, 7, 6}, {9, 5, 1}, {4, 3, 8}};

        int[][] transpuesta = new int [3][3];
        int caporal;
        boolean trigerFilas=true, trigerColumnas=true;
        //Llenar(matriz);
        Imprimir(matriz);

        Transponer(matriz, transpuesta);
        Imprimir(transpuesta);

        caporal=Caporal(matriz);
        System.out.println("Valor del caporal: "+caporal);
        trigerFilas=Sumar(matriz, caporal);
        trigerColumnas=Sumar(transpuesta, caporal);
        if(trigerFilas=trigerColumnas){
            System.out.println("¡La matriz es mágica! Olv!");
        }else{
            System.out.println("Esta matriz no es magica :(");
        }
        System.out.println("");
    }

    //Modificado para comprobar rango de valores [0,9]
    public static void Llenar(int[][] array){
        int aux=0;
        for (int i = 0; i < array.length; i++) {
            for (int j = 0; j < array.length; j++) {
                // Genera un número aleatorio entre 0 (inclusive) y 19 (exclusive)
                do{
                    aux=random.nextInt(20);
                    array[i][j] = aux;
                } while (aux>10);    
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

    public static int Caporal(int[][] array){
        int ret=0;
        for (int i = 0; i < array.length; i++) {
            ret=ret+array[i][i];
        }
        return ret;
    }

    public static boolean Sumar(int[][] array, int caporal){
        boolean retorno=true;
        int suma=0;
        for (int i = 0; i < array.length; i++) {
            for (int j = 0; j < array.length; j++) {
                suma=suma+array[i][j];
            }
            if (suma!=caporal){
                retorno=false;
                break;
            }else{
                suma=0;
            }
        }
        return retorno;
    }
}
