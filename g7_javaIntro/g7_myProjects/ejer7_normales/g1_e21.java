import java.util.function.DoubleToIntFunction;

public class g1_e21 {
    public static void main(String[] args) {
        int[][] matrizGrande=new int[10][10];
        int[][] matrizChica=new int[3][3];
        int[][] matrizAux=new int[3][3];
        Llenar(matrizGrande);
        Imprimir(matrizGrande);
        Llenar(matrizChica);
        Imprimir(matrizChica);
        Comprobar(matrizGrande, matrizChica, matrizAux);
    }   

    public static void Llenar(int[][] array){
        for (int i = 0; i < array.length; i++) {
            for (int j = 0; j < array.length; j++) {
                array[i][j]=(int) (Math.random()*2); // Genera números aleatorios entre 0 y 9
            }
        }
    }

    public static void Imprimir(int[][] array){
        System.out.println("");
        for (int i = 0; i < array.length; i++) {
            for (int j = 0; j < array.length; j++) {
                System.out.print(array[i][j]+" ");
            }
            System.out.println("");
        }
    }

    public static void Comprobar(int[][] arrayGrande, int[][] arrayChica, int[][] arrayAux){
        System.out.println("");
        boolean encontrada=false;

        for (int i = 0; i < arrayGrande.length-2; i++) {
            for (int j = 0; j < arrayGrande.length-2; j++) {
                //Obtenemos sub matrices recortadas 3*3 de pos 0 a 7, en i y j.
                //Para ello, mandamos matrizGrande, pos i, pos j y matriz auxiliar
                //Matriz auxiliar es donde se guardara el recorte
                //Recortar(arrayGrande, i, j, arrayAux)
                Recortar(arrayGrande, i, j, arrayAux);

                //Luego, la matriz recortada se debera comprobar
                //Mandamos las 2 matrices chicas; chica y aux.
                //Sera una comporbación pos a pos,
                    //Si todas las comporbaciones son correctas; true.
                    //Si al menos una es falsa, false.
                //Se recibira el resultado de la comporbacion como un booleano.
                //encontrada=checkPositions(matrizChica, matrizAux)
                //Imprimir(arrayChica);
                //Imprimir(arrayAux);
                encontrada=checkPositions(arrayChica, arrayAux);
                
                //Si se recibio true:
                if (encontrada==true){
                    //Matriz encontrada en i, j
                    System.out.println("¡MATRIZ ENCONTRADA EN FILA "+i+", COLUMNA "+j+"!");
                    break;
                    //Encontrado=true
                    //break;
                }
                    
            }
            if (encontrada==true){
                break;
            } else if (encontrada==false && i==7){
                System.out.println("No se encontro la sub matriz buscada");
            }
            //if encontrado=true
                //break;
            //else if (encontrado=false Y i=7)
                //No se encontro la matriz buscada
        }
    }

    public static void Recortar(int[][] arrayGrande, int fila, int columna, int[][] arrayAux){
        int k=0, m=0;
        for (int i = fila; i < arrayAux.length; i++) {
            for (int j = columna; j < arrayAux.length; j++) {
                arrayAux[k][m]=arrayGrande[i][j];
                m++;
            }
            k++;
            m=0;
        }
    }

    public static boolean checkPositions(int[][] arrayChica, int [][]arrayAux){
        boolean resultado=true;
        int nChico, nAux;
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                nChico=arrayChica[i][j];
                nAux=arrayAux[i][j];
                if (nChico!=nAux){
                    resultado=false;
                }
            }
        }
        return resultado;
    }
}
