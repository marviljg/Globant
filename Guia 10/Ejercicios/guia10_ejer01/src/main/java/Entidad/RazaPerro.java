package Entidad;

public class RazaPerro {
    private String nombreRaza;
    private String descripcion;
    private Integer numRegistro;

    public RazaPerro() {
    }

    public RazaPerro(String nombreRaza, String descripcion, Integer numRegistro) {
        this.nombreRaza = nombreRaza;
        this.descripcion = descripcion;
        this.numRegistro = numRegistro;
    }

    public String getNombreRaza() {
        return nombreRaza;
    }

    public void setNombreRaza(String nombreRaza) {
        this.nombreRaza = nombreRaza;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Integer getNumRegistro() {
        return numRegistro;
    }

    public void setNumRegistro(Integer numRegistro) {
        this.numRegistro = numRegistro;
    }
    
    // Preparación del toString para poderse imprimir cada Raza
    @Override
    public String toString() {
        return "RazaPerro{" + "nombreRaza=" + nombreRaza + ", descripcion=" + descripcion + ", numRegistro=" + numRegistro + '}';
    }
}
