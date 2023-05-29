import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class g1_e12 {
    
    public static void main(String[] args) {
        // E.g. de cadena tamaño 5 -> "mucho". No empieza con 0.
        // Expresión regular para verificar el formato.
        String regex = "^X.{3}O$"; 
        Scanner entrada = new Scanner(System.in);
        String cadena="";
        Boolean triger=true;

        do{
            System.out.println("Ingresa la cadena a comprobar");
            cadena=entrada.nextLine();
            if (cadena.equals("&&&&&")){
                System.out.println("Fin del programa");
                triger=false;
            }else if(verificarFormato(cadena, regex)){
                System.out.println("La cadena "+cadena+" es correcta");
            }else{
                System.out.println("Cadena incorrecta. Prueba otra.");
            }
            System.out.println("");
        } while (triger);
    }

    private static boolean verificarFormato(String cadena, String regex) {
        Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher(cadena);
        return matcher.matches();
    }
}
