import java.util.Scanner;
import java.util.Random;

public class g1_17 {
    
    public static Random random = new Random();
 
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        System.out.println("¿Tamaño del vector?: ");
        int size = entrada.nextInt();
        String[] vector = new String[size];

        Llenar(vector);
        Imprimir(vector);
        Contar(vector);

        System.out.println("Bye!");
    }

    public static void Llenar(String[] array){
        int aux=0;
        for (int i = 0; i < array.length; i++) {
            aux=random.nextInt(100000);
            array[i]=String.valueOf(aux);
        }
    }

    public static void Imprimir(String[] array){
        for (int i = 0; i < array.length; i++) {
            System.out.print(array[i]+" ");
        }
    }

    public static void Contar(String[] array){
        System.out.println(" ");
        int[] contador=new int[5];
        int tamano=0;

        for (int i = 0; i < contador.length; i++) {
            contador[i]=0;
        }
        for (int i = 0; i < array.length; i++) {
            tamano=array[i].length();
            switch(tamano){
                case 1:
                    contador[0]++;
                    break;
                case 2:
                    contador[1]++;
                    break;
                case 3:
                    contador[2]++;
                    break;
                case 4:
                    contador[3]++;
                    break;
                case 5:
                    contador[4]++;
                    break;
            }
        }
        for(int i=0; i<5; i++){
            System.out.println("Numeros encontrados de "+(i+1)+" digitos: "+contador[i]);
        }
    }
}
