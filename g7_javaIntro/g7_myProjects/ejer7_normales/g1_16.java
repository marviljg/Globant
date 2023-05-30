import java.util.Scanner;

public class g1_16 {
    
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);
        System.out.println("¿Tmaño del vector?: ");
        int size = entrada.nextInt();
        int vector[] = new int[size]; 
        
        Llenar(vector);
        Imprimir(vector);

        System.out.println("¿Numero a buscar?: ");
        int buscar = entrada.nextInt();
        Buscar(vector, buscar);
    }

    public static void Llenar(int[] array){
        for (int i = 0; i < array.length; i++) {
            array[i]=(int) (Math.random()*100); // Genera números aleatorios entre 0 y 99
        }
    }

    public static void Imprimir(int[] array){
        for (int i = 0; i < array.length; i++) {
            System.out.print(array[i]+" ");
        }
    }

    public static void Buscar(int[] array, int buscar){
        int reps=0;
        boolean encontrado=false;
        int pos=-1;

        for (int i = 0; i < array.length; i++) {
            if (array[i]==buscar) {
                encontrado=true;
                pos=i;
                reps++;
            }
        }
        if(encontrado){
            System.out.println("El numero "+buscar+" se encontro en "+pos+".");
            if (reps>1) {
                System.out.println("Y esta repetido "+reps+" veces");
            }
        }else{
            System.out.println("El numero no se encontro en el arreglo");
        }
    }

}
