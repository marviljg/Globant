package Entidades;

/**
 *
 * @author jpc
 */
public class Revolver {
    
    private Integer posActual;
    private Integer posDisparo;

    public Revolver() {
    }

    public Revolver(Integer posActual, Integer posDisparo) {
        this.posActual = posActual;
        this.posDisparo = posDisparo;
    }

    public Integer getPosActual() {
        return posActual;
    }

    public void setPosActual(Integer posActual) {
        this.posActual = posActual;
    }

    public Integer getPosDisparo() {
        return posDisparo;
    }

    public void setPosDisparo(Integer posDisparo) {
        this.posDisparo = posDisparo;
    }
    
    //MÉTODOS
    // Posición aleatoria de inicio para el disparo que mojara y el punto 
    // de inicio
    public void llenarRevolver(){
        posActual = (int)(Math.random()*6+1);
        posDisparo = (int)(Math.random()*6+1);
    }
    
    // Solo compara y dice si es True. NADA DE 2 funciones a la vez
    // Solo es comparar si las dos posiciones tienen el mismo numero
    public boolean mojar(){
        boolean triger = false;
        if(posActual==posDisparo){
            triger=true;
        }
        /*
        if(posActual==6){
            posActual=1;
        }else{
            posActual++;
        }
        */
        return triger;
    }
    
    public void siguienteChorro(){
        if(posActual==6){
            posActual=1;
        }else{
            posActual++;
        }
    }
    
    @Override
    public String toString() {
        return "Revolver{" + "posActual=" + posActual + ", posDisparo=" + posDisparo + '}';
    }
    
}
