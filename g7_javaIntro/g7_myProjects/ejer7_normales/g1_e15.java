public class g1_e15 {
    
    public static void main(String[] args) {
        int[] vector = new int[100];
        Llenar(vector);
        Imprimir(vector);
    }

    public static void Llenar(int[] vector){
        for (int i = 0; i < vector.length; i++) {
            vector[i]=i;
        }
    }

    public static void Imprimir(int[] vector){
        System.out.println(" ");
        for (int i = vector.length - 1; i>=0; i--) {
            System.out.print(vector[i]+" ");
        }
    }

}
